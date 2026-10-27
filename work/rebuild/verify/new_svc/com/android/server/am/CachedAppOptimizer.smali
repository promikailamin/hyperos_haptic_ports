.class public Lcom/android/server/am/CachedAppOptimizer;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# static fields
.field static final CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

.field static final DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:J = 0x1f40L

.field static final DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB:J = 0x2ee0L

.field static final DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

.field static final DEFAULT_COMPACT_THROTTLE_1:J = 0x1388L

.field static final DEFAULT_COMPACT_THROTTLE_2:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_3:J = 0x1f4L

.field static final DEFAULT_COMPACT_THROTTLE_4:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_5:J = 0x927c0L

.field static final DEFAULT_COMPACT_THROTTLE_6:J = 0x927c0L

.field static final DEFAULT_COMPACT_THROTTLE_MAX_OOM_ADJ:J = 0x3e7L

.field static final DEFAULT_COMPACT_THROTTLE_MIN_OOM_ADJ:J = 0x384L

.field static final DEFAULT_FREEZER_BINDER_ASYNC_THRESHOLD:I = 0x400

.field static final DEFAULT_FREEZER_BINDER_CALLBACK_ENABLED:Z = true

.field static final DEFAULT_FREEZER_BINDER_CALLBACK_THROTTLE:J = 0x2710L

.field static final DEFAULT_FREEZER_BINDER_DIVISOR:J = 0x4L

.field static final DEFAULT_FREEZER_BINDER_ENABLED:Z = true

.field static final DEFAULT_FREEZER_BINDER_OFFSET:I = 0x1f4

.field static final DEFAULT_FREEZER_BINDER_THRESHOLD:J = 0x3e8L

.field static final DEFAULT_FREEZER_DEBOUNCE_TIMEOUT:J = 0x2710L

.field static final DEFAULT_FREEZER_EXEMPT_INST_PKG:Z = false

.field static final DEFAULT_STATSD_SAMPLE_RATE:F = 0.1f

.field static final DEFAULT_USE_COMPACTION:Z = true

.field static final DEFAULT_USE_FREEZER:Z = true

.field static final ENABLE_SHARED_AND_CODE_COMPACT:Z = false

.field static final KEY_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_delta_rss_throttle_kb"

.field static final KEY_COMPACT_FULL_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_rss_throttle_kb"

.field static final KEY_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String; = "compact_proc_state_throttle"

.field static final KEY_COMPACT_STATSD_SAMPLE_RATE:Ljava/lang/String; = "compact_statsd_sample_rate"

.field static final KEY_COMPACT_THROTTLE_1:Ljava/lang/String; = "compact_throttle_1"

.field static final KEY_COMPACT_THROTTLE_2:Ljava/lang/String; = "compact_throttle_2"

.field static final KEY_COMPACT_THROTTLE_3:Ljava/lang/String; = "compact_throttle_3"

.field static final KEY_COMPACT_THROTTLE_4:Ljava/lang/String; = "compact_throttle_4"

.field static final KEY_COMPACT_THROTTLE_5:Ljava/lang/String; = "compact_throttle_5"

.field static final KEY_COMPACT_THROTTLE_6:Ljava/lang/String; = "compact_throttle_6"

.field static final KEY_COMPACT_THROTTLE_MAX_OOM_ADJ:Ljava/lang/String; = "compact_throttle_max_oom_adj"

.field static final KEY_COMPACT_THROTTLE_MIN_OOM_ADJ:Ljava/lang/String; = "compact_throttle_min_oom_adj"

.field static final KEY_FREEZER_BINDER_ASYNC_THRESHOLD:Ljava/lang/String; = "freeze_binder_async_threshold"

.field static final KEY_FREEZER_BINDER_CALLBACK_ENABLED:Ljava/lang/String; = "freeze_binder_callback_enabled"

.field static final KEY_FREEZER_BINDER_CALLBACK_THROTTLE:Ljava/lang/String; = "freeze_binder_callback_throttle"

.field static final KEY_FREEZER_BINDER_DIVISOR:Ljava/lang/String; = "freeze_binder_divisor"

.field static final KEY_FREEZER_BINDER_ENABLED:Ljava/lang/String; = "freeze_binder_enabled"

.field static final KEY_FREEZER_BINDER_OFFSET:Ljava/lang/String; = "freeze_binder_offset"

.field static final KEY_FREEZER_BINDER_THRESHOLD:Ljava/lang/String; = "freeze_binder_threshold"

.field static final KEY_FREEZER_DEBOUNCE_TIMEOUT:Ljava/lang/String; = "freeze_debounce_timeout"

.field static final KEY_FREEZER_EXEMPT_INST_PKG:Ljava/lang/String; = "freeze_exempt_inst_pkg"

.field static final KEY_FREEZER_STATSD_SAMPLE_RATE:Ljava/lang/String; = "freeze_statsd_sample_rate"

.field static final KEY_USE_COMPACTION:Ljava/lang/String; = "use_compaction"

.field static final KEY_USE_FREEZER:Ljava/lang/String; = "use_freezer"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

.field mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

.field volatile mCompactStatsdSampleRate:F

.field volatile mCompactThrottleFullFull:J

.field volatile mCompactThrottleFullSome:J

.field volatile mCompactThrottleMaxOomAdj:J

.field volatile mCompactThrottleMinOomAdj:J

.field volatile mCompactThrottleSomeFull:J

