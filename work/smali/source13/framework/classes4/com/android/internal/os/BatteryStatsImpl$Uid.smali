.class public Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    }
.end annotation


# static fields
.field static final greylist-max-o NO_BATCHED_SCAN_STARTED:I = -0x1

.field private static blacklist sTempBinderCallStats:Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;


# instance fields
.field greylist-max-o mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field greylist-max-o mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private blacklist mBinderCallCount:J

.field private final blacklist mBinderCallStats:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field greylist-max-o mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field greylist-max-o mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field greylist-max-o mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field greylist-max-o mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field protected greylist-max-o mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field greylist-max-o mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field blacklist mChildUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

.field greylist-max-o mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field greylist-max-o mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field greylist-max-o mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field blacklist mCurStepSystemTimeMs:J

.field blacklist mCurStepUserTimeMs:J

.field greylist-max-o mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mFullWifiLockOut:Z

.field greylist-max-o mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mInForegroundService:Z

.field final greylist-max-o mJobCompletions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$DualTimer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field greylist-max-o mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field final greylist-max-o mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field greylist-max-o mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field blacklist mLastStepSystemTimeMs:J

.field blacklist mLastStepUserTimeMs:J

.field greylist-max-o mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field blacklist mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

.field private greylist-max-o mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private greylist-max-o mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field greylist-max-o mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field greylist-max-o mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field public final greylist-max-o mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field public final greylist-max-o mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final greylist-max-o mPackageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

.field blacklist mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

.field greylist-max-o mProcessState:I

.field greylist-max-o mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final greylist-max-o mProcessStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProportionalSystemServiceUsage:D

.field greylist-max-o mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field final greylist-max-o mSensorStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$DualTimer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private blacklist mSystemServiceTimeUs:J

.field final greylist-max-o mUid:I

.field private blacklist mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

.field greylist-max-o mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field greylist-max-o mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field greylist-max-o mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

.field greylist-max-o mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final greylist-max-o mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mWifiBatchedScanBinStarted:I

.field greylist-max-o mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private greylist-max-o mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field greylist-max-o mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field blacklist mWifiMulticastWakelockCount:I

.field private greylist-max-o mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field greylist-max-o mWifiRunning:Z

.field greylist-max-o mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mWifiScanStarted:Z

