.class public final Lcom/android/server/am/CachedAppOptimizer;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;,
        Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;,
        Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;,
        Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;,
        Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;,
        Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;,
        Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    }
.end annotation


# static fields
.field static final ASYNC_RECEIVED_WHILE_FROZEN:I = 0x2

.field private static final ATRACE_COMPACTION_TRACK:Ljava/lang/String; = "Compaction"

.field static final CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

.field private static final COMPACT_ACTION_ANON:I = 0x2

.field private static final COMPACT_ACTION_ANON_FLAG:I = 0x2

.field private static final COMPACT_ACTION_FILE:I = 0x1

.field private static final COMPACT_ACTION_FILE_FLAG:I = 0x1

.field private static final COMPACT_ACTION_FULL:I = 0x3

.field private static final COMPACT_ACTION_NONE:I = 0x0

.field private static final COMPACT_ACTION_STRING:[Ljava/lang/String;

.field static final COMPACT_DOWNGRADE_FREE_SWAP_THRESHOLD:D = 0.2

.field static final COMPACT_FREEZE_PROCESS_MSG:I = 0x5

.field static final COMPACT_PROCESS_BFGS:I = 0x4

.field static final COMPACT_PROCESS_FULL:I = 0x2

.field static final COMPACT_PROCESS_MSG:I = 0x1

.field static final COMPACT_PROCESS_PERSISTENT:I = 0x3

.field static final COMPACT_PROCESS_SOME:I = 0x1

.field static final COMPACT_SYSTEM_MSG:I = 0x2

.field static final COMPACT_ZRAM_FREEKB_THROTTLE:J = 0x19000L

.field static final DEFAULT_COMPACT_ACTION_1:I = 0x1

.field static final DEFAULT_COMPACT_ACTION_2:I = 0x3

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

.field static final DEFAULT_FREEZER_DEBOUNCE_TIMEOUT:J = 0x927c0L

.field static final DEFAULT_STATSD_SAMPLE_RATE:F = 0.1f

.field static final DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

.field static final DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

.field static final DO_FREEZE:I = 0x1

.field static final KEY_COMPACTION_PRIORITY:Ljava/lang/String; = "compaction_priority"

.field static final KEY_COMPACT_ACTION_1:Ljava/lang/String; = "compact_action_1"

.field static final KEY_COMPACT_ACTION_2:Ljava/lang/String; = "compact_action_2"

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

.field static final KEY_DEBUG_COMPACTION:Ljava/lang/String; = "debug_compaction"

.field static final KEY_FREEZER_DEBOUNCE_TIMEOUT:Ljava/lang/String; = "freeze_debounce_timeout"

.field static final KEY_FREEZER_STATSD_SAMPLE_RATE:Ljava/lang/String; = "freeze_statsd_sample_rate"

.field static final KEY_USE_COMPACTION:Ljava/lang/String; = "use_compaction"

.field static final KEY_USE_FREEZER:Ljava/lang/String; = "use_freezer"

.field static final REPORT_UNFREEZE:I = 0x2

.field static final REPORT_UNFREEZE_MSG:I = 0x4

.field private static final RSS_ANON_INDEX:I = 0x2

.field private static final RSS_FILE_INDEX:I = 0x1

.field private static final RSS_SWAP_INDEX:I = 0x3

.field private static final RSS_TOTAL_INDEX:I = 0x0

.field static final SET_FROZEN_PROCESS_MSG:I = 0x3

.field static final SYNC_RECEIVED_WHILE_FROZEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MFZ"

.field static final TXNS_PENDING_WHILE_FROZEN:I = 0x4

.field public static mPerf:Landroid/util/BoostFramework;


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mBfgsCompactRequest:J

.field private mBfgsCompactionCount:I

.field final mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

.field volatile mCompactActionFull:I

.field volatile mCompactActionSome:I

.field volatile mCompactStatsdSampleRate:F

.field volatile mCompactThrottleBFGS:J

.field volatile mCompactThrottleFullFull:J

.field volatile mCompactThrottleFullSome:J

.field volatile mCompactThrottleMaxOomAdj:J

.field volatile mCompactThrottleMinOomAdj:J

.field volatile mCompactThrottlePersistent:J

.field volatile mCompactThrottleSomeFull:J

.field volatile mCompactThrottleSomeSome:J

.field mCompactionHandler:Landroid/os/Handler;

.field public volatile mCompactionPriority:I

.field private volatile mDebugCompaction:Z

.field private mFreezeHandler:Landroid/os/Handler;

.field volatile mFreezerDebounceTimeout:J

.field private mFreezerDisableCount:I

.field private final mFreezerLock:Ljava/lang/Object;

.field private mFreezerOverride:Z

.field volatile mFreezerStatsdSampleRate:F

.field private final mFrozenProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field volatile mFullAnonRssThrottleKb:J

.field private mFullCompactRequest:J

.field private mFullCompactionCount:I

.field volatile mFullDeltaRssThrottleKb:J

.field mLastCompactionStats:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mPendingCompactionProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistentCompactRequest:J

.field private mPersistentCompactionCount:I

.field private final mPhenotypeFlagLock:Ljava/lang/Object;

.field private mProcCompactionsMiscThrottled:J

.field private mProcCompactionsNoPidThrottled:J

.field private mProcCompactionsOomAdjThrottled:J

.field private mProcCompactionsPerformed:J

.field private mProcCompactionsRSSThrottled:J

.field private mProcCompactionsRequested:J

.field private mProcCompactionsTimeThrottled:J

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

.field final mProcStateThrottle:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

.field private final mRandom:Ljava/util/Random;

.field private final mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

.field private mSomeCompactRequest:J

.field private mSomeCompactionCount:I

.field private mSystemCompactionsPerformed:J

.field private mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

.field private volatile mUseCompaction:Z

.field private volatile mUseFreezer:Z

.field private use_boot_compact:Z

.field private use_memoryfreeze_compact:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBfgsCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreezeHandler(Lcom/android/server/am/CachedAppOptimizer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreezerOverride(Lcom/android/server/am/CachedAppOptimizer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrozenProcesses(Lcom/android/server/am/CachedAppOptimizer;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFullCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPersistentCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhenotypeFlagLock(Lcom/android/server/am/CachedAppOptimizer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcCompactionsMiscThrottled(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsMiscThrottled:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProcCompactionsNoPidThrottled(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsNoPidThrottled:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProcCompactionsOomAdjThrottled(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsOomAdjThrottled:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProcCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsPerformed:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProcCompactionsRSSThrottled(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRSSThrottled:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProcCompactionsRequested(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRequested:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProcCompactionsTimeThrottled(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsTimeThrottled:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcLocksReader(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/internal/os/ProcLocksReader;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSomeCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSystemCompactionsPerformed:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTestCallback(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBfgsCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFullCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPersistentCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProcCompactionsMiscThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsMiscThrottled:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProcCompactionsNoPidThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsNoPidThrottled:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProcCompactionsOomAdjThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsOomAdjThrottled:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProcCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsPerformed:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProcCompactionsRSSThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRSSThrottled:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProcCompactionsRequested(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRequested:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProcCompactionsTimeThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsTimeThrottled:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSomeCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSystemCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mSystemCompactionsPerformed:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mcompactSystem(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->compactSystem()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCompactStatsdSampleRate(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCompactionActions(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionActions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCompactionThrottles(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFreezerDebounceTimeout(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFreezerStatsdSampleRate(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFullDeltaRssThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFullRssThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMaxOomAdjThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMaxOomAdjThrottle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMinOomAdjThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMinOomAdjThrottle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateProcStateThrottle(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUseCompaction(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUseFreezer(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCOMPACT_ACTION_STRING()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->COMPACT_ACTION_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcancelCompaction()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompaction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcompactProcess(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->compactProcess(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smfreezeBinder(IZ)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetBinderFreezeInfo(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->getBinderFreezeInfo(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smswitchQuickCompactMode(Z)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->switchQuickCompactMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 112
    const-string v0, ""

    const-string v1, "file"

    const-string v2, "anon"

    const-string v3, "all"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->COMPACT_ACTION_STRING:[Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 131
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

    .line 149
    nop

    .line 150
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    .line 153
    const-string v0, "cached_apps_freezer"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    .line 392
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 395
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;

    invoke-direct {v0}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V

    .line 396
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V
    .registers 10
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "callback"    # Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    .param p3, "processDependencies"    # Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string/jumbo v0, "persist.sys.use_boot_compact"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->use_boot_compact:Z

    .line 125
    const-string/jumbo v0, "persist.sys.mfz.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->use_memoryfreeze_compact:Z

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    .line 227
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$1;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 270
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$2;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 304
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 307
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:I

    .line 309
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:I

    .line 311
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 313
    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 315
    const-wide/16 v4, 0x1f4

    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 317
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 319
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 321
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    .line 323
    const-wide/16 v4, 0x384

    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 326
    const-wide/16 v4, 0x3e7

    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 329
    sget-object v4, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 330
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 331
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    iput-boolean v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    .line 332
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 333
    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    .line 335
    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionPriority:I

    .line 336
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    .line 337
    const v4, 0x3dcccccd    # 0.1f

    iput v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 339
    iput v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 340
    const-wide/16 v4, 0x2ee0

    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 343
    const-wide/16 v4, 0x1f40

    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 353
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    .line 356
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 362
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/CachedAppOptimizer$3;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 401
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 402
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 403
    new-instance v1, Lcom/android/server/ServiceThread;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionPriority:I

    const-string v3, "CachedAppOptimizerThread"

    invoke-direct {v1, v3, v2, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 405
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 406
    iput-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 407
    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    .line 408
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    .line 409
    new-instance v0, Lcom/android/internal/os/ProcLocksReader;

    invoke-direct {v0}, Lcom/android/internal/os/ProcLocksReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    .line 410
    return-void
.end method

.method private static native cancelCompaction()V
.end method

.method static compactActionIntToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "action"    # I

    .line 1220
    if-ltz p0, :cond_b

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->COMPACT_ACTION_STRING:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_8

    goto :goto_b

    .line 1224
    :cond_8
    aget-object v0, v0, p0

    return-object v0

    .line 1221
    :cond_b
    :goto_b
    const-string v0, ""

    return-object v0
.end method

.method private static native compactProcess(II)V
.end method

.method private native compactSystem()V
.end method

.method private static native freezeBinder(IZ)I
.end method

.method private static native getBinderFreezeInfo(I)I
.end method

.method private static native getFreeSwapPercent()D
.end method

.method private static native getFreezerCheckPath()Ljava/lang/String;
.end method

.method public static isFreezerSupported()Z
    .registers 6

    .line 961
    const-string v0, "ActivityManager"

    const/4 v1, 0x0

    .line 962
    .local v1, "supported":Z
    const/4 v2, 0x0

    .line 965
    .local v2, "fr":Ljava/io/FileReader;
    :try_start_4
    new-instance v3, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreezerCheckPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 966
    invoke-virtual {v2}, Ljava/io/FileReader;->read()I

    move-result v3

    int-to-char v3, v3

    .line 968
    .local v3, "state":C
    const/16 v4, 0x31

    if-eq v3, v4, :cond_23

    const/16 v4, 0x30

    if-ne v3, v4, :cond_1c

    goto :goto_23

    .line 973
    :cond_1c
    const-string/jumbo v4, "unexpected value in cgroup.freeze"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 970
    :cond_23
    :goto_23
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->getBinderFreezeInfo(I)I
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_2a} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_2a} :catch_49
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_2c

    .line 971
    const/4 v1, 0x1

    goto :goto_57

    .line 979
    .end local v3    # "state":C
    :catch_2c
    move-exception v3

    .line 980
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to read cgroup.freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 977
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_49
    move-exception v3

    .line 978
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "unable to read freezer info"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/RuntimeException;
    goto :goto_57

    .line 975
    :catch_51
    move-exception v3

    .line 976
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "cgroup.freeze not present"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_57
    nop

    .line 983
    :goto_58
    if-eqz v2, :cond_79

    .line 985
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 988
    goto :goto_79

    .line 986
    :catch_5e
    move-exception v3

    .line 987
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception closing cgroup.freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    .end local v3    # "e":Ljava/io/IOException;
    :cond_79
    :goto_79
    return v1
.end method

.method private parseProcStateThrottle(Ljava/lang/String;)Z
    .registers 9
    .param p1, "procStateThrottleString"    # Ljava/lang/String;

    .line 1204
    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "procStates":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1206
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_3d

    aget-object v4, v0, v3

    .line 1208
    .local v4, "procState":Ljava/lang/String;
    :try_start_12
    iget-object v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1f} :catch_23

    .line 1213
    nop

    .line 1206
    .end local v4    # "procState":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1209
    .restart local v4    # "procState":Ljava/lang/String;
    :catch_23
    move-exception v1

    .line 1210
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse default app compaction proc state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return v2

    .line 1215
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "procState":Ljava/lang/String;
    :cond_3d
    const/4 v1, 0x1

    return v1
.end method

.method private setAppCompactProperties()V
    .registers 18

    .line 443
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 444
    const-string/jumbo v1, "vendor.appcompact.enable_app_compact"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 446
    .local v0, "useCompaction":Z
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 447
    const-string/jumbo v3, "vendor.appcompact.debug_app_compact"

    invoke-virtual {v1, v3, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 449
    .local v1, "debugCompaction":Z
    sget-object v2, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 451
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 450
    const-string/jumbo v4, "vendor.appcompact.thread_priority"

    invoke-virtual {v2, v4, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 454
    .local v2, "threadPriority":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_3e

    .line 455
    const/4 v2, 0x0

    .line 457
    :cond_3e
    sget-object v4, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 459
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 458
    const-string/jumbo v6, "vendor.appcompact.some_compact_type"

    invoke-virtual {v4, v6, v5}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 460
    .local v4, "someCompactionType":I
    sget-object v5, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 462
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 461
    const-string/jumbo v6, "vendor.appcompact.full_compact_type"

    invoke-virtual {v5, v6, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 463
    .local v3, "fullCompactionType":I
    sget-object v5, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    const-wide/16 v6, 0x1388

    .line 465
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 464
    const-string/jumbo v7, "vendor.appcompact.compact_throttle_somesome"

    invoke-virtual {v5, v7, v6}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 466
    .local v5, "compactThrottleSomeSome":I
    sget-object v6, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 468
    const-wide/16 v7, 0x2710

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 467
    const-string/jumbo v10, "vendor.appcompact.compact_throttle_somefull"

    invoke-virtual {v6, v10, v9}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 469
    .local v6, "compactThrottleSomeFull":I
    sget-object v9, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    const-wide/16 v10, 0x1f4

    .line 471
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 470
    const-string/jumbo v11, "vendor.appcompact.compact_throttle_fullsome"

    invoke-virtual {v9, v11, v10}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 472
    .local v9, "compactThrottleFullSome":I
    sget-object v10, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 474
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 473
    const-string/jumbo v8, "vendor.appcompact.compact_throttle_fullfull"

    invoke-virtual {v10, v8, v7}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 475
    .local v7, "compactThrottleFullFull":I
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 477
    const-wide/32 v10, 0x927c0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 476
    const-string/jumbo v13, "vendor.appcompact.compact_throttle_bfgs"

    invoke-virtual {v8, v13, v12}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 478
    .local v8, "compactThrottleBfgs":I
    sget-object v12, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    .line 480
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 479
    const-string/jumbo v11, "vendor.appcompact.compact_throttle_persistent"

    invoke-virtual {v12, v11, v10}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 481
    .local v10, "compactThrottlePersistent":I
    sget-object v11, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    const-wide/16 v12, 0x2ee0

    .line 483
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 482
    const-string/jumbo v13, "vendor.appcompact.rss_throttle_kb"

    invoke-virtual {v11, v13, v12}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 484
    .local v11, "fullRssThrottleKB":I
    sget-object v12, Lcom/android/server/am/CachedAppOptimizer;->mPerf:Landroid/util/BoostFramework;

    const-wide/16 v13, 0x1f40

    .line 486
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 485
    const-string/jumbo v14, "vendor.appcompact.delta_rss_throttle_kb"

    invoke-virtual {v12, v14, v13}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 488
    .local v12, "deltaRssThrottleKB":I
    nop

    .line 490
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 488
    const-string v14, "activity_manager"

    const-string v15, "compact_action_1"

    move/from16 v16, v4

    .end local v4    # "someCompactionType":I
    .local v16, "someCompactionType":I
    const/4 v4, 0x1

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 491
    nop

    .line 493
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 491
    const-string v15, "compact_action_2"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 494
    nop

    .line 496
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 494
    const-string v15, "compact_throttle_1"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 497
    nop

    .line 499
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 497
    const-string v15, "compact_throttle_2"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 500
    nop

    .line 502
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 500
    const-string v15, "compact_throttle_3"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 503
    nop

    .line 505
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 503
    const-string v15, "compact_throttle_4"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 506
    nop

    .line 508
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 506
    const-string v15, "compact_throttle_5"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 509
    nop

    .line 511
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 509
    const-string v15, "compact_throttle_6"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 512
    nop

    .line 514
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 512
    const-string v15, "compact_full_rss_throttle_kb"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 515
    nop

    .line 517
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 515
    const-string v15, "compact_full_delta_rss_throttle_kb"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 518
    nop

    .line 520
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    .line 518
    const-string/jumbo v15, "use_compaction"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 521
    nop

    .line 523
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    .line 521
    const-string v15, "debug_compaction"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 524
    nop

    .line 526
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 524
    const-string v15, "compaction_priority"

    invoke-static {v14, v15, v13, v4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 527
    return-void
.end method

.method private static native switchQuickCompactMode(Z)V
.end method

.method private updateCompactStatsdSampleRate()V
    .registers 4

    .line 1121
    const-string v0, "activity_manager"

    const-string v1, "compact_statsd_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 1123
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 1124
    return-void
.end method

.method private updateCompactionActions()V
    .registers 5

    .line 1044
    const-string v0, "activity_manager"

    const-string v1, "compact_action_1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1047
    .local v1, "compactAction1":I
    const-string v2, "compact_action_2"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1050
    .local v0, "compactAction2":I
    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:I

    .line 1051
    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:I

    .line 1052
    return-void
.end method

.method private updateCompactionThrottles()V
    .registers 14

    .line 1056
    const/4 v0, 0x0

    .line 1058
    .local v0, "useThrottleDefaults":Z
    nop

    .line 1059
    const-string v1, "activity_manager"

    const-string v2, "compact_throttle_1"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "throttleSomeSomeFlag":Ljava/lang/String;
    nop

    .line 1062
    const-string v3, "compact_throttle_2"

    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1064
    .local v3, "throttleSomeFullFlag":Ljava/lang/String;
    nop

    .line 1065
    const-string v4, "compact_throttle_3"

    invoke-static {v1, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1067
    .local v4, "throttleFullSomeFlag":Ljava/lang/String;
    nop

    .line 1068
    const-string v5, "compact_throttle_4"

    invoke-static {v1, v5}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1070
    .local v5, "throttleFullFullFlag":Ljava/lang/String;
    nop

    .line 1071
    const-string v6, "compact_throttle_5"

    invoke-static {v1, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1073
    .local v6, "throttleBFGSFlag":Ljava/lang/String;
    nop

    .line 1074
    const-string v7, "compact_throttle_6"

    invoke-static {v1, v7}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1076
    .local v7, "throttlePersistentFlag":Ljava/lang/String;
    nop

    .line 1077
    const-string v8, "compact_throttle_min_oom_adj"

    invoke-static {v1, v8}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1079
    .local v8, "throttleMinOomAdjFlag":Ljava/lang/String;
    nop

    .line 1080
    const-string v9, "compact_throttle_max_oom_adj"

    invoke-static {v1, v9}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1083
    .local v1, "throttleMaxOomAdjFlag":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a6

    .line 1084
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a6

    .line 1085
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a6

    .line 1086
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a6

    .line 1087
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a6

    .line 1088
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a6

    .line 1089
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    goto :goto_a6

    .line 1094
    :cond_6c
    :try_start_6c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 1095
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 1096
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 1097
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 1098
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 1099
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    .line 1100
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 1101
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_a2} :catch_a3

    .line 1104
    goto :goto_a7

    .line 1102
    :catch_a3
    move-exception v9

    .line 1103
    .local v9, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    goto :goto_a7

    .line 1091
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_a6
    :goto_a6
    const/4 v0, 0x1

    .line 1107
    :goto_a7
    if-eqz v0, :cond_c6

    .line 1108
    const-wide/16 v9, 0x1388

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 1109
    const-wide/16 v9, 0x2710

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 1110
    const-wide/16 v11, 0x1f4

    iput-wide v11, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 1111
    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 1112
    const-wide/32 v9, 0x927c0

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 1113
    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    .line 1114
    const-wide/16 v9, 0x384

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 1115
    const-wide/16 v9, 0x3e7

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 1117
    :cond_c6
    return-void
.end method

.method private updateFreezerDebounceTimeout()V
    .registers 7

    .line 1194
    const-string v0, "activity_manager_native_boot"

    const-string v1, "freeze_debounce_timeout"

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 1198
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_17

    .line 1199
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 1201
    :cond_17
    return-void
.end method

.method private updateFreezerStatsdSampleRate()V
    .registers 4

    .line 1128
    const-string v0, "activity_manager"

    const-string v1, "freeze_statsd_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 1130
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 1131
    return-void
.end method

.method private updateFullDeltaRssThrottle()V
    .registers 7

    .line 1146
    const-string v0, "activity_manager"

    const-string v1, "compact_full_delta_rss_throttle_kb"

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 1149
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_16

    .line 1150
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 1152
    :cond_16
    return-void
.end method

.method private updateFullRssThrottle()V
    .registers 7

    .line 1135
    const-string v0, "activity_manager"

    const-string v1, "compact_full_rss_throttle_kb"

    const-wide/16 v2, 0x2ee0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 1139
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_16

    .line 1140
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 1142
    :cond_16
    return-void
.end method

.method private updateMaxOomAdjThrottle()V
    .registers 5

    .line 1183
    const-string v0, "activity_manager"

    const-string v1, "compact_throttle_max_oom_adj"

    const-wide/16 v2, 0x3e7

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 1187
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 1188
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    .line 1190
    :cond_14
    return-void
.end method

.method private updateMinOomAdjThrottle()V
    .registers 5

    .line 1172
    const-string v0, "activity_manager"

    const-string v1, "compact_throttle_min_oom_adj"

    const-wide/16 v2, 0x384

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 1176
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 1177
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    .line 1179
    :cond_14
    return-void
.end method

.method private updateProcStateThrottle()V
    .registers 6

    .line 1156
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    const-string v1, "activity_manager"

    const-string v2, "compact_proc_state_throttle"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    .local v1, "procStateThrottleString":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse app compact proc state throttle \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" falling back to default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-direct {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse default app compact proc state throttle "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_4a
    return-void
.end method

.method private updateUseCompaction()V
    .registers 5

    .line 842
    const-string v0, "activity_manager"

    const-string/jumbo v1, "use_compaction"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, "useCompaction":Ljava/lang/String;
    if-nez v2, :cond_e

    .line 844
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->setAppCompactProperties()V

    .line 847
    :cond_e
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 848
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 847
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 850
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    const-string v3, "debug_compaction"

    invoke-static {v0, v3, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    .line 853
    const/4 v1, 0x0

    const-string v3, "compaction_priority"

    invoke-static {v0, v3, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionPriority:I

    .line 856
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    if-nez v0, :cond_4a

    .line 857
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_42

    .line 858
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 861
    :cond_42
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 864
    :cond_4a
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionPriority:I

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 866
    return-void
.end method

.method private updateUseFreezer()V
    .registers 6

    .line 1000
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cached_apps_freezer"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, "configOverride":Ljava/lang/String;
    const-string v1, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 1004
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    goto :goto_40

    .line 1005
    :cond_1a
    const-string v1, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

    .line 1007
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1006
    const-string v3, "activity_manager_native_boot"

    const-string/jumbo v4, "use_freezer"

    invoke-static {v3, v4, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_37

    .line 1011
    :cond_34
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    goto :goto_40

    .line 1008
    :cond_37
    :goto_37
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->isFreezerSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 1009
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    .line 1014
    :goto_40
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 1017
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 1019
    .local v1, "useFreezer":Z
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1040
    return-void
.end method


# virtual methods
.method cancelAllCompactions()V
    .registers 7

    .line 1406
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1407
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1409
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_20

    .line 1410
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1414
    .local v3, "record":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 1409
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1416
    .end local v2    # "i":I
    .end local v3    # "record":Lcom/android/server/am/ProcessRecord;
    :cond_20
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1417
    .end local v1    # "size":I
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1418
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompaction()V

    .line 1419
    return-void

    .line 1417
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method compactAllSystem()V
    .registers 5

    .line 781
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 782
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    const-string v1, "compactAllSystem"

    if-eqz v0, :cond_11

    .line 783
    const-string v0, "ActivityManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_11
    const-wide/16 v2, 0x40

    const-string v0, "Compaction"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 790
    :cond_22
    return-void
.end method

.method compactAllSystemDirectly()V
    .registers 5

    .line 795
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->use_boot_compact:Z

    if-eqz v0, :cond_43

    .line 796
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    if-nez v0, :cond_27

    .line 797
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_15

    .line 798
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 800
    :cond_15
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 801
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 804
    :cond_27
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    const-string v1, "compactAllSystemDirectly"

    if-eqz v0, :cond_32

    .line 805
    const-string v0, "ActivityManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_32
    const-wide/16 v2, 0x40

    const-string v0, "Compaction"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 812
    :cond_43
    return-void
.end method

.method compactApp(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "force"    # Z
    .param p3, "compactRequestType"    # Ljava/lang/String;

    .line 736
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v0

    const-string v1, "ActivityManager"

    if-nez v0, :cond_83

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->meetsCompactionRequirements(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 737
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_19

    :cond_17
    const-string v0, ""

    .line 738
    .local v0, "processName":Ljava/lang/String;
    :goto_19
    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    const-string v3, " "

    const-string v4, "compactApp "

    if-eqz v2, :cond_3d

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_3d
    const-wide/16 v1, 0x40

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Compaction"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 744
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceCompact(Z)V

    .line 745
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 747
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    .line 746
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 748
    return v2

    .line 751
    .end local v0    # "processName":Ljava/lang/String;
    :cond_83
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    if-eqz v0, :cond_cd

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " compactApp Skipped for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pendingCompact= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 754
    invoke-virtual {v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " meetsCompactionRequirements="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->meetsCompactionRequirements(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Requested compact: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 756
    invoke-virtual {v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactAction()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_cd
    const/4 v0, 0x0

    return v0
.end method

.method compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 769
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactRequest:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactRequest:J

    .line 770
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    .line 771
    const/4 v0, 0x0

    const-string v1, " Bfgs"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 772
    return-void
.end method

.method compactAppFull(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "force"    # Z

    .line 669
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 670
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_36

    :cond_1a
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 671
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_36

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 672
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 673
    .local v0, "oomAdjEnteredCached":Z
    :goto_37
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_69

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " compactAppFull requested for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " force: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " oomAdjEnteredCached: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_69
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactRequest:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactRequest:J

    .line 680
    if-nez p2, :cond_b2

    if-eqz v0, :cond_75

    goto :goto_b2

    .line 684
    :cond_75
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    if-eqz v1, :cond_bd

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping full compaction for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " oom adj score changed from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 686
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 687
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 685
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 681
    :cond_b2
    :goto_b2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    .line 682
    const-string v1, "Full"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 690
    :cond_bd
    :goto_bd
    return-void
.end method

.method compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 694
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    .line 695
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactRequest:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactRequest:J

    .line 696
    const/4 v0, 0x0

    const-string v1, "Persistent"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 697
    return-void
.end method

.method compactAppSome(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "force"    # Z

    .line 636
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    .line 637
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactRequest:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactRequest:J

    .line 638
    const-string/jumbo v0, "some"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 639
    return-void
.end method

.method compactMemoryFreezeApp(Lcom/android/server/am/ProcessRecord;ZLjava/lang/Runnable;)V
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "force"    # Z
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 702
    const-string v0, "MFZ"

    if-eqz p2, :cond_9e

    .line 703
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->use_memoryfreeze_compact:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    if-nez v1, :cond_34

    .line 704
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_19

    .line 705
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 707
    :cond_19
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler-IA;)V

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 708
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 710
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v1, :cond_34

    .line 711
    const-string v1, "compactMemoryFreezeApp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_34
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    .line 715
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v1

    if-nez v1, :cond_ba

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->meetsCompactionRequirements(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 716
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_4f

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_51

    :cond_4f
    const-string v1, ""

    .line 717
    .local v1, "processName":Ljava/lang/String;
    :goto_51
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    const-string v3, "compactApp "

    if-eqz v2, :cond_6b

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_6b
    const-wide/16 v4, 0x40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Compaction"

    invoke-static {v4, v5, v2, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 722
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceCompact(Z)V

    .line 723
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 725
    .end local v1    # "processName":Ljava/lang/String;
    goto :goto_ba

    .line 727
    :cond_9e
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v1, :cond_ba

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping full compaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_ba
    :goto_ba
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 549
    const-string v0, "CachedAppOptimizer settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_compaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  debug_compaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compaction_priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:I

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:I

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_min_oom_adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_max_oom_adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_delta_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_proc_state_throttle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    .line 570
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Requested:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactRequest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " some, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactRequest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " full, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactRequest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " persistent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactRequest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BFGS compactions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Performed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " some, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " full, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " persistent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BFGS compactions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Process Compactions Requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRequested:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Process Compactions Performed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsPerformed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRequested:J

    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsPerformed:J

    sub-long/2addr v1, v3

    .line 581
    .local v1, "compactionsThrottled":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Process Compactions Throttled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    long-to-double v3, v1

    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRequested:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    .line 584
    .local v3, "compactThrottlePercentage":D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Process Compactions Throttle Percentage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        NoPid Throttled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsNoPidThrottled:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        OomAdj Throttled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsOomAdjThrottled:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        Time Throttled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsTimeThrottled:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        RSS Throttled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRSSThrottled:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        Misc Throttled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsMiscThrottled:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsNoPidThrottled:J

    sub-long v5, v1, v5

    iget-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsOomAdjThrottled:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsTimeThrottled:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsRSSThrottled:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcCompactionsMiscThrottled:J

    sub-long/2addr v5, v7

    .line 594
    .local v5, "unaccountedThrottled":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        Unaccounted Throttled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " System Compactions Performed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/am/CachedAppOptimizer;->mSystemCompactionsPerformed:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Tracking last compaction stats for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " processes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  use_freezer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  freeze_statsd_sample_rate="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  freeze_debounce_timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    iget-object v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v7
    :try_end_3c3
    .catchall {:try_start_8 .. :try_end_3c3} :catchall_4dd

    :try_start_3c3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 604
    iget-object v8, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 605
    .local v8, "size":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Apps frozen: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3e3
    if-ge v9, v8, :cond_426

    .line 607
    iget-object v10, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 608
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 609
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 608
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    .end local v10    # "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3e3

    .line 612
    .end local v9    # "i":I
    :cond_426
    iget-object v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_47e

    .line 613
    const-string v9, "  Pending compactions:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    iget-object v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v8, v9

    .line 615
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_43b
    if-ge v9, v8, :cond_47e

    .line 616
    iget-object v10, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 617
    .restart local v10    # "app":Lcom/android/server/am/ProcessRecord;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    pid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". hasPendingCompact: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 618
    invoke-virtual {v12}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 617
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    .end local v10    # "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v9, v9, 0x1

    goto :goto_43b

    .line 621
    .end local v8    # "size":I
    .end local v9    # "i":I
    :cond_47e
    monitor-exit v7
    :try_end_47f
    .catchall {:try_start_3c3 .. :try_end_47f} :catchall_4d7

    :try_start_47f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 622
    iget-boolean v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    if-eqz v7, :cond_4d5

    .line 624
    iget-object v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_490
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4d5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 625
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 626
    .local v9, "pid":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    .line 627
    .local v10, "stats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 628
    invoke-virtual {v10}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 627
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;>;"
    .end local v9    # "pid":I
    .end local v10    # "stats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    goto :goto_490

    .line 631
    .end local v1    # "compactionsThrottled":J
    .end local v3    # "compactThrottlePercentage":D
    .end local v5    # "unaccountedThrottled":J
    :cond_4d5
    monitor-exit v0
    :try_end_4d6
    .catchall {:try_start_47f .. :try_end_4d6} :catchall_4dd

    .line 632
    return-void

    .line 621
    .restart local v1    # "compactionsThrottled":J
    .restart local v3    # "compactThrottlePercentage":D
    .restart local v5    # "unaccountedThrottled":J
    :catchall_4d7
    move-exception v8

    :try_start_4d8
    monitor-exit v7
    :try_end_4d9
    .catchall {:try_start_4d8 .. :try_end_4d9} :catchall_4d7

    :try_start_4d9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    throw v8

    .line 631
    .end local v1    # "compactionsThrottled":J
    .end local v3    # "compactThrottlePercentage":D
    .end local v5    # "unaccountedThrottled":J
    .restart local p0    # "this":Lcom/android/server/am/CachedAppOptimizer;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_4dd
    move-exception v1

    monitor-exit v0
    :try_end_4df
    .catchall {:try_start_4d9 .. :try_end_4df} :catchall_4dd

    throw v1
.end method

.method public declared-synchronized enableFreezer(Z)Z
    .registers 8
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 874
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7c

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 875
    monitor-exit p0

    return v1

    .line 878
    :cond_8
    const/4 v0, 0x1

    if-eqz p1, :cond_22

    .line 879
    :try_start_b
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_7c

    .line 881
    if-lez v2, :cond_14

    .line 882
    monitor-exit p0

    return v0

    .line 883
    :cond_14
    if-gez v2, :cond_2b

    .line 884
    :try_start_16
    const-string v0, "ActivityManager"

    const-string/jumbo v2, "unbalanced call to enableFreezer, ignoring"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_7c

    .line 886
    monitor-exit p0

    return v1

    .line 889
    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer;
    :cond_22
    :try_start_22
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_7c

    .line 891
    if-le v2, v0, :cond_2b

    .line 892
    monitor-exit p0

    return v0

    .line 897
    .restart local p0    # "this":Lcom/android/server/am/CachedAppOptimizer;
    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_7c

    :try_start_2e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 898
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_74

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 899
    if-nez p1, :cond_3a

    move v1, v0

    :cond_3a
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    .line 900
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freezer override set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v4, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    invoke-virtual {v1, v0, v4}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 920
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_34 .. :try_end_63} :catchall_6c

    :try_start_63
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 921
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_7a

    :try_start_67
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_7c

    .line 923
    monitor-exit p0

    return v0

    .line 920
    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer;
    :catchall_6c
    move-exception v0

    :goto_6d
    :try_start_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_72

    :try_start_6e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local p1    # "enable":Z
    throw v0
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_74

    .restart local p0    # "this":Lcom/android/server/am/CachedAppOptimizer;
    .restart local p1    # "enable":Z
    :catchall_72
    move-exception v0

    goto :goto_6d

    .line 921
    :catchall_74
    move-exception v0

    :goto_75
    :try_start_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_7a

    :try_start_76
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_7c

    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer;
    :catchall_7a
    move-exception v0

    goto :goto_75

    .line 873
    .end local p1    # "enable":Z
    :catchall_7c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1242
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1243
    .local v0, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1245
    return-void

    .line 1248
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1249
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 1248
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1252
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1253
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v1, :cond_46

    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Async freezing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_46
    return-void
.end method

.method public init()V
    .registers 5

    .line 418
    const-string v0, "activity_manager"

    .line 419
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 418
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 420
    const-string v0, "activity_manager_native_boot"

    .line 422
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 420
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 424
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_31
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    .line 428
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionActions()V

    .line 429
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    .line 430
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    .line 431
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    .line 432
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    .line 433
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    .line 434
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    .line 435
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    .line 436
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMinOomAdjThrottle()V

    .line 437
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMaxOomAdjThrottle()V

    .line 438
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_57

    .line 439
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->setAppCompactProperties()V

    .line 440
    return-void

    .line 438
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method synthetic lambda$enableFreezer$0$com-android-server-am-CachedAppOptimizer(ZLcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "process"    # Lcom/android/server/am/ProcessRecord;

    .line 903
    if-nez p2, :cond_3

    .line 904
    return-void

    .line 907
    :cond_3
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 908
    .local v0, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    if-eqz p1, :cond_14

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasFreezerOverride()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 909
    invoke-virtual {p0, p2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 910
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    .line 913
    :cond_14
    if-nez p1, :cond_23

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 914
    invoke-virtual {p0, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 917
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    .line 919
    :cond_23
    return-void
.end method

.method synthetic lambda$updateUseFreezer$1$com-android-server-am-CachedAppOptimizer(Z)V
    .registers 4
    .param p1, "useFreezer"    # Z

    .line 1020
    const-string v0, "ActivityManager"

    if-eqz p1, :cond_32

    .line 1021
    const-string v1, "Freezer enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 1024
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1025
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 1028
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    if-nez v0, :cond_26

    .line 1029
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$FreezeHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    .line 1032
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionPriority:I

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    goto :goto_3b

    .line 1036
    :cond_32
    const-string v1, "Freezer disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 1039
    :goto_3b
    return-void
.end method

.method meetsCompactionRequirements(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 646
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    move-result v0

    const-string v1, "ActivityManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    .line 649
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    if-eqz v0, :cond_2b

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip compaction since UID is active for  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_2b
    return v2

    .line 655
    :cond_2c
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 656
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    if-eqz v0, :cond_56

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip compaction as process "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " has foreground activities"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_56
    return v2

    .line 664
    :cond_57
    const/4 v0, 0x1

    return v0
.end method

.method onCleanupApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1385
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v0, :cond_1f

    .line 1386
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1387
    .local v0, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1389
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1390
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1393
    :cond_16
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 1395
    .end local v0    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :cond_1f
    return-void
.end method

.method onOomAdjustChanged(IILcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "oldAdj"    # I
    .param p2, "newAdj"    # I
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1425
    sget v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    iget v1, p3, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/16 v2, 0x384

    if-ne v0, v1, :cond_f

    if-ge p2, p1, :cond_f

    if-ge p2, v2, :cond_f

    .line 1427
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompaction()V

    .line 1430
    :cond_f
    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-gt p1, v0, :cond_20

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1c

    const/16 v0, 0x258

    if-ne p2, v0, :cond_20

    .line 1433
    :cond_1c
    invoke-virtual {p0, p3, v1}, Lcom/android/server/am/CachedAppOptimizer;->compactAppSome(Lcom/android/server/am/ProcessRecord;Z)V

    goto :goto_2d

    .line 1434
    :cond_20
    const/16 v0, 0x3e7

    if-lt p1, v2, :cond_26

    if-le p1, v0, :cond_2d

    :cond_26
    if-lt p2, v2, :cond_2d

    if-gt p2, v0, :cond_2d

    .line 1439
    invoke-virtual {p0, p3, v1}, Lcom/android/server/am/CachedAppOptimizer;->compactAppFull(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1441
    :cond_2d
    :goto_2d
    return-void
.end method

.method onWakefulnessChanged(I)V
    .registers 4
    .param p1, "wakefulness"    # I

    .line 1398
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 1400
    const-string v0, "ActivityManager"

    const-string v1, "Cancel pending or running compactions as system is awake"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->cancelAllCompactions()V

    .line 1403
    :cond_d
    return-void
.end method

.method resolveCompactionAction(I)I
    .registers 8
    .param p1, "pendingAction"    # I

    .line 1449
    packed-switch p1, :pswitch_data_5a

    .line 1460
    const/4 v0, 0x0

    .local v0, "resolvedAction":I
    goto :goto_b

    .line 1457
    .end local v0    # "resolvedAction":I
    :pswitch_5
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:I

    .line 1458
    .restart local v0    # "resolvedAction":I
    goto :goto_b

    .line 1451
    .end local v0    # "resolvedAction":I
    :pswitch_8
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:I

    .line 1452
    .restart local v0    # "resolvedAction":I
    nop

    .line 1465
    :goto_b
    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v2, 0x2

    if-ne v0, v2, :cond_59

    .line 1466
    :cond_11
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    move-result-wide v2

    .line 1467
    .local v2, "swapFreePercent":D
    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v4, v2, v4

    if-gez v4, :cond_59

    .line 1468
    const-string v4, "ActivityManager"

    if-ne v0, v1, :cond_3e

    .line 1469
    const/4 v0, 0x1

    .line 1470
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    if-eqz v1, :cond_59

    .line 1471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downgraded compaction to file only due to low swap. Swap Free% "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 1476
    :cond_3e
    const/4 v0, 0x0

    .line 1477
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mDebugCompaction:Z

    if-eqz v1, :cond_59

    .line 1478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping compaction due to low swap. Swap Free% "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    .end local v2    # "swapFreePercent":D
    :cond_59
    :goto_59
    return v0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .line 776
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 777
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 776
    :goto_1e
    return v0
.end method

.method shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .line 763
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 764
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 763
    :goto_1e
    return v0
.end method

.method unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 15
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1260
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 1261
    .local v0, "pid":I
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1262
    .local v1, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, " "

    const-string v5, "ActivityManager"

    if-eqz v2, :cond_3e

    .line 1264
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v2, v6, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1265
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1266
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v2, :cond_3e

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cancel freezing "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_3e
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    .line 1272
    if-eqz v0, :cond_19b

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_4b

    goto/16 :goto_19b

    .line 1278
    :cond_4b
    const/4 v2, 0x0

    .line 1281
    .local v2, "processKilled":Z
    const/16 v6, 0x13

    const/16 v7, 0xe

    const/4 v8, 0x1

    :try_start_51
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->getBinderFreezeInfo(I)I

    move-result v9
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_55} :catch_b5

    .line 1283
    .local v9, "freezeInfo":I
    and-int/lit8 v10, v9, 0x1

    const-string/jumbo v11, "pid "

    if-eqz v10, :cond_88

    .line 1284
    :try_start_5c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " received sync transactions while frozen, killing"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const-string v10, "Sync transaction while in frozen state"

    const/16 v12, 0x14

    invoke-virtual {p1, v10, v7, v12, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1289
    const/4 v2, 0x1

    .line 1292
    :cond_88
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_b4

    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v10, :cond_b4

    .line 1293
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " received async transactions while frozen"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_b4} :catch_b5

    .line 1303
    .end local v9    # "freezeInfo":I
    :cond_b4
    goto :goto_e6

    .line 1296
    :catch_b5
    move-exception v9

    .line 1297
    .local v9, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to query binder frozen info for pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Killing it. Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const-string v10, "Unable to query binder frozen stats"

    invoke-virtual {p1, v10, v7, v6, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1302
    const/4 v2, 0x1

    .line 1305
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_e6
    if-eqz v2, :cond_e9

    .line 1306
    return-void

    .line 1309
    :cond_e9
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v9

    .line 1312
    .local v9, "freezeTime":J
    :try_start_ed
    invoke-static {v0, v3}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZ)I
    :try_end_f0
    .catch Ljava/lang/RuntimeException; {:try_start_ed .. :try_end_f0} :catch_16e

    .line 1320
    nop

    .line 1323
    :try_start_f1
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v6, v3}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    .line 1325
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeUnfreezeTime(J)V

    .line 1326
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFrozen(Z)V

    .line 1327
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_105} :catch_106

    .line 1331
    goto :goto_12d

    .line 1328
    :catch_106
    move-exception v3

    .line 1329
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to unfreeze "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". This might cause inconsistency or UI hangs."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_12d
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v3

    if-nez v3, :cond_16d

    .line 1334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sync unfroze "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    .line 1339
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v5

    sub-long/2addr v5, v9

    const-wide/32 v7, 0x7fffffff

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1337
    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1336
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1342
    :cond_16d
    return-void

    .line 1313
    :catch_16e
    move-exception v3

    .line 1314
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to unfreeze binder for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ". Killing it"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const-string v4, "Unable to unfreeze"

    invoke-virtual {p1, v4, v7, v6, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1319
    return-void

    .line 1273
    .end local v2    # "processKilled":Z
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "freezeTime":J
    :cond_19b
    :goto_19b
    return-void
.end method

.method unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1346
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1347
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1348
    monitor-exit v0

    .line 1349
    return-void

    .line 1348
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method unfreezeProcess(I)V
    .registers 8
    .param p1, "pid"    # I

    .line 1359
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1361
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v1, :cond_f

    .line 1362
    monitor-exit v0

    return-void

    .line 1364
    :cond_f
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "quick sync unfreeze "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_69

    .line 1366
    const/4 v2, 0x0

    :try_start_29
    invoke-static {p1, v2}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZ)I
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2c} :catch_4e
    .catchall {:try_start_29 .. :try_end_2c} :catchall_69

    .line 1370
    nop

    .line 1373
    :try_start_2d
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p1, v3, v2}, Landroid/os/Process;->setProcessFrozen(IIZ)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33
    .catchall {:try_start_2d .. :try_end_32} :catchall_69

    .line 1376
    goto :goto_4c

    .line 1374
    :catch_33
    move-exception v2

    .line 1375
    .local v2, "e":Ljava/lang/Exception;
    :try_start_34
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to quick unfreeze "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4c
    monitor-exit v0

    .line 1378
    return-void

    .line 1367
    .restart local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_4e
    move-exception v2

    .line 1368
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to quick unfreeze binder for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    monitor-exit v0

    return-void

    .line 1377
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_34 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1230
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v0, :cond_2b

    .line 1231
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1232
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1233
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1234
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1236
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_2b

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 1238
    :cond_2b
    :goto_2b
    return-void
.end method

.method public useCompaction()Z
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    monitor-exit v0

    return v1

    .line 535
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public useFreezer()Z
    .registers 3

    .line 542
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    monitor-exit v0

    return v1

    .line 544
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