.field volatile mCompactThrottleSomeSome:J

.field mCompactionHandler:Landroid/os/Handler;

.field public mFreezeHandler:Landroid/os/Handler;

.field public final mFreezer:Lcom/android/server/am/Freezer;

.field volatile mFreezerBinderAsyncThreshold:I

.field volatile mFreezerBinderCallbackEnabled:Z

.field public mFreezerBinderCallbackLast:J

.field volatile mFreezerBinderCallbackThrottle:J

.field volatile mFreezerBinderDivisor:J

.field volatile mFreezerBinderEnabled:Z

.field volatile mFreezerBinderOffset:I

.field volatile mFreezerBinderThreshold:J

.field volatile mFreezerDebounceTimeout:J

.field public mFreezerDisableCount:I

.field volatile mFreezerExemptInstPkg:Z

.field public final mFreezerLock:Ljava/lang/Object;

.field public mFreezerOverride:Z

.field volatile mFreezerStatsdSampleRate:F

.field public final mFrozenProcesses:Landroid/util/SparseArray;

.field volatile mFullAnonRssThrottleKb:J

.field volatile mFullDeltaRssThrottleKb:J

.field public final mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mPendingCompactionProcesses:Ljava/util/ArrayList;

.field final mPhenotypeFlagLock:Ljava/lang/Object;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

.field final mProcStateThrottle:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

.field public final mRandom:Ljava/util/Random;

.field public final mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

.field public mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

.field public volatile mUseCompaction:Z

.field public volatile mUseFreezer:Z