.field greylist-max-o mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBinderCallCount(Lcom/android/internal/os/BatteryStatsImpl$Uid;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallCount:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBinderCallStats(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMobileRadioApWakeupCount(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemServiceTimeUs(Lcom/android/internal/os/BatteryStatsImpl$Uid;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemServiceTimeUs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUidMeasuredEnergyStats(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/power/MeasuredEnergyStats;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiRadioApWakeupCount(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMobileRadioApWakeupCount(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProportionalSystemServiceUsage(Lcom/android/internal/os/BatteryStatsImpl$Uid;D)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSystemServiceTimeUs(Lcom/android/internal/os/BatteryStatsImpl$Uid;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemServiceTimeUs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUidMeasuredEnergyStats(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/power/MeasuredEnergyStats;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiRadioApWakeupCount(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddChargeToCustomBucketLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->addChargeToCustomBucketLocked(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddChargeToStandardBucketLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid;JIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->addChargeToStandardBucketLocked(JIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCpuActiveTimeCounter(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProcStateScreenOffTimeCounter(Lcom/android/internal/os/BatteryStatsImpl$Uid;J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateScreenOffTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProcStateTimeCounter(Lcom/android/internal/os/BatteryStatsImpl$Uid;J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmarkGnssTimeUs(Lcom/android/internal/os/BatteryStatsImpl$Uid;J)J
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->markGnssTimeUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmarkProcessForegroundTimeUs(Lcom/android/internal/os/BatteryStatsImpl$Uid;JZ)J
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->markProcessForegroundTimeUs(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11526
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .registers 11
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I

    .line 9289
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;IJJ)V

    .line 9290
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;IJJ)V
    .registers 20
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "uptimeMs"    # J

    .line 9292
    move-object v7, p0

    move v8, p2

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 9110
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 9129
    const/4 v9, 0x7

    iput v9, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 9132
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    .line 9211
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    .line 9239
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 9244
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 9249
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 9254
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 9264
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    .line 9293
    move-object v10, p1

    iput-object v10, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 9294
    iput v8, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    .line 9297
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>(Z)V

    iput-object v6, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9298
    const-wide/16 v1, 0x3e8

    mul-long v3, p5, v1

    mul-long v11, p3, v1

    invoke-virtual {v6, v3, v4, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 9300
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>(Z)V

    iput-object v3, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9301
    mul-long v4, p5, v1

    mul-long v0, p3, v1

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 9303
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9304
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9305
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 9307
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 9312
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 9318
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 9325
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x4

    move-object v0, v11

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v11, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9327
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v11, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9329
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x6

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v11, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9331
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9332
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v6, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9334
    new-array v0, v9, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9335
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 9336
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 9337
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9338
    sget-object v0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 9339
    return-void
.end method

.method private blacklist addChargeToCustomBucketLocked(JI)V
    .registers 10
    .param p1, "chargeDeltaUC"    # J
    .param p3, "powerBucket"    # I

    .line 9768
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateMeasuredEnergyStatsLocked()Lcom/android/internal/power/MeasuredEnergyStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 9769
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 9768
    move v1, p3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/MeasuredEnergyStats;->updateCustomBucket(IJJ)V

    .line 9770
    return-void
.end method

.method private blacklist addChargeToStandardBucketLocked(JIJ)V
    .registers 13
    .param p1, "chargeDeltaUC"    # J
    .param p3, "powerBucket"    # I
    .param p4, "timestampMs"    # J

    .line 9760
    nop

    .line 9761
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateMeasuredEnergyStatsLocked()Lcom/android/internal/power/MeasuredEnergyStats;

    move-result-object v6

    .line 9762
    .local v6, "measuredEnergyStats":Lcom/android/internal/power/MeasuredEnergyStats;
    move-object v0, v6

    move v1, p3

    move-wide v2, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/MeasuredEnergyStats;->updateStandardBucket(IJJ)V

    .line 9763
    return-void
.end method

.method private blacklist ensureMultiStateCounters(J)V
    .registers 19
    .param p1, "timestampMs"    # J

    .line 9506
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-eqz v1, :cond_7

    .line 9507
    return-void

    .line 9510
    :cond_7
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v4, 0x8

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 9512
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuFreqCount()I

    move-result v5

    const/4 v8, 0x0

    move-object v2, v1

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJLcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter-IA;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 9514
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v11, 0x8

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 9516
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuFreqCount()I

    move-result v12

    const/4 v15, 0x0

    move-object v9, v1

    move-wide/from16 v13, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJLcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter-IA;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 9518
    return-void
.end method

.method private blacklist getCpuActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 10

    .line 9379
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_24

    .line 9380
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 9381
    .local v7, "timestampMs":J
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJLcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter-IA;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 9383
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 9384
    invoke-static {v1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v1

    .line 9383
    invoke-static {v0, v1, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 9387
    .end local v7    # "timestampMs":J
    :cond_24
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    return-object v0
.end method

.method private blacklist getMobileRadioActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 10

    .line 10431
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_2b

    .line 10432
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 10433
    .local v7, "timestampMs":J
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJLcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter-IA;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 10435
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 10436
    invoke-static {v1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v1

    .line 10435
    invoke-static {v0, v1, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 10438
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mupdate(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;JJ)J

    .line 10440
    .end local v7    # "timestampMs":J
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    return-object v0
.end method

.method private blacklist getOrCreateMeasuredEnergyStatsIfSupportedLocked()Lcom/android/internal/power/MeasuredEnergyStats;
    .registers 3

    .line 9750
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMeasuredEnergyStatsConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    if-eqz v0, :cond_15

    .line 9751
    new-instance v0, Lcom/android/internal/power/MeasuredEnergyStats;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMeasuredEnergyStatsConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-direct {v0, v1}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    .line 9753
    :cond_15
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    return-object v0
.end method

.method private blacklist getOrCreateMeasuredEnergyStatsLocked()Lcom/android/internal/power/MeasuredEnergyStats;
    .registers 3

    .line 9742
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_f

    .line 9743
    new-instance v0, Lcom/android/internal/power/MeasuredEnergyStats;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMeasuredEnergyStatsConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-direct {v0, v1}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    .line 9745
    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    return-object v0
.end method

.method private blacklist getProcStateScreenOffTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 4
    .param p1, "timestampMs"    # J

    .line 9528
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->ensureMultiStateCounters(J)V

    .line 9529
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return-object v0
.end method

.method private blacklist getProcStateTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 4
    .param p1, "timestampMs"    # J

    .line 9522
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->ensureMultiStateCounters(J)V

    .line 9523
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return-object v0
.end method

.method private blacklist markGnssTimeUs(J)J
    .registers 7
    .param p1, "elapsedRealtimeMs"    # J

    .line 9921
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 9922
    .local v0, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    .line 9923
    return-wide v1

    .line 9926
    :cond_f
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9927
    .local v3, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v3, :cond_14

    .line 9928
    return-wide v1

    .line 9931
    :cond_14
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v1

    .line 9932
    .local v1, "gnssTimeUs":J
    invoke-virtual {v3, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 9933
    return-wide v1
.end method

.method private blacklist markProcessForegroundTimeUs(JZ)J
    .registers 13
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "doCalc"    # Z

    .line 9897
    const-wide/16 v0, 0x0

    .line 9898
    .local v0, "fgTimeUs":J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9899
    .local v2, "fgTimer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_13

    .line 9900
    if-eqz p3, :cond_10

    mul-long v5, p1, v3

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v0

    .line 9901
    :cond_10
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 9904
    :cond_13
    const-wide/16 v5, 0x0

    .line 9905
    .local v5, "topTimeUs":J
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 9906
    .local v7, "topTimer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v7, :cond_27

    .line 9907
    if-eqz p3, :cond_24

    mul-long/2addr v3, p1

    invoke-virtual {v7, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v3

    move-wide v5, v3

    .line 9908
    :cond_24
    invoke-virtual {v7, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 9912
    :cond_27
    cmp-long v3, v5, v0

    if-gez v3, :cond_2d

    move-wide v3, v5

    goto :goto_2e

    :cond_2d
    move-wide v3, v0

    :goto_2e
    return-wide v3
.end method

.method private blacklist maybeScheduleExternalStatsSync(II)V
    .registers 7
    .param p1, "oldProcessState"    # I
    .param p2, "newProcessState"    # I

    .line 12440
    if-ne p1, p2, :cond_3

    .line 12441
    return-void

    .line 12446
    :cond_3
    const/4 v0, 0x2

    if-nez p1, :cond_8

    if-eq p2, v0, :cond_c

    :cond_8
    if-ne p1, v0, :cond_d

    if-nez p2, :cond_d

    .line 12450
    :cond_c
    return-void

    .line 12453
    :cond_d
    const/16 v0, 0xe

    .line 12455
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smisActiveRadioPowerState(I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 12456
    and-int/lit8 v0, v0, -0x5

    .line 12459
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmExternalSync(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mConstants:Lcom/android/internal/os/BatteryStatsImpl$Constants;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleSyncDueToProcessStateChange(IJ)V

    .line 12461
    return-void
.end method

.method private greylist-max-o nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J
    .registers 10
    .param p1, "cpuTimesMs"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .param p2, "which"    # I

    .line 9488
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 9489
    return-object v0

    .line 9491
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->getCountsLocked(I)[J

    move-result-object v1

    .line 9492
    .local v1, "counts":[J
    if-nez v1, :cond_b

    .line 9493
    return-object v0

    .line 9496
    :cond_b
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_1c

    .line 9497
    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_19

    .line 9498
    return-object v1

    .line 9496
    :cond_19
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 9501
    .end local v2    # "i":I
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public greylist-max-o addIsolatedUid(I)V
    .registers 4
    .param p1, "isolatedUid"    # I

    .line 9466
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez v0, :cond_c

    .line 9467
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    goto :goto_13

    .line 9468
    :cond_c
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_13

    .line 9469
    return-void

    .line 9471
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;

    invoke-direct {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9472
    return-void
.end method

.method public greylist-max-o createAggregatedPartialWakelockTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .registers 9

    .line 10049
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_1a

    .line 10050
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x14

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10054
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public greylist-max-o createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 9937
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 9938
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0xf

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9941
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o createBluetoothScanResultBgCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .registers 3

    .line 10109
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_d

    .line 10110
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 10112
    :cond_d
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public greylist-max-o createBluetoothScanResultCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .registers 3

    .line 10102
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_f

    .line 10103
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 10105
    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public greylist-max-o createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .registers 9

    .line 10058
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_1d

    .line 10059
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x13

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10063
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public greylist-max-o createBluetoothUnoptimizedScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .registers 9

    .line 10067
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_1a

    .line 10068
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x15

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10072
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public greylist-max-o createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 10009
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 10010
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x11

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10013
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 9985
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 9986
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x10

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9989
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 10033
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_18

    .line 10034
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0xa

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10037
    :cond_18
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o createForegroundServiceTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 10041
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_18

    .line 10042
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x16

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10045
    :cond_18
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
    .registers 5

    .line 10145
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-nez v0, :cond_15

    .line 10146
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 10149
    :cond_15
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public greylist-max-o createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 8

    .line 9961
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 9962
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x8

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9965
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method blacklist detachFromTimeBase()V
    .registers 6

    .line 10801
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10802
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10803
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10804
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10805
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10806
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10807
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10808
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10810
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10811
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10812
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10814
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10816
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10817
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10818
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10819
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10821
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10823
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10825
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10827
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10828
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10830
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10831
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10832
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10833
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10835
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 10836
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 10837
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 10839
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 10841
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10842
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10844
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10846
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10847
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10849
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10851
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10853
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10855
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10857
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 10858
    .local v0, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "iw":I
    :goto_ca
    if-ltz v1, :cond_d8

    .line 10859
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 10860
    .local v2, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->detachFromTimeBase()V

    .line 10858
    .end local v2    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    add-int/lit8 v1, v1, -0x1

    goto :goto_ca

    .line 10862
    .end local v1    # "iw":I
    :cond_d8
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 10863
    .local v1, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "is":I
    :goto_e4
    if-ltz v2, :cond_f2

    .line 10864
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10865
    .local v3, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10863
    .end local v3    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    add-int/lit8 v2, v2, -0x1

    goto :goto_e4

    .line 10867
    .end local v2    # "is":I
    :cond_f2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 10868
    .local v2, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ij":I
    :goto_fe
    if-ltz v3, :cond_10c

    .line 10869
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10870
    .local v4, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10868
    .end local v4    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    add-int/lit8 v3, v3, -0x1

    goto :goto_fe

    .line 10873
    .end local v3    # "ij":I
    :cond_10c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10874
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10875
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10876
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10879
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ise":I
    :goto_128
    if-ltz v3, :cond_138

    .line 10880
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 10881
    .local v4, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->detachFromTimeBase()V

    .line 10879
    .end local v4    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    add-int/lit8 v3, v3, -0x1

    goto :goto_128

    .line 10884
    .end local v3    # "ise":I
    :cond_138
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ip":I
    :goto_140
    if-ltz v3, :cond_150

    .line 10885
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 10886
    .local v4, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 10884
    .end local v4    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    add-int/lit8 v3, v3, -0x1

    goto :goto_140

    .line 10888
    .end local v3    # "ip":I
    :cond_150
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 10890
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_15d
    if-ltz v3, :cond_16d

    .line 10891
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 10892
    .local v4, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 10890
    .end local v4    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    add-int/lit8 v3, v3, -0x1

    goto :goto_15d

    .line 10894
    .end local v3    # "i":I
    :cond_16d
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 10895
    return-void
.end method

.method blacklist ensureNetworkActivityLocked()V
    .registers 6

    .line 10596
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_5

    .line 10597
    return-void

    .line 10600
    :cond_5
    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 10601
    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 10602
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_2f

    .line 10603
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    .line 10604
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    .line 10602
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 10606
    .end local v1    # "i":I
    :cond_2f
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 10607
    return-void
.end method

.method public bridge synthetic blacklist getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAggregatedPartialWakelockTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAggregatedPartialWakelockTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 9534
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10263
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    .line 12726
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public blacklist getBinderCallCount()J
    .registers 3

    .line 9451
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallCount:J

    return-wide v0
.end method

.method public blacklist getBinderCallStats()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;",
            ">;"
        }
    .end annotation

    .line 9456
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    return-object v0
.end method

.method public bridge synthetic greylist-max-o getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBluetoothControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 2

    .line 9708
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public blacklist getBluetoothMeasuredBatteryConsumptionUC()J
    .registers 3

    .line 9823
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getBluetoothMeasuredBatteryConsumptionUC(I)J
    .registers 4
    .param p1, "processState"    # I

    .line 9830
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic blacklist getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10298
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_6

    .line 10299
    const/4 v0, 0x0

    return-object v0

    .line 10301
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanResultBgCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothScanResultBgCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .registers 2

    .line 10324
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public bridge synthetic blacklist getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanResultCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothScanResultCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .registers 2

    .line 10319
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public bridge synthetic blacklist getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10293
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothUnoptimizedScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10311
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_6

    .line 10312
    const/4 v0, 0x0

    return-object v0

    .line 10314
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothUnoptimizedScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothUnoptimizedScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10306
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10278
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method blacklist getChildUid(I)Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;
    .registers 3
    .param p1, "childUid"    # I

    .line 9484
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getCpuActiveTime()J
    .registers 6

    .line 9392
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_7

    .line 9393
    const-wide/16 v0, 0x0

    return-wide v0

    .line 9396
    :cond_7
    const-wide/16 v0, 0x0

    .line 9397
    .local v0, "activeTime":J
    const/4 v2, 0x0

    .local v2, "procState":I
    :goto_a
    const/4 v3, 0x5

    if-ge v2, v3, :cond_17

    .line 9398
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getCountForProcessState(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 9397
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 9400
    .end local v2    # "procState":I
    :cond_17
    return-wide v0
.end method

.method public blacklist getCpuActiveTime(I)J
    .registers 4
    .param p1, "procState"    # I

    .line 9405
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_f

    if-ltz p1, :cond_f

    const/4 v1, 0x5

    if-lt p1, v1, :cond_a

    goto :goto_f

    .line 9410
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getCountForProcessState(I)J

    move-result-wide v0

    return-wide v0

    .line 9407
    :cond_f
    :goto_f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-o getCpuClusterTimes()[J
    .registers 3

    .line 9415
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCpuFreqTimes([JI)Z
    .registers 5
    .param p1, "timesInFreqMs"    # [J
    .param p2, "procState"    # I

    .line 9421
    const/4 v0, 0x0

    if-ltz p2, :cond_1d

    const/4 v1, 0x7

    if-lt p2, v1, :cond_7

    goto :goto_1d

    .line 9424
    :cond_7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_c

    .line 9425
    return v0

    .line 9427
    :cond_c
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v1, :cond_16

    .line 9428
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 9429
    return v0

    .line 9431
    :cond_16
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCountsLocked([JI)Z

    move-result v0

    return v0

    .line 9422
    :cond_1d
    :goto_1d
    return v0
.end method

.method public greylist-max-o getCpuFreqTimes(I)[J
    .registers 3
    .param p1, "which"    # I

    .line 9370
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCpuMeasuredBatteryConsumptionUC()J
    .registers 3

    .line 9837
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCpuMeasuredBatteryConsumptionUC(I)J
    .registers 4
    .param p1, "processState"    # I

    .line 9844
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCustomConsumerMeasuredBatteryConsumptionUC()[J
    .registers 2

    .line 9810
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_8

    .line 9811
    const/4 v0, 0x0

    return-object v0

    .line 9813
    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_17

    .line 9815
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-virtual {v0}, Lcom/android/internal/power/MeasuredEnergyStats;->getNumberCustomPowerBuckets()I

    move-result v0

    new-array v0, v0, [J

    return-object v0

    .line 9817
    :cond_17
    invoke-virtual {v0}, Lcom/android/internal/power/MeasuredEnergyStats;->getAccumulatedCustomBucketCharges()[J

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .registers 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 10552
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 10553
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    .line 10554
    .local v0, "deferredEventCount":I
    if-nez v0, :cond_d

    .line 10555
    return-void

    .line 10557
    :cond_d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    .line 10558
    .local v1, "deferredCount":I
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 10559
    .local v2, "totalLatency":J
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10560
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10561
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10562
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v5, v5

    if-ge v4, v5, :cond_4f

    .line 10563
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v4

    if-nez v5, :cond_3c

    .line 10564
    const-string v5, ",0"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 10566
    :cond_3c
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10567
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v4

    invoke-virtual {v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10562
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 10570
    .end local v4    # "i":I
    :cond_4f
    return-void
.end method

.method public greylist-max-o getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .registers 10
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 10574
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 10575
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    .line 10576
    .local v0, "deferredEventCount":I
    if-nez v0, :cond_d

    .line 10577
    return-void

    .line 10579
    :cond_d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    .line 10580
    .local v1, "deferredCount":I
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 10581
    .local v2, "totalLatency":J
    const-string/jumbo v4, "times="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10582
    const-string v5, "count="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10583
    const-string/jumbo v5, "totalLatencyMs="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10584
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v5, v5

    if-ge v4, v5, :cond_71

    .line 10585
    const-string v5, "<"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    aget-wide v5, v5, v4

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10586
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v4

    if-nez v5, :cond_62

    .line 10587
    const-string v5, "0"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 10589
    :cond_62
    invoke-virtual {v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10591
    :goto_69
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10584
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 10593
    .end local v4    # "i":I
    :cond_71
    return-void
.end method

.method public bridge synthetic blacklist getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10273
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10283
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundServiceTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getForegroundServiceTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10288
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o getFullWifiLockTime(JI)J
    .registers 6
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 10173
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_7

    .line 10174
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10176
    :cond_7
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getGnssMeasuredBatteryConsumptionUC()J
    .registers 3

    .line 9851
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getJobCompletionStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 9560
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public greylist-max-o getJobStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 9555
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMeasuredBatteryConsumptionUC(I)J
    .registers 4
    .param p1, "bucket"    # I

    .line 9780
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    .line 9781
    invoke-virtual {v0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->isStandardBucketSupported(I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1d

    .line 9784
    :cond_11
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_18

    .line 9785
    const-wide/16 v0, 0x0

    return-wide v0

    .line 9787
    :cond_18
    invoke-virtual {v0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->getAccumulatedStandardBucketCharge(I)J

    move-result-wide v0

    return-wide v0

    .line 9782
    :cond_1d
    :goto_1d
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getMeasuredBatteryConsumptionUC(II)J
    .registers 5
    .param p1, "bucket"    # I
    .param p2, "processState"    # I

    .line 9797
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    .line 9798
    invoke-virtual {v0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->isStandardBucketSupported(I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1d

    .line 9801
    :cond_11
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_18

    .line 9802
    const-wide/16 v0, 0x0

    return-wide v0

    .line 9804
    :cond_18
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/power/MeasuredEnergyStats;->getAccumulatedStandardBucketCharge(II)J

    move-result-wide v0

    return-wide v0

    .line 9799
    :cond_1d
    :goto_1d
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public greylist-max-o getMobileRadioActiveCount(I)I
    .registers 4
    .param p1, "which"    # I

    .line 10488
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_a

    .line 10489
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 10488
    :goto_b
    return v0
.end method

.method public greylist-max-o getMobileRadioActiveTime(I)J
    .registers 4
    .param p1, "which"    # I

    .line 10470
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeInProcessState(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMobileRadioActiveTimeInProcessState(I)J
    .registers 4
    .param p1, "processState"    # I

    .line 10476
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_7

    .line 10477
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10479
    :cond_7
    if-nez p1, :cond_e

    .line 10480
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getTotalCountLocked()J

    move-result-wide v0

    return-wide v0

    .line 10482
    :cond_e
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getCountForProcessState(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getMobileRadioApWakeupCount(I)J
    .registers 4
    .param p1, "which"    # I

    .line 10529
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_9

    .line 10530
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 10532
    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getMobileRadioMeasuredBatteryConsumptionUC()J
    .registers 3

    .line 9857
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMobileRadioMeasuredBatteryConsumptionUC(I)J
    .registers 4
    .param p1, "processState"    # I

    .line 9863
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 2

    .line 9713
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMulticastWakelockStats()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getMulticastWakelockStats()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 9545
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o getNetworkActivityBytes(II)J
    .registers 5
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 10450
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_10

    if-ltz p1, :cond_10

    array-length v1, v0

    if-ge p1, v1, :cond_10

    .line 10452
    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 10454
    :cond_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-o getNetworkActivityPackets(II)J
    .registers 5
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 10460
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_10

    if-ltz p1, :cond_10

    array-length v1, v0

    if-ge p1, v1, :cond_10

    .line 10462
    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 10464
    :cond_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-o getOrCreateBluetoothControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 5

    .line 9725
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_14

    .line 9726
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 9729
    :cond_14
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public greylist-max-o getOrCreateModemControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 5

    .line 9733
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_17

    .line 9734
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9735
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 9737
    :cond_17
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public greylist-max-o getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 5

    .line 9717
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_14

    .line 9718
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 9721
    :cond_14
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public greylist-max-o getPackageStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .line 9577
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public greylist-max-o getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 12498
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 12499
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_17

    .line 12500
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    move-object v0, v1

    .line 12501
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12504
    :cond_17
    return-object v0
.end method

.method public greylist-max-o getPidStats()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .line 12481
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object v0
.end method

.method public greylist-max-o getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .registers 4
    .param p1, "pid"    # I

    .line 12485
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 12486
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_15

    .line 12487
    new-instance v1, Landroid/os/BatteryStats$Uid$Pid;

    invoke-direct {v1, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    move-object v0, v1

    .line 12488
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12490
    :cond_15
    return-object v0
.end method

.method public greylist-max-o getProcessStateTime(IJI)J
    .registers 8
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 10342
    const-wide/16 v0, 0x0

    if-ltz p1, :cond_14

    const/4 v2, 0x7

    if-lt p1, v2, :cond_8

    goto :goto_14

    .line 10343
    :cond_8
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-nez v2, :cond_f

    .line 10344
    return-wide v0

    .line 10346
    :cond_f
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    .line 10342
    :cond_14
    :goto_14
    return-wide v0
.end method

.method public bridge synthetic blacklist getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 3
    .param p1, "state"    # I

    .line 10351
    if-ltz p1, :cond_b

    const/4 v0, 0x7

    if-lt p1, v0, :cond_6

    goto :goto_b

    .line 10352
    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    return-object v0

    .line 10351
    :cond_b
    :goto_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getProcessStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .line 9572
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public greylist-max-o getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 12344
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 12345
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_17

    .line 12346
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    move-object v0, v1

    .line 12347
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12350
    :cond_17
    return-object v0
.end method

.method public blacklist getProportionalSystemServiceUsage()D
    .registers 3

    .line 9461
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    return-wide v0
.end method

.method public blacklist getScreenOffCpuFreqTimes([JI)Z
    .registers 5
    .param p1, "timesInFreqMs"    # [J
    .param p2, "procState"    # I

    .line 9437
    const/4 v0, 0x0

    if-ltz p2, :cond_1d

    const/4 v1, 0x7

    if-lt p2, v1, :cond_7

    goto :goto_1d

    .line 9440
    :cond_7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_c

    .line 9441
    return v0

    .line 9443
    :cond_c
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v1, :cond_16

    .line 9444
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 9445
    return v0

    .line 9447
    :cond_16
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCountsLocked([JI)Z

    move-result v0

    return v0

    .line 9438
    :cond_1d
    :goto_1d
    return v0
.end method

.method public greylist-max-o getScreenOffCpuFreqTimes(I)[J
    .registers 3
    .param p1, "which"    # I

    .line 9375
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenOnMeasuredBatteryConsumptionUC()J
    .registers 3

    .line 9870
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getSensorStats()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .line 9566
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public greylist-max-o getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .registers 14
    .param p1, "sensor"    # I
    .param p2, "create"    # Z

    .line 12552
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 12553
    .local v0, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v0, :cond_1b

    .line 12554
    if-nez p2, :cond_e

    .line 12555
    const/4 v1, 0x0

    return-object v1

    .line 12557
    :cond_e
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    move-object v0, v1

    .line 12558
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12560
    :cond_1b
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12561
    .local v1, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v1, :cond_20

    .line 12562
    return-object v1

    .line 12564
    :cond_20
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 12565
    .local v2, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v2, :cond_39

    .line 12566
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 12567
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12569
    :cond_39
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v4, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v4, v3

    move-object v6, p0

    move-object v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v1, v3

    .line 12571
    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12572
    return-object v1
.end method

.method public greylist-max-o getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "serv"    # Ljava/lang/String;

    .line 12512
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v0

    .line 12513
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 12514
    .local v1, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_17

    .line 12515
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    .line 12516
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12519
    :cond_17
    return-object v1
.end method

.method public greylist-max-o getSyncStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 9550
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSystemCpuTimeUs(I)J
    .registers 4
    .param p1, "which"    # I

    .line 10499
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getTimeAtCpuSpeed(III)J
    .registers 8
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .param p3, "which"    # I

    .line 10504
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_1b

    .line 10505
    if-ltz p1, :cond_1b

    array-length v1, v0

    if-ge p1, v1, :cond_1b

    .line 10506
    aget-object v0, v0, p1

    .line 10507
    .local v0, "cpuSpeedTimesUs":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v0, :cond_1b

    .line 10508
    if-ltz p2, :cond_1b

    array-length v1, v0

    if-ge p2, v1, :cond_1b

    .line 10509
    aget-object v1, v0, p2

    .line 10510
    .local v1, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v1, :cond_1b

    .line 10511
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    return-wide v2

    .line 10517
    .end local v0    # "cpuSpeedTimesUs":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v1    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist getUid()I
    .registers 2

    .line 9583
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    return v0
.end method

.method public greylist-max-o getUserActivityCount(II)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 10380
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_6

    .line 10381
    const/4 v0, 0x0

    return v0

    .line 10383
    :cond_6
    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getUserCpuTimeUs(I)J
    .registers 4
    .param p1, "which"    # I

    .line 10494
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic blacklist getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10357
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10268
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist getWakelockStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .line 9540
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 12
    .param p1, "wl"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .param p2, "type"    # I

    .line 12613
    if-nez p1, :cond_4

    .line 12614
    const/4 v0, 0x0

    return-object v0

    .line 12616
    :cond_4
    sparse-switch p2, :sswitch_data_94

    .line 12655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12646
    :sswitch_21
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12647
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_3d

    .line 12648
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x12

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    .line 12650
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12652
    :cond_3d
    return-object v0

    .line 12637
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :sswitch_3e
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12638
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_59

    .line 12639
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    .line 12641
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12643
    :cond_59
    return-object v0

    .line 12628
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :sswitch_5a
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12629
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_75

    .line 12630
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    .line 12632
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12634
    :cond_75
    return-object v0

    .line 12618
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :sswitch_76
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12619
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-nez v0, :cond_93

    .line 12620
    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v8

    .line 12623
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12625
    :cond_93
    return-object v0

    :sswitch_data_94
    .sparse-switch
        0x0 -> :sswitch_76
        0x1 -> :sswitch_5a
        0x2 -> :sswitch_3e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public greylist-max-o getWifiBatchedScanCount(II)I
    .registers 5
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    .line 10246
    const/4 v0, 0x0

    if-ltz p1, :cond_13

    const/4 v1, 0x5

    if-lt p1, v1, :cond_7

    goto :goto_13

    .line 10247
    :cond_7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, p1

    if-nez v1, :cond_e

    .line 10248
    return v0

    .line 10250
    :cond_e
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0

    .line 10246
    :cond_13
    :goto_13
    return v0
.end method

.method public greylist-max-o getWifiBatchedScanTime(IJI)J
    .registers 8
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 10237
    const-wide/16 v0, 0x0

    if-ltz p1, :cond_14

    const/4 v2, 0x5

    if-lt p1, v2, :cond_8

    goto :goto_14

    .line 10238
    :cond_8
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-nez v2, :cond_f

    .line 10239
    return-wide v0

    .line 10241
    :cond_f
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    .line 10237
    :cond_14
    :goto_14
    return-wide v0
.end method

.method public bridge synthetic greylist-max-o getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWifiControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .registers 2

    .line 9703
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public blacklist getWifiMeasuredBatteryConsumptionUC()J
    .registers 3

    .line 9876
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWifiMeasuredBatteryConsumptionUC(I)J
    .registers 4
    .param p1, "processState"    # I

    .line 9882
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getWifiMulticastTime(JI)J
    .registers 6
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 10255
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_7

    .line 10256
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10258
    :cond_7
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getWifiRadioApWakeupCount(I)J
    .registers 4
    .param p1, "which"    # I

    .line 10544
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_9

    .line 10545
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 10547
    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist getWifiRunningTime(JI)J
    .registers 6
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 10165
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_7

    .line 10166
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10168
    :cond_7
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getWifiScanActualTime(J)J
    .registers 10
    .param p1, "elapsedRealtimeUs"    # J

    .line 10211
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_7

    .line 10212
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10214
    :cond_7
    const-wide/16 v1, 0x1f4

    add-long/2addr v1, p1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 10215
    .local v1, "elapsedRealtimeMs":J
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    mul-long/2addr v5, v3

    return-wide v5
.end method

.method public greylist-max-o getWifiScanBackgroundCount(I)I
    .registers 3
    .param p1, "which"    # I

    .line 10203
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_16

    .line 10206
    :cond_b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCountLocked(I)I

    move-result v0

    return v0

    .line 10204
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getWifiScanBackgroundTime(J)J
    .registers 9
    .param p1, "elapsedRealtimeUs"    # J

    .line 10220
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_1d

    .line 10223
    :cond_b
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 10224
    .local v0, "elapsedRealtimeMs":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    mul-long/2addr v4, v2

    return-wide v4

    .line 10221
    .end local v0    # "elapsedRealtimeMs":J
    :cond_1d
    :goto_1d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic blacklist getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWifiScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10229
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_6

    .line 10230
    const/4 v0, 0x0

    return-object v0

    .line 10232
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWifiScanCount(I)I
    .registers 3
    .param p1, "which"    # I

    .line 10190
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_6

    .line 10191
    const/4 v0, 0x0

    return v0

    .line 10193
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public greylist getWifiScanTime(JI)J
    .registers 6
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 10182
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_7

    .line 10183
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10185
    :cond_7
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic blacklist getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 9086
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWifiScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .line 10198
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public greylist-max-o hasNetworkActivity()Z
    .registers 2

    .line 10445
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o hasUserActivity()Z
    .registers 2

    .line 10375
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o initUserActivityLocked()V
    .registers 5

    .line 10406
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10407
    sget v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 10408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    sget v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v0, v1, :cond_20

    .line 10409
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 10408
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 10411
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method public greylist-max-o isInBackground()Z
    .registers 3

    .line 12467
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method greylist-max-o makeProcessState(ILandroid/os/Parcel;)V
    .registers 12
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .line 10328
    if-ltz p1, :cond_3e

    const/4 v0, 0x7

    if-lt p1, v0, :cond_6

    goto :goto_3e

    .line 10330
    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10331
    if-nez p2, :cond_26

    .line 10332
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0xc

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v7, v0, p1

    goto :goto_3d

    .line 10335
    :cond_26
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0xc

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v8

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v8, v0, p1

    .line 10338
    :goto_3d
    return-void

    .line 10328
    :cond_3e
    :goto_3e
    return-void
.end method

.method greylist-max-o makeWifiBatchedScanBin(ILandroid/os/Parcel;)V
    .registers 13
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .line 10387
    if-ltz p1, :cond_57

    const/4 v0, 0x5

    if-lt p1, v0, :cond_6

    goto :goto_57

    .line 10389
    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 10390
    .local v0, "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v0, :cond_1f

    .line 10391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 10392
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10394
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10395
    if-nez p2, :cond_3f

    .line 10396
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v5, 0xb

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v8

    move-object v4, p0

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v1, p1

    goto :goto_56

    .line 10399
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v5, 0xb

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v9

    move-object v4, p0

    move-object v6, v0

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v9, v1, p1

    .line 10402
    :goto_56
    return-void

    .line 10387
    .end local v0    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    :cond_57
    :goto_57
    return-void
.end method

.method public greylist-max-o noteActivityPausedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 10129
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    .line 10130
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 10132
    :cond_7
    return-void
.end method

.method public greylist-max-o noteActivityResumedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 10124
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 10125
    return-void
.end method

.method public greylist-max-o noteAudioTurnedOffLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9949
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    .line 9950
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9952
    :cond_7
    return-void
.end method

.method public greylist-max-o noteAudioTurnedOnLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9945
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9946
    return-void
.end method

.method public blacklist noteBinderCallStatsLocked(JLjava/util/Collection;)V
    .registers 12
    .param p1, "incrementalCallCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;",
            ">;)V"
        }
    .end annotation

    .line 11538
    .local p3, "callStats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/os/BinderCallsStats$CallStat;>;"
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallCount:J

    .line 11539
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 11541
    .local v1, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    sget-object v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    iget-object v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    .line 11542
    sget-object v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    iget v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v3, v2, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    .line 11543
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 11544
    .local v2, "index":I
    if-ltz v2, :cond_34

    .line 11545
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    .local v3, "bcs":Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;
    goto :goto_46

    .line 11547
    .end local v3    # "bcs":Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;
    :cond_34
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    invoke-direct {v3}, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;-><init>()V

    .line 11548
    .restart local v3    # "bcs":Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;
    iget-object v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    .line 11549
    iget v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    .line 11550
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 11553
    :goto_46
    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->callCount:J

    iget-wide v6, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->callCount:J

    .line 11554
    iget-wide v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->recordedCallCount:J

    .line 11555
    iget-wide v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->recordedCpuTimeMicros:J

    .line 11556
    .end local v1    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v2    # "index":I
    .end local v3    # "bcs":Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;
    goto :goto_9

    .line 11557
    :cond_56
    return-void
.end method

.method public greylist-max-o noteBluetoothScanResultsLocked(I)V
    .registers 3
    .param p1, "numNewResults"    # I

    .line 10116
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanResultCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 10118
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanResultBgCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 10119
    return-void
.end method

.method public greylist-max-o noteBluetoothScanStartedLocked(JZ)V
    .registers 5
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "isUnoptimized"    # Z

    .line 10077
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 10078
    if-eqz p3, :cond_10

    .line 10079
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothUnoptimizedScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 10081
    :cond_10
    return-void
.end method

.method public greylist-max-o noteBluetoothScanStoppedLocked(JZ)V
    .registers 5
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "isUnoptimized"    # Z

    .line 10084
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_7

    .line 10085
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 10087
    :cond_7
    if-eqz p3, :cond_10

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_10

    .line 10088
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 10090
    :cond_10
    return-void
.end method

.method public greylist-max-o noteCameraTurnedOffLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 10021
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    .line 10022
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 10024
    :cond_7
    return-void
.end method

.method public greylist-max-o noteCameraTurnedOnLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 10017
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 10018
    return-void
.end method

.method public greylist-max-o noteFlashlightTurnedOffLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9997
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    .line 9998
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 10000
    :cond_7
    return-void
.end method

.method public greylist-max-o noteFlashlightTurnedOnLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9993
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9994
    return-void
.end method

.method public greylist-max-o noteForegroundServicePausedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 10139
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    .line 10140
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 10142
    :cond_7
    return-void
.end method

.method public greylist-max-o noteForegroundServiceResumedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 10135
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundServiceTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 10136
    return-void
.end method

.method public greylist-max-o noteFullWifiLockAcquiredLocked(J)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J

    .line 9608
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_26

    .line 9609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 9610
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_21

    .line 9611
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9614
    :cond_21
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9616
    :cond_26
    return-void
.end method

.method public greylist-max-o noteFullWifiLockReleasedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9620
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_c

    .line 9621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 9622
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9624
    :cond_c
    return-void
.end method

.method public greylist-max-o noteJobsDeferredLocked(IJ)V
    .registers 9
    .param p1, "numDeferred"    # I
    .param p2, "sinceLast"    # J

    .line 11506
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 11507
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 11508
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_40

    .line 11510
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 11512
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    sget-object v2, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v2, v2

    if-ge v0, v2, :cond_40

    .line 11513
    sget-object v2, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    aget-wide v2, v2, v0

    cmp-long v2, p2, v2

    if-gez v2, :cond_3d

    .line 11514
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v3, v2, v0

    if-nez v3, :cond_35

    .line 11515
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v0

    .line 11518
    :cond_35
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 11519
    goto :goto_40

    .line 11512
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 11523
    .end local v0    # "i":I
    :cond_40
    :goto_40
    return-void
.end method

.method blacklist noteMobileRadioActiveTimeLocked(JJ)V
    .registers 8
    .param p1, "batteryUptimeDeltaUs"    # J
    .param p3, "elapsedTimeMs"    # J

    .line 10425
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->ensureNetworkActivityLocked()V

    .line 10426
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mincrement(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;JJ)V

    .line 10427
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 10428
    return-void
.end method

.method public greylist-max-o noteMobileRadioApWakeupLocked()V
    .registers 4

    .line 10521
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_f

    .line 10522
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 10524
    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 10525
    return-void
.end method

.method greylist-max-o noteNetworkActivityLocked(IJJ)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J
    .param p4, "deltaPackets"    # J

    .line 10414
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->ensureNetworkActivityLocked()V

    .line 10415
    if-ltz p1, :cond_18

    const/16 v0, 0xa

    if-ge p1, v0, :cond_18

    .line 10416
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 10417
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_3b

    .line 10419
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown network activity type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "BatteryStatsImpl"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10422
    :goto_3b
    return-void
.end method

.method public greylist-max-o noteResetAudioLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9955
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    .line 9956
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 9958
    :cond_7
    return-void
.end method

.method public greylist-max-o noteResetBluetoothScanLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 10093
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_7

    .line 10094
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopAllRunningLocked(J)V

    .line 10096
    :cond_7
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_e

    .line 10097
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopAllRunningLocked(J)V

    .line 10099
    :cond_e
    return-void
.end method

.method public greylist-max-o noteResetCameraLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 10027
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    .line 10028
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 10030
    :cond_7
    return-void
.end method

.method public greylist-max-o noteResetFlashlightLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 10003
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    .line 10004
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 10006
    :cond_7
    return-void
.end method

.method public greylist-max-o noteResetVideoLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9979
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    .line 9980
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 9982
    :cond_7
    return-void
.end method

.method public greylist-max-o noteStartGps(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 12718
    const/16 v0, -0x2710

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(IJ)V

    .line 12719
    return-void
.end method

.method public greylist-max-o noteStartJobLocked(Ljava/lang/String;J)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .line 12590
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12591
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_d

    .line 12592
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 12594
    :cond_d
    return-void
.end method

.method public greylist-max-o noteStartSensor(IJ)V
    .registers 5
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 12705
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    .line 12706
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 12707
    return-void
.end method

.method public greylist-max-o noteStartSyncLocked(Ljava/lang/String;J)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .line 12576
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12577
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_d

    .line 12578
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 12580
    :cond_d
    return-void
.end method

.method public greylist-max-o noteStartWakeLocked(ILjava/lang/String;IJ)V
    .registers 10
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .line 12660
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 12661
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v0, :cond_11

    .line 12662
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 12664
    :cond_11
    if-nez p3, :cond_2a

    .line 12665
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAggregatedPartialWakelockTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 12666
    if-ltz p1, :cond_2a

    .line 12667
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object v1

    .line 12668
    .local v1, "p":Landroid/os/BatteryStats$Uid$Pid;
    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-nez v2, :cond_2a

    .line 12669
    iput-wide p4, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 12673
    .end local v1    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_2a
    return-void
.end method

.method public greylist-max-o noteStopGps(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 12722
    const/16 v0, -0x2710

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(IJ)V

    .line 12723
    return-void
.end method

.method public greylist-max-o noteStopJobLocked(Ljava/lang/String;JI)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "stopReason"    # I

    .line 12597
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12598
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_d

    .line 12599
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 12601
    :cond_d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 12602
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 12603
    .local v1, "types":Landroid/util/SparseIntArray;
    if-nez v1, :cond_2c

    .line 12604
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v1, v2

    .line 12605
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12607
    :cond_2c
    const/4 v2, 0x0

    invoke-virtual {v1, p4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 12608
    .local v2, "last":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, p4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12610
    .end local v1    # "types":Landroid/util/SparseIntArray;
    .end local v2    # "last":I
    :cond_36
    return-void
.end method

.method public greylist-max-o noteStopSensor(IJ)V
    .registers 5
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 12711
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    .line 12712
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_a

    .line 12713
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 12715
    :cond_a
    return-void
.end method

.method public greylist-max-o noteStopSyncLocked(Ljava/lang/String;J)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .line 12583
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12584
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_d

    .line 12585
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 12587
    :cond_d
    return-void
.end method

.method public greylist-max-o noteStopWakeLocked(ILjava/lang/String;IJ)V
    .registers 12
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .line 12676
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 12677
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v0, :cond_11

    .line 12678
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    .line 12679
    .local v1, "wlt":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 12681
    .end local v1    # "wlt":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_11
    if-nez p3, :cond_40

    .line 12682
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v1, :cond_1a

    .line 12683
    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 12685
    :cond_1a
    if-ltz p1, :cond_40

    .line 12686
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Pid;

    .line 12687
    .local v1, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v1, :cond_40

    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v2, :cond_40

    .line 12688
    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    .line 12689
    iget-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget-wide v4, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v4, p4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    .line 12690
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 12695
    .end local v1    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_40
    return-void
.end method

.method public greylist-max-o noteUserActivityLocked(I)V
    .registers 5
    .param p1, "type"    # I

    .line 10362
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_7

    .line 10363
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 10365
    :cond_7
    if-ltz p1, :cond_15

    sget v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge p1, v0, :cond_15

    .line 10366
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    goto :goto_38

    .line 10368
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown user activity type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "BatteryStatsImpl"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10371
    :goto_38
    return-void
.end method

.method public blacklist noteVibratorOffLocked(J)V
    .registers 5
    .param p1, "elapsedRealtimeMs"    # J

    .line 10157
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v0, :cond_9

    .line 10158
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    .line 10160
    :cond_9
    return-void
.end method

.method public blacklist noteVibratorOnLocked(JJ)V
    .registers 11
    .param p1, "durationMillis"    # J
    .param p3, "elapsedRealtimeMs"    # J

    .line 10153
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;JJ)V

    .line 10154
    return-void
.end method

.method public greylist-max-o noteVideoTurnedOffLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9973
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_7

    .line 9974
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9976
    :cond_7
    return-void
.end method

.method public greylist-max-o noteVideoTurnedOnLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9969
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9970
    return-void
.end method

.method public greylist-max-o noteWifiBatchedScanStartedLocked(IJ)V
    .registers 7
    .param p1, "csph"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 9649
    const/4 v0, 0x0

    .line 9650
    .local v0, "bin":I
    :goto_1
    const/16 v1, 0x8

    if-le p1, v1, :cond_d

    const/4 v1, 0x4

    if-ge v0, v1, :cond_d

    .line 9651
    shr-int/lit8 p1, p1, 0x3

    .line 9652
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9655
    :cond_d
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-ne v1, v0, :cond_12

    return-void

    .line 9657
    :cond_12
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    .line 9658
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v2, v1

    .line 9659
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9661
    :cond_1c
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 9662
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    if-nez v1, :cond_28

    .line 9663
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 9665
    :cond_28
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9666
    return-void
.end method

.method public greylist-max-o noteWifiBatchedScanStoppedLocked(J)V
    .registers 6
    .param p1, "elapsedRealtimeMs"    # J

    .line 9670
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 9671
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v2, v0

    .line 9672
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9673
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 9675
    :cond_e
    return-void
.end method

.method public greylist-max-o noteWifiMulticastDisabledLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9691
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-nez v0, :cond_5

    .line 9692
    return-void

    .line 9695
    :cond_5
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 9696
    if-nez v0, :cond_10

    .line 9697
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9699
    :cond_10
    return-void
.end method

.method public greylist-max-o noteWifiMulticastEnabledLocked(J)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J

    .line 9679
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-nez v0, :cond_23

    .line 9680
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1e

    .line 9681
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9684
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9686
    :cond_23
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 9687
    return-void
.end method

.method public greylist-max-o noteWifiRadioApWakeupLocked()V
    .registers 4

    .line 10536
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_f

    .line 10537
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 10539
    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 10540
    return-void
.end method

.method public greylist-max-o noteWifiRunningLocked(J)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J

    .line 9588
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_26

    .line 9589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 9590
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_21

    .line 9591
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9594
    :cond_21
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9596
    :cond_26
    return-void
.end method

.method public greylist-max-o noteWifiScanStartedLocked(J)V
    .registers 11
    .param p1, "elapsedRealtimeMs"    # J

    .line 9628
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-nez v0, :cond_28

    .line 9629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 9630
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_23

    .line 9631
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9635
    :cond_23
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 9637
    :cond_28
    return-void
.end method

.method public greylist-max-o noteWifiScanStoppedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9641
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-eqz v0, :cond_c

    .line 9642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 9643
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 9645
    :cond_c
    return-void
.end method

.method public greylist-max-o noteWifiStoppedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9600
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_c

    .line 9601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 9602
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9604
    :cond_c
    return-void
.end method

.method greylist-max-o readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 28
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    .line 11207
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v10

    .line 11208
    .local v10, "timestampMs":J
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 11209
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 11211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11212
    .local v12, "numWakelocks":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 11213
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_20
    if-ge v0, v12, :cond_3e

    .line 11214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 11215
    .local v1, "wakelockName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 11216
    .local v2, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v2, v13, v14, v3, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 11218
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11213
    .end local v1    # "wakelockName":Ljava/lang/String;
    .end local v2    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3e
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 11221
    .end local v0    # "j":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 11222
    .local v15, "numSyncs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 11223
    const/4 v0, 0x0

    move v7, v0

    .local v7, "j":I
    :goto_4d
    if-ge v7, v15, :cond_95

    .line 11224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 11225
    .local v6, "syncName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8f

    .line 11226
    iget-object v5, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0xd

    const/16 v16, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v17, v0

    move-object v0, v4

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object/from16 v19, v4

    move-object/from16 v4, v16

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    move-object/from16 v21, v6

    .end local v6    # "syncName":Ljava/lang/String;
    .local v21, "syncName":Ljava/lang/String;
    move-object/from16 v6, v17

    move/from16 v16, v7

    .end local v7    # "j":I
    .local v16, "j":I
    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v2, v19

    move-object/from16 v1, v20

    move-object/from16 v0, v21

    .end local v21    # "syncName":Ljava/lang/String;
    .local v0, "syncName":Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_92

    .line 11225
    .end local v0    # "syncName":Ljava/lang/String;
    .end local v16    # "j":I
    .restart local v6    # "syncName":Ljava/lang/String;
    .restart local v7    # "j":I
    :cond_8f
    move-object v0, v6

    move/from16 v16, v7

    .line 11223
    .end local v6    # "syncName":Ljava/lang/String;
    .end local v7    # "j":I
    .restart local v16    # "j":I
    :goto_92
    add-int/lit8 v7, v16, 0x1

    .end local v16    # "j":I
    .restart local v7    # "j":I
    goto :goto_4d

    :cond_95
    move/from16 v16, v7

    .line 11231
    .end local v7    # "j":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 11232
    .local v7, "numJobs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 11233
    const/4 v0, 0x0

    move v6, v0

    .local v6, "j":I
    :goto_a2
    if-ge v6, v7, :cond_f5

    .line 11234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 11235
    .local v5, "jobName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e7

    .line 11236
    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v16, 0xe

    const/16 v17, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v18, v0

    move-object v0, v3

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    move/from16 v20, v12

    move-object v12, v3

    .end local v12    # "numWakelocks":I
    .local v20, "numWakelocks":I
    move/from16 v3, v16

    move-object/from16 v22, v4

    move-object/from16 v4, v17

    move-object/from16 v23, v5

    .end local v5    # "jobName":Ljava/lang/String;
    .local v23, "jobName":Ljava/lang/String;
    move-object/from16 v5, v19

    move/from16 v16, v6

    .end local v6    # "j":I
    .restart local v16    # "j":I
    move-object/from16 v6, v18

    move/from16 v17, v7

    .end local v7    # "numJobs":I
    .local v17, "numJobs":I
    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    .end local v23    # "jobName":Ljava/lang/String;
    .local v0, "jobName":Ljava/lang/String;
    invoke-virtual {v1, v0, v12}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ee

    .line 11235
    .end local v0    # "jobName":Ljava/lang/String;
    .end local v16    # "j":I
    .end local v17    # "numJobs":I
    .end local v20    # "numWakelocks":I
    .restart local v5    # "jobName":Ljava/lang/String;
    .restart local v6    # "j":I
    .restart local v7    # "numJobs":I
    .restart local v12    # "numWakelocks":I
    :cond_e7
    move-object v0, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v12

    .line 11233
    .end local v5    # "jobName":Ljava/lang/String;
    .end local v6    # "j":I
    .end local v7    # "numJobs":I
    .end local v12    # "numWakelocks":I
    .restart local v16    # "j":I
    .restart local v17    # "numJobs":I
    .restart local v20    # "numWakelocks":I
    :goto_ee
    add-int/lit8 v6, v16, 0x1

    move/from16 v7, v17

    move/from16 v12, v20

    .end local v16    # "j":I
    .restart local v6    # "j":I
    goto :goto_a2

    .end local v17    # "numJobs":I
    .end local v20    # "numWakelocks":I
    .restart local v7    # "numJobs":I
    .restart local v12    # "numWakelocks":I
    :cond_f5
    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v12

    .line 11241
    .end local v6    # "j":I
    .end local v7    # "numJobs":I
    .end local v12    # "numWakelocks":I
    .restart local v17    # "numJobs":I
    .restart local v20    # "numWakelocks":I
    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V

    .line 11243
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11244
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11245
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_120
    sget-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v1, v1

    if-ge v0, v1, :cond_134

    .line 11247
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readCounterFromParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v2

    aput-object v2, v1, v0

    .line 11246
    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    .line 11251
    .end local v0    # "i":I
    :cond_134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11252
    .local v12, "numSensors":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11253
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_13e
    if-ge v0, v12, :cond_15c

    .line 11254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11255
    .local v1, "sensorNumber":I
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 11256
    .local v2, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2, v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 11258
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11253
    .end local v1    # "sensorNumber":I
    .end local v2    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_13e

    .line 11261
    .end local v0    # "k":I
    :cond_15c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 11262
    .local v7, "numProcs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 11263
    const/4 v0, 0x0

    .restart local v0    # "k":I
    :goto_166
    if-ge v0, v7, :cond_17e

    .line 11264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 11265
    .local v1, "processName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    .line 11266
    .local v2, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 11267
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11263
    .end local v1    # "processName":Ljava/lang/String;
    .end local v2    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    add-int/lit8 v0, v0, 0x1

    goto :goto_166

    .line 11270
    .end local v0    # "k":I
    :cond_17e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 11271
    .local v6, "numPkgs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 11272
    const/4 v0, 0x0

    .local v0, "l":I
    :goto_188
    if-ge v0, v6, :cond_1a0

    .line 11273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 11274
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 11275
    .local v2, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 11276
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11272
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    add-int/lit8 v0, v0, 0x1

    goto :goto_188

    .line 11279
    .end local v0    # "l":I
    :cond_1a0
    const/4 v5, 0x0

    iput-boolean v5, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 11280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1d5

    .line 11281
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v16, 0x4

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v18, v0

    move-object v0, v3

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    move/from16 v21, v7

    move-object v7, v3

    .end local v7    # "numProcs":I
    .local v21, "numProcs":I
    move/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v18

    move/from16 v16, v6

    .end local v6    # "numPkgs":I
    .local v16, "numPkgs":I
    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    goto :goto_1dc

    .line 11284
    .end local v16    # "numPkgs":I
    .end local v21    # "numProcs":I
    .restart local v6    # "numPkgs":I
    .restart local v7    # "numProcs":I
    :cond_1d5
    move/from16 v16, v6

    move/from16 v21, v7

    .end local v6    # "numPkgs":I
    .end local v7    # "numProcs":I
    .restart local v16    # "numPkgs":I
    .restart local v21    # "numProcs":I
    const/4 v7, 0x0

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11286
    :goto_1dc
    const/4 v6, 0x0

    iput-boolean v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 11287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_208

    .line 11288
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v3, 0x5

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v5

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object v7, v5

    move-object/from16 v5, v18

    move/from16 v18, v12

    move v12, v6

    .end local v12    # "numSensors":I
    .local v18, "numSensors":I
    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    goto :goto_20e

    .line 11291
    .end local v18    # "numSensors":I
    .restart local v12    # "numSensors":I
    :cond_208
    move/from16 v18, v12

    move v12, v6

    .end local v12    # "numSensors":I
    .restart local v18    # "numSensors":I
    const/4 v7, 0x0

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11293
    :goto_20e
    iput-boolean v12, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 11294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23a

    .line 11295
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v3, 0x6

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v6

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    move-object v12, v6

    move-object/from16 v6, v19

    move-object v13, v7

    move/from16 v19, v21

    .end local v21    # "numProcs":I
    .local v19, "numProcs":I
    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v12, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_23f

    .line 11299
    .end local v19    # "numProcs":I
    .restart local v21    # "numProcs":I
    :cond_23a
    move-object v13, v7

    move/from16 v19, v21

    .end local v21    # "numProcs":I
    .restart local v19    # "numProcs":I
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 11301
    :goto_23f
    const/4 v0, -0x1

    iput v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 11302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_243
    const/4 v12, 0x5

    if-ge v0, v12, :cond_257

    .line 11303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_250

    .line 11304
    invoke-virtual {v8, v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    goto :goto_254

    .line 11306
    :cond_250
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aput-object v13, v1, v0

    .line 11302
    :goto_254
    add-int/lit8 v0, v0, 0x1

    goto :goto_243

    .line 11309
    .end local v0    # "i":I
    :cond_257
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 11310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27a

    .line 11311
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v3, 0x7

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_27c

    .line 11315
    :cond_27a
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11317
    :goto_27c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29d

    .line 11318
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0xf

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_29f

    .line 11321
    :cond_29d
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11323
    :goto_29f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c0

    .line 11324
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x8

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_2c2

    .line 11327
    :cond_2c0
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11329
    :goto_2c2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e3

    .line 11330
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x10

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_2e5

    .line 11333
    :cond_2e3
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11335
    :goto_2e5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_306

    .line 11336
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x11

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_308

    .line 11339
    :cond_306
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11341
    :goto_308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_326

    .line 11342
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0xa

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_328

    .line 11345
    :cond_326
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11347
    :goto_328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_346

    .line 11348
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x16

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_348

    .line 11351
    :cond_346
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11353
    :goto_348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_369

    .line 11354
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x14

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object v12, v7

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v12, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_36b

    .line 11359
    :cond_369
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 11361
    :goto_36b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38e

    .line 11362
    new-instance v12, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x13

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v12

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v12, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_390

    .line 11366
    :cond_38e
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 11368
    :goto_390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b0

    .line 11369
    new-instance v12, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x15

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v12

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v12, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_3b2

    .line 11373
    :cond_3b0
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 11375
    :goto_3b2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c4

    .line 11376
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    goto :goto_3c6

    .line 11378
    :cond_3c4
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11380
    :goto_3c6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d6

    .line 11381
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    goto :goto_3d8

    .line 11383
    :cond_3d6
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11385
    :goto_3d8
    const/4 v0, 0x7

    iput v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 11386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3dc
    if-ge v1, v0, :cond_3ef

    .line 11387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e8

    .line 11388
    invoke-virtual {v8, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    goto :goto_3ec

    .line 11390
    :cond_3e8
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aput-object v13, v2, v1

    .line 11386
    :goto_3ec
    add-int/lit8 v1, v1, 0x1

    goto :goto_3dc

    .line 11393
    .end local v1    # "i":I
    :cond_3ef
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40c

    .line 11394
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x9

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v6

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_40e

    .line 11397
    :cond_40c
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 11399
    :goto_40e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_430

    .line 11400
    sget v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11401
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_41b
    sget v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v0, v1, :cond_42f

    .line 11402
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v2, v1, v0

    .line 11401
    add-int/lit8 v0, v0, 0x1

    goto :goto_41b

    .end local v0    # "i":I
    :cond_42f
    goto :goto_432

    .line 11405
    :cond_430
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11407
    :goto_432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47f

    .line 11408
    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11409
    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11411
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_443
    if-ge v1, v0, :cond_462

    .line 11412
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    .line 11414
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    .line 11411
    add-int/lit8 v1, v1, 0x1

    goto :goto_443

    .line 11417
    .end local v1    # "i":I
    :cond_462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_473

    .line 11418
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v1, 0x5

    invoke-static {v9, v0, v1, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 11423
    :cond_473
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_483

    .line 11425
    :cond_47f
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11426
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11429
    :goto_483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_49a

    .line 11430
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v3, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_49c

    .line 11433
    :cond_49a
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 11436
    :goto_49c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b2

    .line 11437
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v3, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_4b4

    .line 11440
    :cond_4b2
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 11443
    :goto_4b4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4ce

    .line 11444
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 11445
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_4d0

    .line 11447
    :cond_4ce
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 11450
    :goto_4d0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e1

    .line 11451
    new-instance v0, Lcom/android/internal/power/MeasuredEnergyStats;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMeasuredEnergyStatsConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    .line 11455
    :cond_4e1
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11456
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11458
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mreadCpuSpeedCountersFromParcel(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11460
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 11461
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 11464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11465
    .local v0, "stateCount":I
    if-eqz v0, :cond_524

    .line 11466
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x5

    invoke-static {v9, v1, v2, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 11470
    :cond_524
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2, v9, v13}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray-IA;)V

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 11472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 11473
    .end local v0    # "stateCount":I
    .local v6, "stateCount":I
    if-eqz v6, :cond_552

    .line 11474
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v2, 0x8

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 11476
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuFreqCount()I

    move-result v3

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 11474
    move-object/from16 v0, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    goto :goto_554

    .line 11478
    :cond_552
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 11481
    :goto_554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 11482
    if-eqz v6, :cond_577

    .line 11483
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v2, 0x8

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 11485
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuFreqCount()I

    move-result v3

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 11483
    move-object/from16 v0, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    goto :goto_579

    .line 11487
    :cond_577
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 11490
    :goto_579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_58b

    .line 11491
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_58d

    .line 11493
    :cond_58b
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11496
    :goto_58d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59f

    .line 11497
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_5a1

    .line 11499
    :cond_59f
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11502
    :goto_5a1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    .line 11503
    return-void
.end method

.method greylist-max-o readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 11188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11189
    .local v0, "numJobCompletions":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 11190
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_a
    if-ge v1, v0, :cond_34

    .line 11191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11192
    .local v2, "jobName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 11193
    .local v3, "numTypes":I
    if-lez v3, :cond_31

    .line 11194
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 11195
    .local v4, "types":Landroid/util/SparseIntArray;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1c
    if-ge v5, v3, :cond_2c

    .line 11196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 11197
    .local v6, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 11198
    .local v7, "count":I
    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 11195
    .end local v6    # "type":I
    .end local v7    # "count":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 11200
    .end local v5    # "k":I
    :cond_2c
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11190
    .end local v2    # "jobName":Ljava/lang/String;
    .end local v3    # "numTypes":I
    .end local v4    # "types":Landroid/util/SparseIntArray;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 11203
    .end local v1    # "j":I
    :cond_34
    return-void
.end method

.method public greylist-max-o readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 12529
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12530
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12531
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12532
    return-void
.end method

.method public greylist-max-o readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 12523
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12524
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12525
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12526
    return-void
.end method

.method public greylist-max-o readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "wlName"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 12535
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 12536
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 12538
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12540
    :cond_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    .line 12541
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12543
    :cond_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_36

    .line 12544
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12546
    :cond_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_45

    .line 12547
    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12549
    :cond_45
    return-void
.end method

.method public greylist-max-o removeIsolatedUid(I)V
    .registers 4
    .param p1, "isolatedUid"    # I

    .line 9475
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 9476
    .local v0, "idx":I
    :goto_a
    if-gez v0, :cond_d

    .line 9477
    return-void

    .line 9479
    :cond_d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 9480
    return-void
.end method

.method public greylist-max-o reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .registers 7
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTimeMs"    # J
    .param p4, "usedTimeMs"    # J

    .line 12698
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 12699
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_9

    .line 12700
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    .line 12702
    :cond_9
    return-void
.end method

.method public blacklist reset(JJI)Z
    .registers 23
    .param p1, "uptimeUs"    # J
    .param p3, "realtimeUs"    # J
    .param p5, "resetReason"    # I

    .line 10615
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const/4 v5, 0x0

    .line 10617
    .local v5, "active":Z
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 10618
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 10620
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_20

    .line 10621
    invoke-virtual {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10622
    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    or-int/2addr v5, v6

    .line 10624
    :cond_20
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_2d

    .line 10625
    invoke-virtual {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10626
    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    or-int/2addr v5, v6

    .line 10628
    :cond_2d
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v6, :cond_3a

    .line 10629
    invoke-virtual {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10630
    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    or-int/2addr v5, v6

    .line 10632
    :cond_3a
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_5a

    .line 10633
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3f
    const/4 v9, 0x5

    if-ge v6, v9, :cond_51

    .line 10634
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v9, v9, v6

    if-eqz v9, :cond_4e

    .line 10635
    invoke-virtual {v9, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v9

    xor-int/2addr v9, v7

    or-int/2addr v5, v9

    .line 10633
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 10638
    .end local v6    # "i":I
    :cond_51
    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_58

    move v6, v7

    goto :goto_59

    :cond_58
    move v6, v8

    :goto_59
    or-int/2addr v5, v6

    .line 10640
    :cond_5a
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_6c

    .line 10641
    invoke-virtual {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10642
    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-lez v6, :cond_6a

    move v6, v7

    goto :goto_6b

    :cond_6a
    move v6, v8

    :goto_6b
    or-int/2addr v5, v6

    .line 10645
    :cond_6c
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10646
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10647
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10648
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10649
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10650
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10651
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10652
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10653
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10655
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10656
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10658
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_db

    .line 10659
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_c3
    const/4 v9, 0x7

    if-ge v6, v9, :cond_d3

    .line 10660
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v9, v9, v6

    invoke-static {v9, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v9

    xor-int/2addr v9, v7

    or-int/2addr v5, v9

    .line 10659
    add-int/lit8 v6, v6, 0x1

    goto :goto_c3

    .line 10662
    .end local v6    # "i":I
    :cond_d3
    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-eq v6, v9, :cond_d9

    move v6, v7

    goto :goto_da

    :cond_d9
    move v6, v8

    :goto_da
    or-int/2addr v5, v6

    .line 10664
    :cond_db
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    const/4 v9, 0x0

    if-eqz v6, :cond_ef

    .line 10665
    invoke-virtual {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->reset(ZJ)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 10666
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->detach()V

    .line 10667
    iput-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_ef

    .line 10669
    :cond_ee
    const/4 v5, 0x1

    .line 10673
    :cond_ef
    :goto_ef
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10675
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10676
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10677
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10678
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10680
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;ZJ)Z

    .line 10681
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;ZJ)Z

    .line 10682
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;ZJ)Z

    .line 10684
    const/4 v6, 0x4

    move/from16 v10, p5

    if-ne v10, v6, :cond_11f

    .line 10685
    iput-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    goto :goto_124

    .line 10687
    :cond_11f
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-static {v6}, Lcom/android/internal/power/MeasuredEnergyStats;->resetIfNotNull(Lcom/android/internal/power/MeasuredEnergyStats;)V

    .line 10690
    :goto_124
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10691
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10693
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10695
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10696
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10699
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10700
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10702
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10704
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10706
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10708
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10711
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 10712
    .local v6, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v7

    .local v9, "iw":I
    :goto_166
    if-ltz v9, :cond_17c

    .line 10713
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 10714
    .local v11, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual {v11, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset(J)Z

    move-result v12

    if-eqz v12, :cond_178

    .line 10715
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_179

    .line 10717
    :cond_178
    const/4 v5, 0x1

    .line 10712
    .end local v11    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :goto_179
    add-int/lit8 v9, v9, -0x1

    goto :goto_166

    .line 10720
    .end local v9    # "iw":I
    :cond_17c
    const-wide/16 v11, 0x3e8

    div-long v11, v3, v11

    .line 10721
    .local v11, "realtimeMs":J
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup(J)V

    .line 10722
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 10723
    .local v9, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v13

    sub-int/2addr v13, v7

    .local v13, "is":I
    :goto_190
    if-ltz v13, :cond_1a9

    .line 10724
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10725
    .local v14, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v14, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(ZJ)Z

    move-result v15

    if-eqz v15, :cond_1a5

    .line 10726
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 10727
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_1a6

    .line 10729
    :cond_1a5
    const/4 v5, 0x1

    .line 10723
    .end local v14    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    :goto_1a6
    add-int/lit8 v13, v13, -0x1

    goto :goto_190

    .line 10732
    .end local v13    # "is":I
    :cond_1a9
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v13, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup(J)V

    .line 10733
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    .line 10734
    .local v13, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    sub-int/2addr v14, v7

    .local v14, "ij":I
    :goto_1b9
    if-ltz v14, :cond_1d2

    .line 10735
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10736
    .local v15, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v15, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(ZJ)Z

    move-result v16

    if-eqz v16, :cond_1ce

    .line 10737
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 10738
    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_1cf

    .line 10740
    :cond_1ce
    const/4 v5, 0x1

    .line 10734
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    :goto_1cf
    add-int/lit8 v14, v14, -0x1

    goto :goto_1b9

    .line 10743
    .end local v14    # "ij":I
    :cond_1d2
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v14, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup(J)V

    .line 10744
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->clear()V

    .line 10746
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v14, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10747
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v14, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10748
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v14, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10749
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v14, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10751
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "ise":I
    :goto_1f7
    if-ltz v8, :cond_211

    .line 10752
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 10753
    .local v14, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v14, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset(J)Z

    move-result v15

    if-eqz v15, :cond_20d

    .line 10754
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_20e

    .line 10756
    :cond_20d
    const/4 v5, 0x1

    .line 10751
    .end local v14    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :goto_20e
    add-int/lit8 v8, v8, -0x1

    goto :goto_1f7

    .line 10760
    .end local v8    # "ise":I
    :cond_211
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "ip":I
    :goto_218
    if-ltz v8, :cond_228

    .line 10761
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 10762
    .local v14, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 10760
    .end local v14    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    add-int/lit8 v8, v8, -0x1

    goto :goto_218

    .line 10764
    .end local v8    # "ip":I
    :cond_228
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 10766
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "i":I
    :goto_234
    if-ltz v8, :cond_24c

    .line 10767
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pid;

    .line 10768
    .local v14, "pid":Landroid/os/BatteryStats$Uid$Pid;
    iget v15, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v15, :cond_244

    .line 10769
    const/4 v5, 0x1

    goto :goto_249

    .line 10771
    :cond_244
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->removeAt(I)V

    .line 10766
    .end local v14    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :goto_249
    add-int/lit8 v8, v8, -0x1

    goto :goto_234

    .line 10776
    .end local v8    # "i":I
    :cond_24c
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .restart local v8    # "i":I
    :goto_253
    if-ltz v8, :cond_263

    .line 10777
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 10778
    .local v7, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 10776
    .end local v7    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    add-int/lit8 v8, v8, -0x1

    goto :goto_253

    .line 10780
    .end local v8    # "i":I
    :cond_263
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 10782
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallCount:J

    .line 10783
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->clear()V

    .line 10785
    const-wide/16 v14, 0x0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    .line 10787
    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    .line 10788
    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTimeMs:J

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTimeMs:J

    .line 10791
    xor-int/lit8 v7, v5, 0x1

    return v7
.end method

.method public blacklist setProcessStateForTest(IJ)V
    .registers 8
    .param p1, "procState"    # I
    .param p2, "elapsedTimeMs"    # J

    .line 9344
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 9345
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;IJ)V

    .line 9346
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateScreenOffTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;IJ)V

    .line 9347
    nop

    .line 9348
    invoke-static {p1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v0

    .line 9349
    .local v0, "batteryConsumerProcessState":I
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v1

    invoke-static {v1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 9350
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v1

    invoke-static {v1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 9351
    nop

    .line 9352
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v1

    .line 9353
    .local v1, "wifiControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    if-eqz v1, :cond_2d

    .line 9354
    invoke-static {v1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 9356
    :cond_2d
    nop

    .line 9357
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v2

    .line 9358
    .local v2, "bluetoothControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    if-eqz v2, :cond_37

    .line 9359
    invoke-static {v2, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 9361
    :cond_37
    nop

    .line 9362
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateMeasuredEnergyStatsIfSupportedLocked()Lcom/android/internal/power/MeasuredEnergyStats;

    move-result-object v3

    .line 9363
    .local v3, "energyStats":Lcom/android/internal/power/MeasuredEnergyStats;
    if-eqz v3, :cond_41

    .line 9364
    invoke-virtual {v3, v0, p2, p3}, Lcom/android/internal/power/MeasuredEnergyStats;->setState(IJ)V

    .line 9366
    :cond_41
    return-void
.end method

.method public greylist-max-o updateOnBatteryBgTimeBase(JJ)Z
    .registers 12
    .param p1, "uptimeUs"    # J
    .param p3, "realtimeUs"    # J

    .line 12471
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    move v2, v0

    .line 12472
    .local v2, "on":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o updateOnBatteryScreenOffBgTimeBase(JJ)Z
    .registers 12
    .param p1, "uptimeUs"    # J
    .param p3, "realtimeUs"    # J

    .line 12476
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    move v2, v0

    .line 12477
    .local v2, "on":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public blacklist updateUidProcessStateLocked(IJJ)V
    .registers 15
    .param p1, "procState"    # I
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "uptimeMs"    # J

    .line 12358
    nop

    .line 12359
    invoke-static {p1}, Landroid/app/ActivityManager;->isForegroundService(I)Z

    move-result v0

    .line 12360
    .local v0, "userAwareService":Z
    invoke-static {p1}, Landroid/os/BatteryStats;->mapToInternalProcessState(I)I

    move-result v1

    .line 12362
    .local v1, "uidRunningState":I
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-ne v2, v1, :cond_12

    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    if-ne v0, v3, :cond_12

    .line 12363
    return-void

    .line 12366
    :cond_12
    if-eq v2, v1, :cond_a3

    .line 12367
    const/4 v3, 0x7

    if-eq v2, v3, :cond_1e

    .line 12368
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v4, v2

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 12370
    :cond_1e
    if-eq v1, v3, :cond_31

    .line 12371
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    if-nez v2, :cond_2a

    .line 12372
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 12374
    :cond_2a
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 12377
    :cond_31
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 12378
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->updateProcStateCpuTimesLocked(IJ)V

    .line 12380
    nop

    .line 12381
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCounter()Lcom/android/internal/os/LongArrayMultiStateCounter;

    move-result-object v2

    .line 12382
    .local v2, "onBatteryCounter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    nop

    .line 12383
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateScreenOffTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCounter()Lcom/android/internal/os/LongArrayMultiStateCounter;

    move-result-object v3

    .line 12385
    .local v3, "onBatteryScreenOffCounter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    invoke-virtual {v2, v1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 12386
    invoke-virtual {v3, v1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 12389
    .end local v2    # "onBatteryCounter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    .end local v3    # "onBatteryScreenOffCounter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    :cond_58
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 12390
    invoke-static {v2}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v2

    .line 12392
    .local v2, "prevBatteryConsumerProcessState":I
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 12394
    const-wide/16 v3, 0x3e8

    mul-long v5, p4, v3

    mul-long v7, p2, v3

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateOnBatteryBgTimeBase(JJ)Z

    .line 12395
    mul-long v5, p4, v3

    mul-long/2addr v3, p2

    invoke-virtual {p0, v5, v6, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateOnBatteryScreenOffBgTimeBase(JJ)Z

    .line 12397
    nop

    .line 12398
    invoke-static {v1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v3

    .line 12399
    .local v3, "batteryConsumerProcessState":I
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v4

    invoke-static {v4, v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 12401
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v4

    .line 12402
    invoke-static {v4, v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 12404
    nop

    .line 12405
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v4

    .line 12406
    .local v4, "wifiControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    if-eqz v4, :cond_8c

    .line 12407
    invoke-static {v4, v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 12410
    :cond_8c
    nop

    .line 12411
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v5

    .line 12412
    .local v5, "bluetoothControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    if-eqz v5, :cond_96

    .line 12413
    invoke-static {v5, v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 12417
    :cond_96
    nop

    .line 12418
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateMeasuredEnergyStatsIfSupportedLocked()Lcom/android/internal/power/MeasuredEnergyStats;

    move-result-object v6

    .line 12419
    .local v6, "energyStats":Lcom/android/internal/power/MeasuredEnergyStats;
    if-eqz v6, :cond_a0

    .line 12420
    invoke-virtual {v6, v3, p2, p3}, Lcom/android/internal/power/MeasuredEnergyStats;->setState(IJ)V

    .line 12422
    :cond_a0
    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->maybeScheduleExternalStatsSync(II)V

    .line 12426
    .end local v2    # "prevBatteryConsumerProcessState":I
    .end local v3    # "batteryConsumerProcessState":I
    .end local v4    # "wifiControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .end local v5    # "bluetoothControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .end local v6    # "energyStats":Lcom/android/internal/power/MeasuredEnergyStats;
    :cond_a3
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    if-eq v0, v2, :cond_b2

    .line 12427
    if-eqz v0, :cond_ad

    .line 12428
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteForegroundServiceResumedLocked(J)V

    goto :goto_b0

    .line 12430
    :cond_ad
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteForegroundServicePausedLocked(J)V

    .line 12432
    :goto_b0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    .line 12434
    :cond_b2
    return-void
.end method

.method greylist-max-o writeJobCompletionsToParcelLocked(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;

    .line 10898
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 10899
    .local v0, "NJC":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10900
    const/4 v1, 0x0

    .local v1, "ijc":I
    :goto_a
    if-ge v1, v0, :cond_3d

    .line 10901
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10902
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 10903
    .local v2, "types":Landroid/util/SparseIntArray;
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 10904
    .local v3, "NT":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10905
    const/4 v4, 0x0

    .local v4, "it":I
    :goto_27
    if-ge v4, v3, :cond_3a

    .line 10906
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10907
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10905
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 10900
    .end local v2    # "types":Landroid/util/SparseIntArray;
    .end local v3    # "NT":I
    .end local v4    # "it":I
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 10910
    .end local v1    # "ijc":I
    :cond_3d
    return-void
.end method

.method greylist-max-o writeToParcelLocked(Landroid/os/Parcel;JJ)V
    .registers 22
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptimeUs"    # J
    .param p4, "elapsedRealtimeUs"    # J

    .line 10913
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 10914
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 10916
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 10917
    .local v1, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 10918
    .local v2, "NW":I
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10919
    const/4 v3, 0x0

    .local v3, "iw":I
    :goto_24
    if-ge v3, v2, :cond_3b

    .line 10920
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10921
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 10922
    .local v4, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual {v4, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 10919
    .end local v4    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 10925
    .end local v3    # "iw":I
    :cond_3b
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 10926
    .local v3, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 10927
    .local v4, "NS":I
    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10928
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_49
    if-ge v5, v4, :cond_60

    .line 10929
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10930
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10931
    .local v6, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-static {v7, v6, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 10928
    .end local v6    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 10934
    .end local v5    # "is":I
    :cond_60
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    .line 10935
    .local v5, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 10936
    .local v6, "NJ":I
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 10937
    const/4 v10, 0x0

    .local v10, "ij":I
    :goto_6e
    if-ge v10, v6, :cond_85

    .line 10938
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10939
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10940
    .local v11, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-static {v7, v11, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 10937
    .end local v11    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    .line 10943
    .end local v10    # "ij":I
    :cond_85
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeJobCompletionsToParcelLocked(Landroid/os/Parcel;)V

    .line 10945
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v10, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10946
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v10, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10947
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v10, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10948
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_98
    sget-object v11, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v11, v11

    if-ge v10, v11, :cond_a7

    .line 10949
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v11, v11, v10

    invoke-static {v7, v11}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeCounterToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Counter;)V

    .line 10948
    add-int/lit8 v10, v10, 0x1

    goto :goto_98

    .line 10952
    .end local v10    # "i":I
    :cond_a7
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 10953
    .local v10, "NSE":I
    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 10954
    const/4 v11, 0x0

    .local v11, "ise":I
    :goto_b1
    if-ge v11, v10, :cond_ca

    .line 10955
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 10956
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 10957
    .local v12, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 10954
    .end local v12    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    add-int/lit8 v11, v11, 0x1

    goto :goto_b1

    .line 10960
    .end local v11    # "ise":I
    :cond_ca
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 10961
    .local v11, "NP":I
    invoke-virtual {v7, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 10962
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_d4
    if-ge v12, v11, :cond_ef

    .line 10963
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10964
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 10965
    .local v13, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 10962
    .end local v13    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    add-int/lit8 v12, v12, 0x1

    goto :goto_d4

    .line 10968
    .end local v12    # "ip":I
    :cond_ef
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 10969
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_102
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_121

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 10970
    .local v13, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10971
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 10972
    .local v14, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v14, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 10973
    .end local v13    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v14    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    goto :goto_102

    .line 10975
    :cond_121
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_130

    .line 10976
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10977
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_133

    .line 10979
    :cond_130
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10981
    :goto_133
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_140

    .line 10982
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10983
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_143

    .line 10985
    :cond_140
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10987
    :goto_143
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v12, :cond_150

    .line 10988
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10989
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_153

    .line 10991
    :cond_150
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10993
    :goto_153
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_154
    const/4 v15, 0x5

    if-ge v12, v15, :cond_16e

    .line 10994
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v12

    if-eqz v15, :cond_168

    .line 10995
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10996
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v12

    invoke-virtual {v15, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_16b

    .line 10998
    :cond_168
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10993
    :goto_16b
    add-int/lit8 v12, v12, 0x1

    goto :goto_154

    .line 11001
    .end local v12    # "i":I
    :cond_16e
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_17b

    .line 11002
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11003
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_17e

    .line 11005
    :cond_17b
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11008
    :goto_17e
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_18b

    .line 11009
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11010
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_18e

    .line 11012
    :cond_18b
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11014
    :goto_18e
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_19b

    .line 11015
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11016
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_19e

    .line 11018
    :cond_19b
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11020
    :goto_19e
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_1ab

    .line 11021
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11022
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_1ae

    .line 11024
    :cond_1ab
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11026
    :goto_1ae
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_1bb

    .line 11027
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11028
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_1be

    .line 11030
    :cond_1bb
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11032
    :goto_1be
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_1cb

    .line 11033
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11034
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_1ce

    .line 11036
    :cond_1cb
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11038
    :goto_1ce
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_1db

    .line 11039
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11040
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_1de

    .line 11042
    :cond_1db
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11044
    :goto_1de
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v12, :cond_1eb

    .line 11045
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11046
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_1ee

    .line 11048
    :cond_1eb
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11050
    :goto_1ee
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v12, :cond_1fb

    .line 11051
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11052
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_1fe

    .line 11054
    :cond_1fb
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11056
    :goto_1fe
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v12, :cond_20b

    .line 11057
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11058
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_20e

    .line 11060
    :cond_20b
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11062
    :goto_20e
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v12, :cond_21b

    .line 11063
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11064
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_21e

    .line 11066
    :cond_21b
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11068
    :goto_21e
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v12, :cond_22b

    .line 11069
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11070
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_22e

    .line 11072
    :cond_22b
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11074
    :goto_22e
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_22f
    const/4 v15, 0x7

    if-ge v12, v15, :cond_249

    .line 11075
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v12

    if-eqz v15, :cond_243

    .line 11076
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11077
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v12

    invoke-virtual {v15, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_246

    .line 11079
    :cond_243
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11074
    :goto_246
    add-int/lit8 v12, v12, 0x1

    goto :goto_22f

    .line 11082
    .end local v12    # "i":I
    :cond_249
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v12, :cond_256

    .line 11083
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11084
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_259

    .line 11086
    :cond_256
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11088
    :goto_259
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v12, :cond_270

    .line 11089
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11090
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_261
    sget v15, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v12, v15, :cond_26f

    .line 11091
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v15, v15, v12

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 11090
    add-int/lit8 v12, v12, 0x1

    goto :goto_261

    .end local v12    # "i":I
    :cond_26f
    goto :goto_273

    .line 11094
    :cond_270
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11096
    :goto_273
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v12, :cond_2a6

    .line 11097
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11098
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_27b
    const/16 v15, 0xa

    if-ge v12, v15, :cond_290

    .line 11099
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v15, v15, v12

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 11100
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v15, v15, v12

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 11098
    add-int/lit8 v12, v12, 0x1

    goto :goto_27b

    .line 11102
    .end local v12    # "i":I
    :cond_290
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v12, :cond_29d

    .line 11103
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11104
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    goto :goto_2a0

    .line 11106
    :cond_29d
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11108
    :goto_2a0
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_2a9

    .line 11110
    :cond_2a6
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11113
    :goto_2a9
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v12, :cond_2b6

    .line 11114
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11115
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v12, v7, v13}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2b9

    .line 11117
    :cond_2b6
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11120
    :goto_2b9
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v12, :cond_2c6

    .line 11121
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11122
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v12, v7, v13}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2c9

    .line 11124
    :cond_2c6
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11127
    :goto_2c9
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v12, :cond_2d6

    .line 11128
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11129
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v12, v7, v13}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d9

    .line 11131
    :cond_2d6
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11134
    :goto_2d9
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-eqz v12, :cond_2e6

    .line 11135
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11136
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-virtual {v12, v7}, Lcom/android/internal/power/MeasuredEnergyStats;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_2e9

    .line 11138
    :cond_2e6
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11141
    :goto_2e9
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 11142
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 11144
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v12, v7, v15}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mwriteCpuSpeedCountersToParcel(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V

    .line 11146
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v7, v12}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    .line 11147
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v7, v12}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    .line 11149
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v12, :cond_315

    .line 11150
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getStateCount()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 11151
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    goto :goto_318

    .line 11153
    :cond_315
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11156
    :goto_318
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V

    .line 11158
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-eqz v12, :cond_32e

    .line 11159
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getStateCount()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 11160
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;Landroid/os/Parcel;)V

    goto :goto_331

    .line 11162
    :cond_32e
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11164
    :goto_331
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-eqz v12, :cond_342

    .line 11165
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getStateCount()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 11166
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;Landroid/os/Parcel;)V

    goto :goto_345

    .line 11168
    :cond_342
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11171
    :goto_345
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v12, :cond_352

    .line 11172
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11173
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_355

    .line 11175
    :cond_352
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11178
    :goto_355
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v12, :cond_362

    .line 11179
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11180
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_365

    .line 11182
    :cond_362
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11184
    :goto_365
    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    invoke-virtual {v7, v12, v13}, Landroid/os/Parcel;->writeDouble(D)V

    .line 11185
    return-void
.end method