# direct methods
.method public static synthetic $r8$lambda$-upOzpyY65gWLMI4KJxyfInRtPg(Ljava/lang/Exception;)V
    .registers 2

    .line 2472
    const-string p0, "ActivityManager"

    const-string v0, "Unable to parse binderfs stats"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$50-5szAMI3_Lo87NbZnc0_MNRnM(Lcom/android/server/am/CachedAppOptimizer;ILjava/lang/String;II)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/CachedAppOptimizer;->lambda$killProcess$2(ILjava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$JxGAByAESCLWWhMw0Ii9S5PJx-0(Lcom/android/server/am/CachedAppOptimizer;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->lambda$updateUseFreezer$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZH029cmpkk4u9PrurAANG_5gCdM(Lcom/android/server/am/CachedAppOptimizer;ZLcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->lambda$enableFreezer$0(ZLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jm2CpzGukzi3xkht-MuVyob5M48(Lcom/android/server/am/CachedAppOptimizer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->lambda$binderErrorInternal$3(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFreezeHandler(Lcom/android/server/am/CachedAppOptimizer;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFreezer(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/Freezer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFreezerOverride(Lcom/android/server/am/CachedAppOptimizer;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrozenProcesses(Lcom/android/server/am/CachedAppOptimizer;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcLocksReader(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/internal/os/ProcLocksReader;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTestCallback(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbinderErrorInternal(Lcom/android/server/am/CachedAppOptimizer;Landroid/util/IntArray;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->binderErrorInternal(Landroid/util/IntArray;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcompactSystem(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->compactSystem()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfreezeAppAsyncLSP(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/ProcessRecord;J)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostUidFrozenMessage(Lcom/android/server/am/CachedAppOptimizer;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->postUidFrozenMessage(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportOneUidFrozenStateChanged(Lcom/android/server/am/CachedAppOptimizer;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->reportOneUidFrozenStateChanged(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCompactStatsdSampleRate(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCompactionThrottles(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFreezerBinderState(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerBinderState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFreezerDebounceTimeout(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFreezerExemptInstPkg(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerExemptInstPkg()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFreezerStatsdSampleRate(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFullDeltaRssThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFullRssThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxOomAdjThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMaxOomAdjThrottle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMinOomAdjThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMinOomAdjThrottle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProcStateThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUseCompaction(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUseFreezer(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcompactProcess(II)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->compactProcess(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetMemoryFreedCompaction()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getMemoryFreedCompaction()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smgetUsedZramMemory()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getUsedZramMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smthreadCpuTimeNs()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->threadCpuTimeNs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smtraceAppFreeze(Ljava/lang/String;II)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->traceAppFreeze(Ljava/lang/String;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xb

    .line 294
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    .line 311
    const-string v0, "cached_apps_freezer"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 550
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>(Lcom/android/server/am/CachedAppOptimizer-IA;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V
    .registers 10

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 384
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 392
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    .line 394
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$1;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 432
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$2;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 476
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    const-wide/16 v0, 0x1388

    .line 480
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    const-wide/16 v0, 0x2710

    .line 482
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    const-wide/16 v2, 0x1f4

    .line 484
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 486
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    const-wide/16 v2, 0x384

    .line 488
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    const-wide/16 v2, 0x3e7

    .line 491
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    const/4 v2, 0x1

    .line 494
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    const/4 v3, 0x0

    .line 496
    iput-boolean v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 497
    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    .line 499
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    const v4, 0x3dcccccd    # 0.1f

    .line 500
    iput v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 502
    iput v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    const-wide/16 v4, 0x2ee0

    .line 503
    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v4, 0x1f40

    .line 506
    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 512
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    const-wide/16 v4, 0x4

    .line 514
    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    const/16 v4, 0x1f4

    .line 516
    iput v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    const-wide/16 v4, 0x3e8

    .line 518
    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    .line 520
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    .line 523
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    const/16 v4, 0x400

    .line 526
    iput v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    .line 537
    iput-boolean v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    const-wide/16 v4, -0x1

    .line 539
    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackLast:J

    .line 541
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 542
    iput-boolean v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    .line 556
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 557
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 558
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "CachedAppOptimizerThread"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 560
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 561
    iput-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 562
    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    .line 563
    new-instance p2, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    invoke-direct {p2, p0}, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    .line 564
    new-instance p2, Lcom/android/internal/os/ProcLocksReader;

    invoke-direct {p2}, Lcom/android/internal/os/ProcLocksReader;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    .line 565
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getFreezer()Lcom/android/server/am/Freezer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    return-void
.end method

.method private static native cancelCompaction()V
.end method

.method private static native compactNativeProcess(II)V
.end method

.method private static native compactProcess(II)V
.end method

.method private native compactSystem()V
.end method

.method private static native compactionFlagsValidForMemcg(I)Z
.end method

.method public static native getFreeSwapPercent()D
.end method

.method private static native getMemoryFreedCompaction()J
.end method

.method public static getUnfreezeReasonCodeFromOomAdjReason(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_4c

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0x21

    return p0

    :pswitch_8
    const/16 p0, 0x20

    return p0

    :pswitch_b
    const/16 p0, 0x1f

    return p0

    :pswitch_e
    const/16 p0, 0x1e

    return p0

    :pswitch_11
    const/16 p0, 0x1d

    return p0

    :pswitch_14
    const/16 p0, 0x1c

    return p0

    :pswitch_17
    const/16 p0, 0x1b

    return p0

    :pswitch_1a
    const/16 p0, 0x1a

    return p0

    :pswitch_1d
    const/16 p0, 0x19

    return p0

    :pswitch_20
    const/16 p0, 0x18

    return p0

    :pswitch_23
    const/16 p0, 0x17

    return p0

    :pswitch_26
    const/16 p0, 0x16

    return p0

    :pswitch_29
    const/16 p0, 0x15

    return p0

    :pswitch_2c
    const/16 p0, 0x14

    return p0

    :pswitch_2f
    const/16 p0, 0xc

    return p0

    :pswitch_32
    const/16 p0, 0xb

    return p0

    :pswitch_35
    const/16 p0, 0xa

    return p0

    :pswitch_38
    const/16 p0, 0x9

    return p0

    :pswitch_3b
    const/16 p0, 0x8

    return p0

    :pswitch_3e
    const/4 p0, 0x7

    return p0

    :pswitch_40
    const/4 p0, 0x6

    return p0

    :pswitch_42
    const/4 p0, 0x5

    return p0

    :pswitch_44
    const/4 p0, 0x4

    return p0

    :pswitch_46
    const/4 p0, 0x3

    return p0

    :pswitch_48
    const/4 p0, 0x2

    return p0

    :pswitch_4a
    const/4 p0, 0x1

    return p0

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_48
        :pswitch_46
        :pswitch_44
        :pswitch_42
        :pswitch_40
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

.method private static native getUsedZramMemory()J
.end method

.method private static native performNativeMemcgCompaction(III)V
.end method

.method private static native threadCpuTimeNs()J
.end method

.method public static traceAppFreeze(Ljava/lang/String;II)V
    .registers 5

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p2, :cond_a

    .line 1394
    const-string v1, "Freeze "

    goto :goto_c

    :cond_a
    const-string v1, "Unfreeze "

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 p1, 0x40

    .line 1393
    const-string v0, "Freezer"

    invoke-static {p1, p2, v0, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFrozenProcessListener(Lcom/android/server/am/ProcessRecord;Ljava/util/concurrent/Executor;Landroid/app/ActivityManagerInternal$FrozenProcessListener;)V
    .registers 4

    .line 2481
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->addFrozenProcessListener(Ljava/util/concurrent/Executor;Landroid/app/ActivityManagerInternal$FrozenProcessListener;)V

    return-void
.end method

.method public binderError(ILcom/android/server/am/ProcessRecord;III)V
    .registers 10

    .line 2391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_19

    const-string/jumbo p1, "null"

    goto :goto_1b

    :cond_19
    iget-object p1, p2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    :goto_1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sent binder code "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with flags "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and got error "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    iget-boolean p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz p1, :cond_64

    iget-boolean p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    if-nez p1, :cond_48

    goto :goto_64

    .line 2400
    :cond_48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 2401
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackLast:J

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    add-long/2addr v0, v2

    cmp-long p1, p3, v0

    if-gez p1, :cond_5b

    .line 2402
    const-string p0, "Too many transaction errors, throttling freezer binder callback."

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2405
    :cond_5b
    iput-wide p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackLast:J

    .line 2408
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_64
    :goto_64
    return-void
.end method

.method public final binderErrorInternal(Landroid/util/IntArray;)V
    .registers 10

    .line 2413
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_b

    :cond_6
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2415
    :goto_b
    const-string v1, "binderErrorSync"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v1, 0x0

    .line 2416
    :goto_13
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_58

    .line 2417
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 2419
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {v5, v4}, Lcom/android/server/am/Freezer;->getBinderFreezeInfo(I)I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_31

    .line 2422
    const-string v5, "Sync transaction while frozen"

    const/16 v6, 0xe

    const/16 v7, 0x14

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/am/CachedAppOptimizer;->killProcess(ILjava/lang/String;II)V

    goto :goto_55

    :cond_31
    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_55

    if-eqz v0, :cond_55

    .line 2432
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3e} :catch_3f

    goto :goto_55

    .line 2441
    :catch_3f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to query binder frozen stats for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2444
    :cond_58
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v0, :cond_83

    .line 2451
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_64

    goto :goto_83

    .line 2455
    :cond_64
    const-string p1, "binderErrorAsync"

    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2456
    new-instance p1, Lcom/android/internal/os/BinderfsStatsReader;

    invoke-direct {p1}, Lcom/android/internal/os/BinderfsStatsReader;-><init>()V

    .line 2458
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda2;-><init>(Landroid/util/ArraySet;)V

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    new-instance p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda4;-><init>()V

    .line 2456
    invoke-virtual {p1, v1, v0, p0}, Lcom/android/internal/os/BinderfsStatsReader;->handleFreeAsyncSpace(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    .line 2473
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_83
    :goto_83
    return-void
.end method

.method public cancelAllCompactions(Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V
    .registers 5

    .line 1435
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1436
    :goto_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1442
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompactionForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V

    goto :goto_6

    :catchall_1b
    move-exception p0

    goto :goto_27

    .line 1444
    :cond_1d
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1445
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public cancelCompactionForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V
    .registers 6

    .line 1451
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 1452
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 1453
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v2, v1

    .line 1456
    :cond_15
    sget v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-ne v0, p1, :cond_1f

    .line 1457
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompaction()V

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    if-eqz v1, :cond_27

    .line 1461
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {p0, p2}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionCancelled(Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V

    :cond_27
    return-void
.end method

.method public compactAllSystem()V
    .registers 5

    .line 737
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 741
    const-string v0, "Compaction"

    const-string v1, "compactAllSystem"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method

.method public compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)Z
    .registers 8

    .line 693
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactSource(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V

    .line 694
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_51

    .line 696
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_51

    .line 699
    :cond_16
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    if-nez v1, :cond_1b

    return v0

    .line 702
    :cond_1b
    iget-object v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    if-eqz v1, :cond_20

    goto :goto_22

    :cond_20
    const-string v1, ""

    .line 703
    :goto_22
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v2, p3, p2, v1}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionRequested(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Ljava/lang/String;)V

    .line 705
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result p2

    if-nez p2, :cond_51

    .line 711
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 712
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p2, p4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceCompact(Z)V

    .line 713
    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 715
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result p1

    .line 714
    invoke-virtual {p0, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return p3

    :cond_51
    :goto_51
    return v0
.end method

.method public compactNative(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    .registers 4

    .line 730
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 731
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    .line 732
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 731
    invoke-virtual {p0, v0, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_14
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 616
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dumpCompact(Ljava/io/PrintWriter;)V

    .line 617
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dumpFreezer(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpCompact(Ljava/io/PrintWriter;)V
    .registers 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 622
    const-string v0, "Compaction settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_compaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_min_oom_adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_max_oom_adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_delta_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_proc_state_throttle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Integer;

    .line 637
    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    monitor-exit v0
    :try_end_106
    .catchall {:try_start_8 .. :try_end_106} :catchall_172

    .line 640
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    if-eqz v0, :cond_10d

    .line 642
    invoke-virtual {v0, p1}, Lcom/android/server/am/compaction/CompactionStatsManager;->dump(Ljava/io/PrintWriter;)V

    .line 645
    :cond_10d
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 646
    :try_start_113
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_165

    .line 647
    const-string v0, "  Pending compactions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_126
    if-ge v3, v0, :cond_165

    .line 650
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". hasPendingCompact: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 652
    invoke-virtual {v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 651
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_126

    :catchall_163
    move-exception p0

    goto :goto_16d

    .line 655
    :cond_165
    monitor-exit v1
    :try_end_166
    .catchall {:try_start_113 .. :try_end_166} :catchall_163

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 656
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    .line 655
    :goto_16d
    :try_start_16d
    monitor-exit v1
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_163

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_172
    move-exception p0

    .line 638
    :try_start_173
    monitor-exit v0
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_172

    throw p0
.end method

.method public dumpFreezer(Ljava/io/PrintWriter;)V
    .registers 10
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 661
    const-string v0, "Freezer settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_freezer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_debounce_timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_exempt_inst_pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_binder_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_binder_threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_binder_divisor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_binder_offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_binder_callback_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_binder_callback_throttle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_binder_async_threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_100
    .catchall {:try_start_8 .. :try_end_100} :catchall_170

    .line 678
    :try_start_100
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Apps frozen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_11b
    if-ge v3, v2, :cond_16a

    .line 681
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 682
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeSticky()Z

    move-result v4

    if-eqz v4, :cond_15b

    const-string v4, " (sticky)"

    goto :goto_15d

    :catchall_159
    move-exception p0

    goto :goto_172

    :cond_15b
    const-string v4, ""

    :goto_15d
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 682
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11b

    .line 686
    :cond_16a
    monitor-exit v1
    :try_end_16b
    .catchall {:try_start_100 .. :try_end_16b} :catchall_159

    :try_start_16b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 687
    monitor-exit v0
    :try_end_16f
    .catchall {:try_start_16b .. :try_end_16f} :catchall_170

    return-void

    :catchall_170
    move-exception p0

    goto :goto_177

    .line 686
    :goto_172
    :try_start_172
    monitor-exit v1
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_159

    :try_start_173
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 687
    :goto_177
    monitor-exit v0
    :try_end_178
    .catchall {:try_start_173 .. :try_end_178} :catchall_170

    throw p0
.end method

.method public declared-synchronized enableFreezer(Z)Z
    .registers 8

    monitor-enter p0

    .line 812
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 813
    monitor-exit p0

    return v1

    :cond_8
    const/4 v0, 0x1

    if-eqz p1, :cond_24

    .line 817
    :try_start_b
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_22

    if-lez v2, :cond_14

    .line 820
    monitor-exit p0

    return v0

    :cond_14
    if-gez v2, :cond_2d

    .line 822
    :try_start_16
    const-string p1, "ActivityManager"

    const-string/jumbo v0, "unbalanced call to enableFreezer, ignoring"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_22

    .line 824
    monitor-exit p0

    return v1

    :catchall_22
    move-exception p1

    goto :goto_78

    .line 827
    :cond_24
    :try_start_24
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_22

    if-le v1, v0, :cond_2d

    .line 830
    monitor-exit p0

    return v0

    .line 835
    :cond_2d
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_22

    .line 836
    :try_start_33
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_6b

    xor-int/lit8 v3, p1, 0x1

    .line 837
    :try_start_3b
    iput-boolean v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    .line 838
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freezer override set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v4, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 860
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_3b .. :try_end_62} :catchall_6d

    :try_start_62
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 861
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_6b

    :try_start_66
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_22

    .line 863
    monitor-exit p0

    return v0

    :catchall_6b
    move-exception p1

    goto :goto_73

    :catchall_6d
    move-exception p1

    .line 860
    :try_start_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1

    .line 861
    :goto_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_6b

    :try_start_74
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    :goto_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_22

    throw p1
.end method

.method public forceFreezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 1153
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(Lcom/android/server/am/ProcessRecord;JZ)V

    return-void
.end method

.method public forceFreezeForTest(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 6

    .line 2368
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2369
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_22

    if-eqz p2, :cond_14

    .line 2371
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->forceFreezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_19

    :catchall_12
    move-exception p0

    goto :goto_24

    :cond_14
    const/4 p2, 0x0

    const/4 v2, 0x1

    .line 2373
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 2375
    :goto_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_12

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2376
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception p0

    goto :goto_29

    .line 2375
    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_12

    :try_start_25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2376
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public freezeAppAsyncAtEarliestLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1163
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;J)V

    return-void
.end method

.method public final freezeAppAsyncInternalLSP(Lcom/android/server/am/ProcessRecord;JZ)V
    .registers 10

    .line 1176
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1177
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v1, :cond_20

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_28

    .line 1182
    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    invoke-virtual {p2, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1183
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1190
    :cond_20
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeSticky()Z

    move-result v1

    if-eqz v1, :cond_29

    if-nez p4, :cond_29

    :cond_28
    return-void

    .line 1199
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result p4

    const/16 v1, 0x384

    if-lt p4, v1, :cond_3c

    .line 1200
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p4

    if-eqz p4, :cond_3c

    const/16 v1, 0x28

    .line 1203
    :try_start_39
    invoke-interface {p4, v1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3c

    .line 1209
    :catch_3c
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->reportProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1210
    iget-object p4, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p4, p2, p3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastUsedTimeout(J)V

    .line 1211
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    .line 1212
    invoke-virtual {p0, v4, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1211
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1214
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    return-void
.end method

.method public freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 1148
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;J)V

    return-void
.end method

.method public final freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;J)V
    .registers 5

    const/4 v0, 0x0

    .line 1158
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(Lcom/android/server/am/ProcessRecord;JZ)V

    return-void
.end method

.method public init()V
    .registers 5

    .line 574
    const-string v0, "activity_manager"

    .line 575
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 574
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 576
    const-string v0, "activity_manager_native_boot"

    .line 578
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 576
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 580
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 582
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_31
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    .line 584
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    .line 585
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    .line 586
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    .line 587
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    .line 588
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    .line 589
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    .line 590
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    .line 591
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMinOomAdjThrottle()V

    .line 592
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMaxOomAdjThrottle()V

    .line 593
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public isProcessFrozen(I)Z
    .registers 3

    .line 1539
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1540
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p0

    :catchall_11
    move-exception p0

    .line 1541
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public killProcess(ILjava/lang/String;II)V
    .registers 12

    .line 2350
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/CachedAppOptimizer;ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$binderErrorInternal$3(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5

    .line 2462
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    if-ge v0, v1, :cond_39

    .line 2463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " free async space, killing"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xe

    const/16 v0, 0x1f

    const-string v1, "Async binder space running out while frozen"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/am/CachedAppOptimizer;->killProcess(ILjava/lang/String;II)V

    :cond_39
    return-void
.end method

.method public final synthetic lambda$enableFreezer$0(ZLcom/android/server/am/ProcessRecord;)V
    .registers 5

    if-nez p2, :cond_3

    goto :goto_2b

    .line 845
    :cond_3
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz p1, :cond_1a

    .line 846
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasFreezerOverride()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 847
    invoke-static {p2}, Lcom/android/server/am/OomAdjuster;->getFreezePolicy(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 848
    invoke-virtual {p0, p2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_16
    const/4 v1, 0x0

    .line 850
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    :cond_1a
    if-nez p1, :cond_2b

    .line 853
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_2b

    const/16 p1, 0x13

    .line 854
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V

    const/4 p0, 0x1

    .line 857
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final synthetic lambda$killProcess$2(ILjava/lang/String;II)V
    .registers 7

    .line 2351
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2352
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_32

    .line 2353
    :try_start_c
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_29

    .line 2355
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result p1

    if-nez p1, :cond_29

    const/4 p1, 0x1

    .line 2356
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_34

    .line 2358
    :cond_29
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_27

    :try_start_2a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2359
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_32
    move-exception p0

    goto :goto_39

    .line 2358
    :goto_34
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_27

    :try_start_35
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2359
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$updateUseFreezer$1(Z)V
    .registers 3

    .line 890
    const-string v0, "ActivityManager"

    if-eqz p1, :cond_31

    .line 891
    const-string p1, "Freezer enabled"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 892
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 894
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 895
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 898
    :cond_1a
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    if-nez p1, :cond_26

    .line 899
    new-instance p1, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer-IA;)V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    .line 902
    :cond_26
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void

    .line 905
    :cond_31
    const-string p1, "Freezer disabled"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 906
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return-void
.end method

.method public onCleanupApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 1402
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v0, :cond_43

    .line 1403
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1404
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 1406
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1407
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1410
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 1412
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_2a

    .line 1413
    invoke-virtual {v0, p1}, Lcom/android/server/am/UidRecord;->areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v2, v3

    .line 1414
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->isFrozen()Z

    move-result v1

    if-eq v2, v1, :cond_3a

    .line 1415
    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setFrozen(Z)V

    .line 1416
    invoke-virtual {v0}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->postUidFrozenMessage(IZ)V

    .line 1420
    :cond_3a
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_43
    return-void
.end method

.method public onOomAdjustChanged(IILcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 1473
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    if-eqz v0, :cond_11

    if-ge p2, p1, :cond_11

    const/16 p1, 0x384

    if-ge p2, p1, :cond_11

    .line 1477
    sget-object p1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->OOM_IMPROVEMENT:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompactionForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V

    :cond_11
    return-void
.end method

.method public onProcessFrozen(Lcom/android/server/am/ProcessRecord;)V
    .registers 7

    .line 1486
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1487
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1489
    :try_start_c
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_22

    .line 1490
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->APP:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)Z

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_27

    .line 1492
    :cond_22
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_2c

    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1494
    :cond_2c
    :goto_2c
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->onProcessFrozen()V

    return-void
.end method

.method public onProcessFrozenCancelled(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 1501
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->onProcessFrozenCancelled()V

    return-void
.end method

.method public onWakefulnessChanged(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 1426
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1429
    sget-object p1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->SCREEN_ON:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->cancelAllCompactions(Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V

    :cond_e
    return-void
.end method

.method public final parseProcStateThrottle(Ljava/lang/String;)Z
    .registers 8

    .line 1098
    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1099
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1100
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_39

    aget-object v3, p1, v2

    .line 1102
    :try_start_12
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1f} :catch_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1104
    :catch_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to parse default app compaction proc state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_39
    const/4 p0, 0x1

    return p0
.end method

.method public final postUidFrozenMessage(IZ)V
    .registers 5

    .line 1916
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1917
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 1920
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final reportOneUidFrozenStateChanged(IZ)V
    .registers 3

    .line 1905
    filled-new-array {p1}, [I

    move-result-object p1

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    goto :goto_9

    :cond_8
    const/4 p2, 0x2

    .line 1906
    :goto_9
    filled-new-array {p2}, [I

    move-result-object p2

    .line 1912
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->reportUidFrozenStateChanged([I[I)V

    return-void
.end method

.method public final reportProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 1926
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->onProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public resolveCompactionProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .registers 7

    .line 1509
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, v0, :cond_18

    .line 1510
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    move-result-wide v1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    cmpg-double v1, v1, v3

    if-gez v1, :cond_18

    .line 1513
    sget-object p1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 1514
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {p0}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionDowngrade()V

    .line 1524
    :cond_18
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, p0, :cond_1f

    .line 1525
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object p0

    :cond_1f
    if-ne p1, v0, :cond_24

    .line 1527
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object p0

    :cond_24
    return-object p1
.end method

.method public final unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;IZ)Z
    .registers 15

    .line 1229
    const-string v0, " "

    const-string v1, "ActivityManager"

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    .line 1230
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1231
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeSticky()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_14

    if-nez p3, :cond_14

    return v5

    .line 1242
    :cond_14
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result p3

    const/4 v4, 0x1

    if-eqz p3, :cond_29

    .line 1244
    iget-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {p3, v6, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1245
    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1246
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->reportProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V

    move p3, v4

    goto :goto_2a

    :cond_29
    move p3, v5

    .line 1253
    :goto_2a
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 1254
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->isFrozen()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1255
    invoke-virtual {v6, v5}, Lcom/android/server/am/UidRecord;->setFrozen(Z)V

    .line 1256
    invoke-virtual {v6}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lcom/android/server/am/CachedAppOptimizer;->postUidFrozenMessage(IZ)V

    .line 1259
    :cond_40
    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    if-eqz v2, :cond_173

    .line 1260
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v6

    if-nez v6, :cond_4d

    goto/16 :goto_173

    :cond_4d
    const/16 v6, 0x13

    const/16 v7, 0xe

    .line 1269
    :try_start_51
    iget-object v8, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {v8, v2}, Lcom/android/server/am/Freezer;->getBinderFreezeInfo(I)I

    move-result v8

    and-int/2addr v8, v4

    if-eqz v8, :cond_86

    .line 1272
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " received sync transactions while frozen, killing"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const-string v8, "Sync transaction while in frozen state"

    const/16 v9, 0x14

    invoke-virtual {p1, v8, v7, v9, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_83} :catch_84

    goto :goto_b1

    :catch_84
    move-exception v8

    goto :goto_88

    :cond_86
    move v8, v5

    goto :goto_b2

    .line 1285
    :goto_88
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to query binder frozen info for pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Killing it. Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const-string v8, "Unable to query binder frozen stats"

    invoke-virtual {p1, v8, v7, v6, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    :goto_b1
    move v8, v4

    :goto_b2
    if-eqz v8, :cond_b5

    return v5

    :cond_b5
    if-nez p3, :cond_ba

    .line 1297
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->reportProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1300
    :cond_ba
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v8

    .line 1303
    :try_start_be
    iget-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {p3, v2, v5, v5}, Lcom/android/server/am/Freezer;->freezeBinder(IZI)I
    :try_end_c3
    .catch Ljava/lang/RuntimeException; {:try_start_be .. :try_end_c3} :catch_14d

    .line 1314
    :try_start_c3
    iget-object p3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-static {p3, v2, p2}, Lcom/android/server/am/CachedAppOptimizer;->traceAppFreeze(Ljava/lang/String;II)V

    .line 1315
    iget-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    iget v6, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {p3, v2, v6, v5}, Lcom/android/server/am/Freezer;->setProcessFrozen(IIZ)V

    .line 1317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeUnfreezeTime(J)V

    .line 1318
    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFrozen(Z)V

    .line 1319
    iget-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->delete(I)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_de} :catch_df

    goto :goto_100

    .line 1321
    :catch_df
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to unfreeze "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". This might cause inconsistency or UI hangs."

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :goto_100
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result p3

    if-nez p3, :cond_14c

    .line 1326
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sync unfroze "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    .line 1331
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    const-wide/32 v5, 0x7fffffff

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    new-instance v0, Landroid/util/Pair;

    .line 1332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 1329
    invoke-virtual {p0, p1, v2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1328
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v4

    :cond_14c
    return v5

    .line 1305
    :catch_14d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to unfreeze binder for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Killing it"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const-string p0, "Unable to unfreeze"

    invoke-virtual {p1, p0, v7, v6, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    :cond_173
    :goto_173
    return v5
.end method

.method public unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1351
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    return-void
.end method

.method public unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V
    .registers 5

    .line 1341
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1342
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;IZ)Z

    move-result p0

    .line 1343
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    if-eqz p0, :cond_f

    .line 1345
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->dispatchUnfrozenEvent()V

    :cond_f
    return-void

    :catchall_10
    move-exception p0

    .line 1343
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public unfreezeProcess(II)V
    .registers 8

    .line 1363
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1364
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_11

    .line 1366
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_78

    .line 1368
    :cond_11
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "quick sync unfreeze "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_f

    .line 1370
    :try_start_30
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v3}, Lcom/android/server/am/Freezer;->freezeBinder(IZI)I
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_36} :catch_60
    .catchall {:try_start_30 .. :try_end_36} :catchall_f

    .line 1377
    :try_start_36
    iget-object v2, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->traceAppFreeze(Ljava/lang/String;II)V

    .line 1378
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    iget p2, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/am/Freezer;->setProcessFrozen(IIZ)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_43
    .catchall {:try_start_36 .. :try_end_42} :catchall_f

    goto :goto_59

    .line 1380
    :catch_43
    :try_start_43
    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to quick unfreeze "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_f

    .line 1383
    iget-object p0, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->dispatchUnfrozenEvent()V

    return-void

    .line 1372
    :catch_60
    :try_start_60
    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to quick unfreeze binder for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    monitor-exit v0

    return-void

    .line 1382
    :goto_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_60 .. :try_end_79} :catchall_f

    throw p0
.end method

.method public unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V
    .registers 5

    .line 1128
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;IJ)V

    return-void
.end method

.method public unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;IJ)V
    .registers 7

    .line 1134
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v0, :cond_31

    .line 1135
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1137
    :try_start_a
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide p3

    .line 1138
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_2c

    .line 1139
    :cond_21
    :goto_21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 1140
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 1142
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_31
    return-void
.end method

.method public final updateCompactStatsdSampleRate()V
    .registers 4

    .line 974
    const-string v0, "compact_statsd_sample_rate"

    const v1, 0x3dcccccd    # 0.1f

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    const/4 v0, 0x0

    .line 976
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    return-void
.end method

.method public final updateCompactionThrottles()V
    .registers 10

    .line 915
    const-string v0, "compact_throttle_1"

    .line 916
    const-string v1, "activity_manager"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 918
    const-string v2, "compact_throttle_2"

    .line 919
    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 921
    const-string v3, "compact_throttle_3"

    .line 922
    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 924
    const-string v4, "compact_throttle_4"

    .line 925
    invoke-static {v1, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 927
    const-string v5, "compact_throttle_5"

    .line 928
    invoke-static {v1, v5}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 930
    const-string v6, "compact_throttle_6"

    .line 931
    invoke-static {v1, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 933
    const-string v7, "compact_throttle_min_oom_adj"

    .line 934
    invoke-static {v1, v7}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 936
    const-string v8, "compact_throttle_max_oom_adj"

    .line 937
    invoke-static {v1, v8}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 940
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8c

    .line 941
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8c

    .line 942
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8c

    .line 943
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 944
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 945
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 946
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_8c

    .line 951
    :cond_63
    :try_start_63
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 952
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 953
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 954
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 955
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 956
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_8b} :catch_8c

    return-void

    :catch_8c
    :cond_8c
    :goto_8c
    const-wide/16 v0, 0x1388

    .line 963
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    const-wide/16 v0, 0x2710

    .line 964
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    const-wide/16 v2, 0x1f4

    .line 965
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 966
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    const-wide/16 v0, 0x384

    .line 967
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    const-wide/16 v0, 0x3e7

    .line 968
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    return-void
.end method

.method public final updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J
    .registers 8

    .line 1119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1120
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1121
    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getEarliestFreezableTime()J

    move-result-wide v2

    add-long/2addr p2, v0

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 1120
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setEarliestFreezableTime(J)V

    .line 1122
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getEarliestFreezableTime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public final updateFreezerBinderState()V
    .registers 6

    .line 1067
    const-string v0, "activity_manager_native_boot"

    const-string v1, "freeze_binder_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    .line 1070
    const-string v1, "freeze_binder_divisor"

    const-wide/16 v3, 0x4

    invoke-static {v0, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    .line 1073
    const-string v1, "freeze_binder_offset"

    const/16 v3, 0x1f4

    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    .line 1076
    const-string v1, "freeze_binder_threshold"

    const-wide/16 v3, 0x3e8

    invoke-static {v0, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    .line 1079
    const-string v1, "freeze_binder_callback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    .line 1082
    const-string v1, "freeze_binder_callback_throttle"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    .line 1085
    const-string v1, "freeze_binder_async_threshold"

    const/16 v2, 0x400

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freezer binder state set to enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", divisor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callback enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callback throttle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", async threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateFreezerDebounceTimeout()V
    .registers 7

    .line 1047
    const-string v0, "activity_manager_native_boot"

    const-string v1, "freeze_debounce_timeout"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 1051
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_16

    .line 1052
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 1054
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freezer timeout set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateFreezerExemptInstPkg()V
    .registers 4

    .line 1059
    const-string v0, "freeze_exempt_inst_pkg"

    const/4 v1, 0x0

    const-string v2, "activity_manager_native_boot"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freezer exemption set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateFreezerStatsdSampleRate()V
    .registers 4

    .line 981
    const-string v0, "freeze_statsd_sample_rate"

    const v1, 0x3dcccccd    # 0.1f

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    const/4 v0, 0x0

    .line 983
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    return-void
.end method

.method public final updateFullDeltaRssThrottle()V
    .registers 7

    .line 999
    const-string v0, "activity_manager"

    const-string v1, "compact_full_delta_rss_throttle_kb"

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 1002
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_16

    .line 1003
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    :cond_16
    return-void
.end method

.method public final updateFullRssThrottle()V
    .registers 7

    .line 988
    const-string v0, "activity_manager"

    const-string v1, "compact_full_rss_throttle_kb"

    const-wide/16 v2, 0x2ee0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 992
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_16

    .line 993
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    :cond_16
    return-void
.end method

.method public final updateMaxOomAdjThrottle()V
    .registers 5

    .line 1036
    const-string v0, "activity_manager"

    const-string v1, "compact_throttle_max_oom_adj"

    const-wide/16 v2, 0x3e7

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 1040
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 1041
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    :cond_14
    return-void
.end method

.method public final updateMinOomAdjThrottle()V
    .registers 5

    .line 1025
    const-string v0, "activity_manager"

    const-string v1, "compact_throttle_min_oom_adj"

    const-wide/16 v2, 0x384

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 1029
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 1030
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    :cond_14
    return-void
.end method

.method public final updateProcStateThrottle()V
    .registers 5

    .line 1009
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    const-string v1, "activity_manager"

    const-string v2, "compact_proc_state_throttle"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-virtual {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 1013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse app compact proc state throttle \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" falling back to default."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_45

    .line 1016
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse default app compact proc state throttle "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method

.method public final updateUseCompaction()V
    .registers 4

    .line 790
    const-string/jumbo v0, "use_compaction"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 793
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    if-nez v0, :cond_39

    .line 794
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_21

    .line 795
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 798
    :cond_21
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer-IA;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 799
    invoke-static {}, Lcom/android/server/am/compaction/CompactionStatsManager;->getInstance()Lcom/android/server/am/compaction/CompactionStatsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    .line 801
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    :cond_39
    return-void
.end method

.method public final updateUseFreezer()V
    .registers 5

    .line 872
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cached_apps_freezer"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    const-string v1, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 876
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    goto :goto_40

    .line 877
    :cond_1a
    const-string v1, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string/jumbo v0, "use_freezer"

    const/4 v1, 0x1

    .line 878
    const-string v3, "activity_manager_native_boot"

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_32

    .line 884
    :cond_2f
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    goto :goto_40

    .line 880
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {v0}, Lcom/android/server/am/Freezer;->isFreezerSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 881
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    .line 882
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerExemptInstPkg()V

    .line 887
    :goto_40
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 889
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public useCompaction()Z
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 602
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public useFreezer()Z
    .registers 2

    .line 609
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 611
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
