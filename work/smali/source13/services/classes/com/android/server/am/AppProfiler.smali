.class public Lcom/android/server/am/AppProfiler;
.super Ljava/lang/Object;
.source "AppProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppProfiler$CpuBinder;,
        Lcom/android/server/am/AppProfiler$ProcessCpuThread;,
        Lcom/android/server/am/AppProfiler$RecordPssRunnable;,
        Lcom/android/server/am/AppProfiler$BgHandler;,
        Lcom/android/server/am/AppProfiler$ProfileData;
    }
.end annotation


# static fields
.field private static final ACTION_HEAP_DUMP_FINISHED:Ljava/lang/String; = "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

.field static final ACTIVITY_START_PSS_DEFER_CONFIG:Ljava/lang/String; = "activity_start_pss_defer"

.field static final BATTERY_STATS_TIME:J = 0x1b7740L

.field private static final EXTRA_HEAP_DUMP_IS_USER_INITIATED:Ljava/lang/String; = "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

.field private static final EXTRA_HEAP_DUMP_PROCESS_NAME:Ljava/lang/String; = "com.android.internal.extra.heap_dump.PROCESS_NAME"

.field private static final EXTRA_HEAP_DUMP_REPORT_PACKAGE:Ljava/lang/String; = "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

.field private static final EXTRA_HEAP_DUMP_SIZE_BYTES:Ljava/lang/String; = "com.android.internal.extra.heap_dump.SIZE_BYTES"

.field private static final LOW_MEM_FACTOR:I = 0xa

.field private static final MEMINFO_FORMAT:[I

.field static final MONITOR_CPU_MAX_TIME:J = 0xfffffffL

.field static final MONITOR_CPU_MIN_TIME:J = 0x1388L

.field static final MONITOR_CPU_USAGE:Z = true

.field static final MONITOR_THREAD_CPU_USAGE:Z = true

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_OOM_ADJ:Ljava/lang/String; = "ActivityManager"

.field static final TAG_PSS:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAllowLowerMemLevel:Z

.field private mAppAgentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgHandler:Landroid/os/Handler;

.field private mFullPssPending:Z

.field mHasHomeProcess:Z

.field mHasPreviousProcess:Z

.field private final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLastFullPssTime:J

.field private mLastMemUsageReportTime:J

.field private mLastMemoryLevel:I

.field private mLastNumProcesses:I

.field private volatile mLastWriteTime:J

.field private final mLowMemDetector:Lcom/android/server/am/LowMemDetector;

.field private mLowRamStartTime:J

.field private mLowRamTimeSinceLastIdle:J

.field private mMemFactorOverride:I

.field private mMemWatchDumpPid:I

.field private mMemWatchDumpProcName:Ljava/lang/String;

.field private mMemWatchDumpUid:I

.field private mMemWatchDumpUri:Landroid/net/Uri;

.field private mMemWatchIsUserInitiated:Z

.field private final mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPendingPssProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessProfileRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mProcessCpuThread:Ljava/lang/Thread;

.field private final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private final mProcessesToGc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

.field private mProfileType:I

.field final mProfilerLock:Ljava/lang/Object;

.field private volatile mPssDeferralTime:J

.field private final mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private volatile mTestPssMode:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastCpuTime(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastWriteTime(Lcom/android/server/am/AppProfiler;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessCpuInitLatch(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessCpuMutexFree(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPssDeferralTime(Lcom/android/server/am/AppProfiler;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPssDeferralTime(Lcom/android/server/am/AppProfiler;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mabortHeapDump(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppProfiler;->abortHeapDump(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcollectPssInBackground(Lcom/android/server/am/AppProfiler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->collectPssInBackground()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeferPssForActivityStart(Lcom/android/server/am/AppProfiler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->deferPssForActivityStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMemoryPressureChangedLocked(Lcom/android/server/am/AppProfiler;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppProfiler;->handleMemoryPressureChangedLocked(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopDeferPss(Lcom/android/server/am/AppProfiler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->stopDeferPss()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 170
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/am/AppProfiler;->MEMINFO_FORMAT:[I

    return-void

    :array_a
    .array-data 4
        0x120
        0x2020
        0xa
        0x120
        0x2020
        0xa
        0x120
        0x2020
        0xa
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;Lcom/android/server/am/LowMemDetector;)V
    .registers 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "bgLooper"    # Landroid/os/Looper;
    .param p3, "detector"    # Lcom/android/server/am/LowMemDetector;

    .line 2119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    .line 201
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 206
    nop

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 213
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    .line 221
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    .line 231
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 238
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 241
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 254
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 260
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 266
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 280
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 283
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 286
    new-instance v3, Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-direct {v3, p0, v2}, Lcom/android/server/am/AppProfiler$ProfileData;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/AppProfiler$ProfileData-IA;)V

    iput-object v3, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 289
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 320
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 326
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 327
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 328
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 330
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 348
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 355
    new-instance v0, Lcom/android/server/am/AppProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$1;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 2120
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2121
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 2122
    new-instance v0, Lcom/android/server/am/AppProfiler$BgHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/AppProfiler$BgHandler;-><init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    .line 2123
    iput-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    .line 2124
    new-instance v0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    const-string v1, "CpuTracker"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppProfiler$ProcessCpuThread;-><init>(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    .line 2126
    invoke-static {}, Lcom/android/server/am/AppProfilerStub;->getInstance()Lcom/android/server/am/AppProfilerStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/AppProfilerStub;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 2128
    return-void
.end method

.method private abortHeapDump(Ljava/lang/String;)V
    .registers 4
    .param p1, "procName"    # Ljava/lang/String;

    .line 803
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 804
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 805
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 806
    return-void
.end method

.method private addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1301
    const/4 v0, 0x0

    .line 1302
    .local v0, "added":Z
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2f

    .line 1303
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1304
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2c

    .line 1305
    const/4 v0, 0x1

    .line 1306
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1307
    goto :goto_2f

    .line 1302
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1310
    .end local v1    # "i":I
    :cond_2f
    :goto_2f
    if-nez v0, :cond_37

    .line 1311
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1313
    :cond_37
    return-void
.end method

.method private collectPssInBackground()V
    .registers 46

    .line 454
    move-object/from16 v15, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 455
    .local v17, "start":J
    const/4 v1, 0x0

    .line 456
    .local v1, "memInfo":Lcom/android/internal/util/MemInfoReader;
    iget-object v2, v15, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_a
    iget-boolean v0, v15, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    const/4 v13, 0x0

    if-eqz v0, :cond_19

    .line 458
    iput-boolean v13, v15, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    .line 459
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_316

    move-object/from16 v19, v0

    .end local v1    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v0, "memInfo":Lcom/android/internal/util/MemInfoReader;
    goto :goto_1b

    .line 457
    .end local v0    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v1    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :cond_19
    move-object/from16 v19, v1

    .line 461
    .end local v1    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v19, "memInfo":Lcom/android/internal/util/MemInfoReader;
    :goto_1b
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_312

    .line 462
    const/4 v0, 0x0

    if-eqz v19, :cond_d7

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 464
    const-wide/16 v1, 0x0

    .line 466
    .local v1, "nativeTotalPss":J
    iget-object v3, v15, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    .line 467
    :try_start_27
    iget-object v4, v15, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v5, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v4

    .line 470
    .local v4, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_d4

    .line 471
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 472
    .local v5, "numOfStats":I
    const/4 v3, 0x0

    move-wide v6, v1

    .end local v1    # "nativeTotalPss":J
    .local v3, "j":I
    .local v6, "nativeTotalPss":J
    :goto_39
    if-ge v3, v5, :cond_68

    .line 473
    iget-object v1, v15, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 474
    :try_start_40
    iget-object v2, v15, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v8, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v8}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_54

    .line 476
    monitor-exit v1

    goto :goto_62

    .line 478
    :cond_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_65

    .line 479
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v1, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v1, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v1

    add-long/2addr v6, v1

    .line 472
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 478
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0

    .line 481
    .end local v3    # "j":I
    :cond_68
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 482
    iget-object v1, v15, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v8, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 483
    :try_start_72
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_9b

    .line 484
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collected native and kernel memory in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v17

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_9b
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v1

    .line 488
    .local v1, "cachedKb":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v9

    .line 489
    .local v9, "freeKb":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v11

    .line 490
    .local v11, "zramKb":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v20

    move-wide/from16 v31, v20

    .line 491
    .local v31, "kernelKb":J
    const-wide/16 v20, 0x400

    mul-long v33, v1, v20

    mul-long v35, v9, v20

    mul-long v37, v11, v20

    mul-long v39, v31, v20

    mul-long v41, v6, v20

    invoke-static/range {v33 .. v42}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 493
    iget-object v3, v15, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v20, v3

    move-wide/from16 v21, v1

    move-wide/from16 v23, v9

    move-wide/from16 v25, v11

    move-wide/from16 v27, v31

    move-wide/from16 v29, v6

    invoke-virtual/range {v20 .. v30}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 495
    .end local v1    # "cachedKb":J
    .end local v9    # "freeKb":J
    .end local v11    # "zramKb":J
    .end local v31    # "kernelKb":J
    monitor-exit v8

    goto :goto_d7

    :catchall_d1
    move-exception v0

    monitor-exit v8
    :try_end_d3
    .catchall {:try_start_72 .. :try_end_d3} :catchall_d1

    throw v0

    .line 470
    .end local v4    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v5    # "numOfStats":I
    .end local v6    # "nativeTotalPss":J
    .local v1, "nativeTotalPss":J
    :catchall_d4
    move-exception v0

    :try_start_d5
    monitor-exit v3
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw v0

    .line 498
    .end local v1    # "nativeTotalPss":J
    :cond_d7
    :goto_d7
    const/4 v1, 0x0

    .line 499
    .local v1, "num":I
    const/4 v2, 0x3

    new-array v14, v2, [J

    .line 504
    .local v14, "tmp":[J
    :goto_db
    const/4 v2, -0x1

    .line 506
    .local v2, "pid":I
    iget-object v3, v15, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 507
    :try_start_df
    iget-object v4, v15, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_e5
    .catchall {:try_start_df .. :try_end_e5} :catchall_30b

    if-gtz v4, :cond_12a

    .line 508
    :try_start_e7
    iget-boolean v0, v15, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    if-nez v0, :cond_ef

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_11e

    .line 509
    :cond_ef
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collected pss of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " processes in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v17

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 509
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_11e
    iget-object v0, v15, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 514
    monitor-exit v3
    :try_end_124
    .catchall {:try_start_e7 .. :try_end_124} :catchall_125

    return-void

    .line 535
    :catchall_125
    move-exception v0

    move-object/from16 v31, v14

    goto/16 :goto_30e

    .line 516
    :cond_12a
    :try_start_12a
    iget-object v4, v15, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessProfileRecord;

    .line 517
    .local v4, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getPssProcState()I

    move-result v5

    move v10, v5

    .line 518
    .local v10, "procState":I
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getPssStatType()I

    move-result v12

    .line 519
    .local v12, "statType":I
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v5

    move-wide/from16 v20, v5

    .line 520
    .local v20, "lastPssTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 521
    .local v5, "now":J
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7
    :try_end_149
    .catchall {:try_start_12a .. :try_end_149} :catchall_30b

    const-wide/16 v8, 0x3e8

    if-eqz v7, :cond_161

    :try_start_14d
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v7

    if-ne v10, v7, :cond_161

    add-long v22, v20, v8

    cmp-long v7, v22, v5

    if-gez v7, :cond_161

    .line 523
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v7
    :try_end_15d
    .catchall {:try_start_14d .. :try_end_15d} :catchall_125

    move v2, v7

    move v13, v2

    move-object v11, v4

    goto :goto_198

    .line 525
    :cond_161
    :try_start_161
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 526
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z
    :try_end_166
    .catchall {:try_start_161 .. :try_end_166} :catchall_30b

    if-eqz v7, :cond_194

    .line 527
    :try_start_168
    const-string v7, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipped pss collection of "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ": still need "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-long v8, v20, v8

    sub-long/2addr v8, v5

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms until safe"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_194
    .catchall {:try_start_168 .. :try_end_194} :catchall_125

    .line 532
    :cond_194
    const/4 v4, 0x0

    .line 533
    const/4 v2, 0x0

    move v13, v2

    move-object v11, v4

    .line 535
    .end local v2    # "pid":I
    .end local v4    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v5    # "now":J
    .local v11, "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v13, "pid":I
    :goto_198
    :try_start_198
    monitor-exit v3
    :try_end_199
    .catchall {:try_start_198 .. :try_end_199} :catchall_305

    .line 536
    if-eqz v11, :cond_2f5

    .line 537
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v22

    .line 540
    .local v22, "startTime":J
    iget-object v2, v15, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v11, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->isCameraActiveForUid(I)Z

    move-result v24

    .line 541
    .local v24, "usingCamera":Z
    const-wide/16 v2, 0x0

    if-eqz v24, :cond_1af

    move-wide v4, v2

    goto :goto_1b3

    :cond_1af
    invoke-static {v13, v14, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v4

    :goto_1b3
    move-wide/from16 v25, v4

    .line 542
    .local v25, "pss":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v27

    .line 543
    .local v27, "endTime":J
    iget-object v8, v15, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v8

    .line 544
    cmp-long v2, v25, v2

    if-eqz v2, :cond_24f

    :try_start_1c0
    invoke-virtual {v11}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_24f

    .line 545
    invoke-virtual {v11}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v2

    if-ne v2, v10, :cond_237

    .line 546
    invoke-virtual {v11}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v2

    if-ne v2, v13, :cond_22a

    invoke-virtual {v11}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v2
    :try_end_1d6
    .catchall {:try_start_1c0 .. :try_end_1d6} :catchall_244

    cmp-long v2, v2, v20

    if-nez v2, :cond_22a

    .line 547
    add-int/lit8 v29, v1, 0x1

    .line 548
    .end local v1    # "num":I
    .local v29, "num":I
    :try_start_1dc
    invoke-virtual {v11}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime()V

    .line 549
    const/16 v16, 0x0

    aget-wide v6, v14, v16

    const/4 v1, 0x1

    aget-wide v30, v14, v1

    const/4 v1, 0x2

    aget-wide v32, v14, v1

    sub-long v34, v27, v22

    .line 550
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36
    :try_end_1ef
    .catchall {:try_start_1dc .. :try_end_1ef} :catchall_21d

    .line 549
    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v10

    move-wide/from16 v4, v25

    move-object/from16 v38, v8

    move-wide/from16 v8, v30

    move/from16 v43, v10

    move-object/from16 v30, v11

    .end local v10    # "procState":I
    .end local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v30, "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v43, "procState":I
    move-wide/from16 v10, v32

    move/from16 v44, v13

    move-object/from16 v31, v14

    move/from16 v32, v16

    .end local v13    # "pid":I
    .end local v14    # "tmp":[J
    .local v31, "tmp":[J
    .local v44, "pid":I
    move-wide/from16 v13, v34

    move-wide/from16 v15, v36

    :try_start_209
    invoke-direct/range {v1 .. v16}, Lcom/android/server/am/AppProfiler;->recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    :try_end_20c
    .catchall {:try_start_209 .. :try_end_20c} :catchall_214

    move/from16 v1, v29

    move/from16 v5, v43

    move/from16 v4, v44

    goto/16 :goto_2ea

    .line 564
    :catchall_214
    move-exception v0

    move/from16 v1, v29

    move/from16 v5, v43

    move/from16 v4, v44

    goto/16 :goto_2f1

    .end local v30    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v31    # "tmp":[J
    .end local v43    # "procState":I
    .end local v44    # "pid":I
    .restart local v10    # "procState":I
    .restart local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v13    # "pid":I
    .restart local v14    # "tmp":[J
    :catchall_21d
    move-exception v0

    move-object/from16 v38, v8

    move-object/from16 v30, v11

    move-object/from16 v31, v14

    move v5, v10

    move v4, v13

    move/from16 v1, v29

    .end local v10    # "procState":I
    .end local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v13    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v30    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v31    # "tmp":[J
    .restart local v43    # "procState":I
    .restart local v44    # "pid":I
    goto/16 :goto_2f1

    .line 546
    .end local v29    # "num":I
    .end local v30    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v31    # "tmp":[J
    .end local v43    # "procState":I
    .end local v44    # "pid":I
    .restart local v1    # "num":I
    .restart local v10    # "procState":I
    .restart local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v13    # "pid":I
    .restart local v14    # "tmp":[J
    :cond_22a
    move-object/from16 v38, v8

    move/from16 v43, v10

    move-object/from16 v30, v11

    move/from16 v44, v13

    move-object/from16 v31, v14

    const/16 v32, 0x0

    .end local v10    # "procState":I
    .end local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v13    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v30    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v31    # "tmp":[J
    .restart local v43    # "procState":I
    .restart local v44    # "pid":I
    goto :goto_25b

    .line 545
    .end local v30    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v31    # "tmp":[J
    .end local v43    # "procState":I
    .end local v44    # "pid":I
    .restart local v10    # "procState":I
    .restart local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v13    # "pid":I
    .restart local v14    # "tmp":[J
    :cond_237
    move-object/from16 v38, v8

    move/from16 v43, v10

    move-object/from16 v30, v11

    move/from16 v44, v13

    move-object/from16 v31, v14

    const/16 v32, 0x0

    .end local v10    # "procState":I
    .end local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v13    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v30    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v31    # "tmp":[J
    .restart local v43    # "procState":I
    .restart local v44    # "pid":I
    goto :goto_25b

    .line 564
    .end local v30    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v31    # "tmp":[J
    .end local v43    # "procState":I
    .end local v44    # "pid":I
    .restart local v10    # "procState":I
    .restart local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v13    # "pid":I
    .restart local v14    # "tmp":[J
    :catchall_244
    move-exception v0

    move-object/from16 v38, v8

    move-object/from16 v30, v11

    move-object/from16 v31, v14

    move v5, v10

    move v4, v13

    .end local v10    # "procState":I
    .end local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v13    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v30    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v31    # "tmp":[J
    .restart local v43    # "procState":I
    .restart local v44    # "pid":I
    goto/16 :goto_2f1

    .line 544
    .end local v30    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v31    # "tmp":[J
    .end local v43    # "procState":I
    .end local v44    # "pid":I
    .restart local v10    # "procState":I
    .restart local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v13    # "pid":I
    .restart local v14    # "tmp":[J
    :cond_24f
    move-object/from16 v38, v8

    move/from16 v43, v10

    move-object/from16 v30, v11

    move/from16 v44, v13

    move-object/from16 v31, v14

    const/16 v32, 0x0

    .line 552
    .end local v10    # "procState":I
    .end local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v13    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v30    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v31    # "tmp":[J
    .restart local v43    # "procState":I
    .restart local v44    # "pid":I
    :goto_25b
    :try_start_25b
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 553
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_2e6

    .line 554
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped pss collection of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_26f
    .catchall {:try_start_25b .. :try_end_26f} :catchall_2ec

    move/from16 v4, v44

    .end local v44    # "pid":I
    .local v4, "pid":I
    :try_start_271
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 555
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5
    :try_end_27f
    .catchall {:try_start_271 .. :try_end_27f} :catchall_2e2

    if-nez v5, :cond_289

    :try_start_281
    const-string v5, "NO_THREAD "
    :try_end_283
    .catchall {:try_start_281 .. :try_end_283} :catchall_284

    goto :goto_28b

    .line 564
    :catchall_284
    move-exception v0

    move/from16 v5, v43

    goto/16 :goto_2f1

    .line 555
    :cond_289
    :try_start_289
    const-string v5, ""

    :goto_28b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_28f
    .catchall {:try_start_289 .. :try_end_28f} :catchall_2e2

    .line 556
    if-eqz v24, :cond_294

    :try_start_291
    const-string v5, "CAMERA "
    :try_end_293
    .catchall {:try_start_291 .. :try_end_293} :catchall_284

    goto :goto_296

    :cond_294
    :try_start_294
    const-string v5, ""

    :goto_296
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 557
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v5
    :try_end_29e
    .catchall {:try_start_294 .. :try_end_29e} :catchall_2e2

    if-eq v5, v4, :cond_2a3

    :try_start_2a0
    const-string v5, "PID_CHANGED "
    :try_end_2a2
    .catchall {:try_start_2a0 .. :try_end_2a2} :catchall_284

    goto :goto_2a5

    :cond_2a3
    :try_start_2a3
    const-string v5, ""

    :goto_2a5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " initState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_2af
    .catchall {:try_start_2a3 .. :try_end_2af} :catchall_2e2

    move/from16 v5, v43

    .end local v43    # "procState":I
    .local v5, "procState":I
    :try_start_2b1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " curState="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 559
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 560
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v6

    cmp-long v6, v6, v20

    if-eqz v6, :cond_2d4

    .line 561
    const-string v6, "TIME_CHANGED"

    goto :goto_2d6

    :cond_2d4
    const-string v6, ""

    :goto_2d6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 554
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ea

    .line 564
    .end local v5    # "procState":I
    .restart local v43    # "procState":I
    :catchall_2e2
    move-exception v0

    move/from16 v5, v43

    .end local v43    # "procState":I
    .restart local v5    # "procState":I
    goto :goto_2f1

    .line 553
    .end local v4    # "pid":I
    .end local v5    # "procState":I
    .restart local v43    # "procState":I
    .restart local v44    # "pid":I
    :cond_2e6
    move/from16 v5, v43

    move/from16 v4, v44

    .line 564
    .end local v43    # "procState":I
    .end local v44    # "pid":I
    .restart local v4    # "pid":I
    .restart local v5    # "procState":I
    :goto_2ea
    monitor-exit v38

    goto :goto_2fd

    .end local v4    # "pid":I
    .end local v5    # "procState":I
    .restart local v43    # "procState":I
    .restart local v44    # "pid":I
    :catchall_2ec
    move-exception v0

    move/from16 v5, v43

    move/from16 v4, v44

    .end local v43    # "procState":I
    .end local v44    # "pid":I
    .restart local v4    # "pid":I
    .restart local v5    # "procState":I
    :goto_2f1
    monitor-exit v38
    :try_end_2f2
    .catchall {:try_start_2b1 .. :try_end_2f2} :catchall_2f3

    throw v0

    :catchall_2f3
    move-exception v0

    goto :goto_2f1

    .line 536
    .end local v4    # "pid":I
    .end local v5    # "procState":I
    .end local v22    # "startTime":J
    .end local v24    # "usingCamera":Z
    .end local v25    # "pss":J
    .end local v27    # "endTime":J
    .end local v30    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v31    # "tmp":[J
    .restart local v10    # "procState":I
    .restart local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v13    # "pid":I
    .restart local v14    # "tmp":[J
    :cond_2f5
    move v5, v10

    move-object/from16 v30, v11

    move v4, v13

    move-object/from16 v31, v14

    const/16 v32, 0x0

    .line 566
    .end local v10    # "procState":I
    .end local v11    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v12    # "statType":I
    .end local v13    # "pid":I
    .end local v14    # "tmp":[J
    .end local v20    # "lastPssTime":J
    .restart local v31    # "tmp":[J
    :goto_2fd
    move-object/from16 v15, p0

    move-object/from16 v14, v31

    move/from16 v13, v32

    goto/16 :goto_db

    .line 535
    .end local v31    # "tmp":[J
    .restart local v13    # "pid":I
    .restart local v14    # "tmp":[J
    :catchall_305
    move-exception v0

    move v4, v13

    move-object/from16 v31, v14

    move v2, v4

    .end local v13    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v4    # "pid":I
    .restart local v31    # "tmp":[J
    goto :goto_30e

    .end local v4    # "pid":I
    .end local v31    # "tmp":[J
    .restart local v2    # "pid":I
    .restart local v14    # "tmp":[J
    :catchall_30b
    move-exception v0

    move-object/from16 v31, v14

    .end local v14    # "tmp":[J
    .restart local v31    # "tmp":[J
    :goto_30e
    :try_start_30e
    monitor-exit v3
    :try_end_30f
    .catchall {:try_start_30e .. :try_end_30f} :catchall_310

    throw v0

    :catchall_310
    move-exception v0

    goto :goto_30e

    .line 461
    .end local v1    # "num":I
    .end local v2    # "pid":I
    .end local v31    # "tmp":[J
    :catchall_312
    move-exception v0

    move-object/from16 v1, v19

    goto :goto_317

    .end local v19    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v1, "memInfo":Lcom/android/internal/util/MemInfoReader;
    :catchall_316
    move-exception v0

    :goto_317
    :try_start_317
    monitor-exit v2
    :try_end_318
    .catchall {:try_start_317 .. :try_end_318} :catchall_316

    throw v0
.end method

.method private deferPssForActivityStart()V
    .registers 5

    .line 863
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    .line 864
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_13

    .line 865
    const-string v0, "ActivityManager"

    const-string v1, "Deferring PSS collection for activity start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 868
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->deferPssIfNeededLPf()V

    .line 869
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_28

    .line 870
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 871
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2b

    .line 869
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1

    .line 873
    :cond_2b
    :goto_2b
    return-void
.end method

.method private deferPssIfNeededLPf()V
    .registers 5

    .line 856
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 857
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 858
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 860
    :cond_15
    return-void
.end method

.method private handleMemoryPressureChangedLocked(II)V
    .registers 10
    .param p1, "oldMemFactor"    # I
    .param p2, "newMemFactor"    # I

    .line 1760
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 1761
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1760
    const-string/jumbo v4, "mem-pressure-event"

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartOnMemoryPressureIfNeededLocked(IILjava/lang/String;J)V

    .line 1762
    return-void
.end method

.method static synthetic lambda$collectPssInBackground$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 468
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static synthetic lambda$getCpuStats$6(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 3
    .param p0, "predicate"    # Ljava/util/function/Predicate;
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 2034
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$recordPssSampleLPf$1(Lcom/android/server/am/ProcessRecord;JJJIJLcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 31
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "rss"    # J
    .param p7, "statType"    # I
    .param p8, "pssDuration"    # J
    .param p10, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p11, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-object/from16 v0, p11

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move-wide/from16 v12, p8

    .line 607
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 609
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 610
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 614
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessProfileRecord;->getCurrentHostingComponentTypes()I

    move-result v16

    .line 615
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessProfileRecord;->getHistoricalHostingComponentTypes()I

    move-result v17

    .line 607
    const/16 v18, 0x12

    move/from16 v1, v18

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJIJJII)V

    .line 616
    return-void
.end method

.method private static makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "procName"    # Ljava/lang/String;

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.shell.heapdump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_javaheap.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1209
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1210
    .local v0, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    .line 1211
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1212
    .local v1, "thread":Landroid/app/IApplicationThread;
    if-eqz v1, :cond_20

    .line 1213
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1214
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1215
    invoke-interface {v1}, Landroid/app/IApplicationThread;->scheduleLowMemory()V

    goto :goto_20

    .line 1217
    :cond_1d
    invoke-interface {v1}, Landroid/app/IApplicationThread;->processInBackground()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 1222
    .end local v0    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v1    # "thread":Landroid/app/IApplicationThread;
    :cond_20
    :goto_20
    goto :goto_22

    .line 1220
    :catch_21
    move-exception v0

    .line 1223
    :goto_22
    return-void
.end method

.method private performAppGcsLPf()V
    .registers 7

    .line 1231
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 1232
    return-void

    .line 1234
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_49

    .line 1235
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1236
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1237
    .local v1, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getCurRawAdj()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_2c

    .line 1238
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_2c

    .line 1253
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :cond_2b
    goto :goto_9

    .line 1239
    .restart local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    .line 1240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_46

    .line 1243
    invoke-direct {p0, v0}, Lcom/android/server/am/AppProfiler;->performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1244
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1245
    return-void

    .line 1249
    :cond_46
    invoke-direct {p0, v0}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1255
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1256
    return-void
.end method

.method private recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    .registers 49
    .param p1, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p2, "procState"    # I
    .param p3, "pss"    # J
    .param p5, "uss"    # J
    .param p7, "swapPss"    # J
    .param p9, "rss"    # J
    .param p11, "statType"    # I
    .param p12, "pssDuration"    # J
    .param p14, "now"    # J

    .line 593
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p3

    move-wide/from16 v10, p7

    move-wide/from16 v8, p9

    iget-object v12, v13, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 594
    .local v12, "proc":Lcom/android/server/am/ProcessRecord;
    nop

    .line 595
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v16

    iget v1, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v31, 0x400

    mul-long v19, v14, v31

    mul-long v21, p5, v31

    mul-long v23, v10, v31

    mul-long v25, v8, v31

    .line 594
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v27, p11

    move/from16 v28, p2

    move-wide/from16 v29, p12

    invoke-static/range {v16 .. v30}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    .line 597
    move-wide/from16 v6, p14

    invoke-virtual {v13, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastPssTime(J)V

    .line 598
    const/16 v16, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    move/from16 v8, v16

    move/from16 v9, p11

    move-wide/from16 v10, p12

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 600
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    if-lez v1, :cond_65

    .line 601
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 602
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/16 v2, 0x5c

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 606
    :cond_65
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v10

    new-instance v11, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;

    move-object v1, v11

    move-object v2, v12

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    move/from16 v9, p11

    move-object v0, v10

    move-object v13, v11

    move-wide/from16 v10, p12

    move-object/from16 v16, v12

    .end local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessRecord;JJJIJLcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v0, v13}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    .line 617
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_ca

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pss of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 619
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lastPss="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 620
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_ca
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePss()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_da

    .line 624
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ProcessProfileRecord;->setInitialIdlePss(J)V

    goto :goto_dc

    .line 623
    :cond_da
    move-object/from16 v0, p1

    .line 626
    :goto_dc
    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ProcessProfileRecord;->setLastPss(J)V

    .line 627
    move-wide/from16 v2, p7

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastSwapPss(J)V

    .line 628
    const/16 v4, 0xe

    move/from16 v5, p2

    if-lt v5, v4, :cond_f0

    .line 629
    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedPss(J)V

    .line 630
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedSwapPss(J)V

    .line 632
    :cond_f0
    move-wide/from16 v6, p9

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    .line 634
    move-object/from16 v4, p0

    iget-object v8, v4, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 635
    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    move-object/from16 v9, v16

    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v9, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 636
    .local v8, "watchUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .line 637
    .local v10, "check":Ljava/lang/Long;
    const/4 v11, 0x0

    if-eqz v8, :cond_123

    .line 638
    iget v12, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 639
    .local v12, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v12, :cond_11c

    .line 640
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v12, v13

    check-cast v12, Landroid/util/Pair;

    .line 642
    :cond_11c
    if-eqz v12, :cond_123

    .line 643
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v13

    check-cast v10, Ljava/lang/Long;

    .line 646
    .end local v12    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_123
    if-eqz v10, :cond_191

    .line 647
    mul-long v12, v14, v31

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v12, v12, v16

    if-ltz v12, :cond_191

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v12

    if-eqz v12, :cond_191

    iget-object v12, v4, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    if-nez v12, :cond_191

    .line 649
    sget-boolean v12, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v13, " exceeded pss limit "

    const-string v11, "Process "

    if-nez v12, :cond_16b

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v12

    if-eqz v12, :cond_148

    goto :goto_16b

    .line 653
    :cond_148
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", but debugging not enabled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_191

    .line 650
    :cond_16b
    :goto_16b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; reporting"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    .line 658
    :cond_191
    :goto_191
    return-void
.end method

.method private requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z
    .registers 11
    .param p1, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p2, "procState"    # I

    .line 831
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 832
    return v1

    .line 834
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, "ActivityManager"

    const/4 v3, 0x1

    if-nez v0, :cond_53

    .line 835
    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_28

    .line 836
    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    goto :goto_29

    :cond_28
    move-wide v4, v6

    .line 837
    .local v4, "deferral":J
    :goto_29
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_4e

    cmp-long v0, v4, v6

    if-lez v0, :cond_4e

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestPssLPf() deferring PSS request by "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " ms"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_4e
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 843
    .end local v4    # "deferral":J
    :cond_53
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting pss of: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_6f
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    .line 845
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 846
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    return v3
.end method

.method private stopDeferPss()V
    .registers 5

    .line 876
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 877
    .local v0, "nesting":I
    const-string v1, "ActivityManager"

    if-gtz v0, :cond_31

    .line 878
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_24

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSS activity start deferral interval ended; now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_24
    if-gez v0, :cond_4b

    .line 883
    const-string v2, "Activity start nesting undercount!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_4b

    .line 887
    :cond_31
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_4b

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still deferring PSS, nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_4b
    :goto_4b
    return-void
.end method

.method private stopProfilerLPf(Lcom/android/server/am/ProcessRecord;I)V
    .registers 7
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "profileType"    # I

    .line 1766
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-ne p1, v0, :cond_15

    .line 1767
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 1768
    iget p2, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 1769
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 1771
    :cond_15
    if-nez p1, :cond_18

    .line 1772
    return-void

    .line 1774
    :cond_18
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 1775
    .local v0, "thread":Landroid/app/IApplicationThread;
    if-nez v0, :cond_21

    .line 1776
    return-void

    .line 1779
    :cond_21
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_23
    invoke-interface {v0, v1, v2, p2}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_28

    .line 1782
    nop

    .line 1783
    return-void

    .line 1780
    :catch_28
    move-exception v1

    .line 1781
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Process disappeared"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private trimMemoryUiHiddenIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1177
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_11

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1178
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_11
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1182
    const/16 v0, 0x14

    .line 1184
    .local v0, "level":I
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_5d

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    move-object v3, v1

    .local v3, "thread":Landroid/app/IApplicationThread;
    if-eqz v1, :cond_5d

    .line 1186
    :try_start_2c
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_34

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_58

    .line 1187
    :cond_34
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trimming memory of bg-ui "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_58
    invoke-interface {v3, v2}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_5b} :catch_5c

    .line 1192
    goto :goto_5d

    .line 1191
    :catch_5c
    move-exception v1

    .line 1194
    .end local v3    # "thread":Landroid/app/IApplicationThread;
    :cond_5d
    :goto_5d
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V

    .line 1196
    .end local v0    # "level":I
    :cond_63
    return-void
.end method


# virtual methods
.method allowLowerMemLevelLocked()Z
    .registers 2

    .line 988
    iget-boolean v0, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    return v0
.end method

.method buildDropboxString(Lcom/android/server/am/MemUsageBuilder;)Ljava/lang/String;
    .registers 22
    .param p1, "builder"    # Lcom/android/server/am/MemUsageBuilder;

    .line 1728
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v0

    .line 1729
    .local v3, "dropBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v4

    .line 1730
    .local v4, "psi":Ljava/lang/String;
    iget-object v0, v2, Lcom/android/server/am/MemUsageBuilder;->title:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    iget-object v0, v2, Lcom/android/server/am/MemUsageBuilder;->stack:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    iget-object v0, v2, Lcom/android/server/am/MemUsageBuilder;->fullNative:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    iget-object v0, v2, Lcom/android/server/am/MemUsageBuilder;->fullJava:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1735
    iget-object v0, v2, Lcom/android/server/am/MemUsageBuilder;->summary:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1736
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v5, v0

    .line 1737
    .local v5, "catSw":Ljava/io/StringWriter;
    iget-object v6, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_4b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1738
    new-instance v9, Lcom/android/internal/util/FastPrintWriter;

    const/16 v0, 0x100

    const/4 v7, 0x0

    invoke-direct {v9, v5, v7, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1739
    .local v9, "catPw":Ljava/io/PrintWriter;
    new-array v10, v7, [Ljava/lang/String;

    .line 1740
    .local v10, "emptyArgs":[Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1741
    iget-object v15, v1, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v15
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_b7

    :try_start_5e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1742
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/am/ProcessList;->dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V

    .line 1743
    monitor-exit v15
    :try_end_6e
    .catchall {:try_start_5e .. :try_end_6e} :catchall_b1

    :try_start_6e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1744
    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1745
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v9

    move-object v14, v10

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ActiveServices;->newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-result-object v0

    .line 1746
    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpLocked()V

    .line 1747
    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1748
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v12, "activities"

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v9

    move-object v15, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1750
    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 1751
    .end local v9    # "catPw":Ljava/io/PrintWriter;
    .end local v10    # "emptyArgs":[Ljava/lang/String;
    monitor-exit v6
    :try_end_a2
    .catchall {:try_start_6e .. :try_end_a2} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1752
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1743
    .restart local v9    # "catPw":Ljava/io/PrintWriter;
    .restart local v10    # "emptyArgs":[Ljava/lang/String;
    :catchall_b1
    move-exception v0

    :try_start_b2
    monitor-exit v15
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    :try_start_b3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v3    # "dropBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "psi":Ljava/lang/String;
    .end local v5    # "catSw":Ljava/io/StringWriter;
    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    .end local p1    # "builder":Lcom/android/server/am/MemUsageBuilder;
    throw v0

    .line 1751
    .end local v9    # "catPw":Ljava/io/PrintWriter;
    .end local v10    # "emptyArgs":[Ljava/lang/String;
    .restart local v3    # "dropBuilder":Ljava/lang/StringBuilder;
    .restart local v4    # "psi":Ljava/lang/String;
    .restart local v5    # "catSw":Ljava/io/StringWriter;
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    .restart local p1    # "builder":Lcom/android/server/am/MemUsageBuilder;
    :catchall_b7
    move-exception v0

    monitor-exit v6
    :try_end_b9
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method clearProfilerLPf()V
    .registers 3

    .line 1787
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 1788
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1f

    .line 1790
    :try_start_12
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 1792
    goto :goto_1f

    .line 1791
    :catch_1e
    move-exception v0

    .line 1794
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1796
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 1797
    return-void
.end method

.method clearProfilerLPf(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1801
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 1802
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 1803
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eq v0, p1, :cond_19

    goto :goto_1d

    .line 1806
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 1807
    return-void

    .line 1804
    :cond_1d
    :goto_1d
    return-void
.end method

.method final doLowMemReportIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 16
    .param p1, "dyingProc"    # Lcom/android/server/am/ProcessRecord;

    .line 1320
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->haveBackgroundProcessLOSP()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1321
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1322
    .local v0, "doReport":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1323
    .local v7, "now":J
    if-eqz v0, :cond_20

    .line 1324
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    cmp-long v1, v7, v1

    if-gez v1, :cond_1e

    .line 1325
    const/4 v0, 0x0

    goto :goto_20

    .line 1327
    :cond_1e
    iput-wide v7, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 1330
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v9

    .line 1331
    .local v9, "lruSize":I
    if-eqz v0, :cond_30

    .line 1332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    move-object v10, v1

    .line 1333
    .local v10, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    invoke-static {v9}, Lcom/android/server/am/EventLogTags;->writeAmLowMemory(I)V

    .line 1334
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v12, 0x0

    new-instance v13, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object v4, v10

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;J)V

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1362
    if-eqz v0, :cond_5a

    .line 1363
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1364
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1367
    .end local v0    # "doReport":Z
    .end local v1    # "msg":Landroid/os/Message;
    .end local v7    # "now":J
    .end local v9    # "lruSize":I
    .end local v10    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    :cond_5a
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1368
    :try_start_5d
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1369
    monitor-exit v0

    .line 1370
    return-void

    .line 1369
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_62

    throw v1
.end method

.method dumpHeapFinished(Ljava/lang/String;I)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callerPid"    # I

    .line 718
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_3
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    if-eq p2, v1, :cond_31

    .line 720
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpHeapFinished: Calling pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match last pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    monitor-exit v0

    return-void

    .line 724
    :cond_31
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_6e

    .line 729
    :cond_40
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_5c

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump heap finished for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_5c
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    .line 734
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 735
    monitor-exit v0

    .line 736
    return-void

    .line 725
    :cond_6e
    :goto_6e
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpHeapFinished: Calling path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match last path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    monitor-exit v0

    return-void

    .line 735
    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    throw v1
.end method

.method dumpLastMemoryLevelLocked(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2339
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    packed-switch v0, :pswitch_data_2a

    .line 2353
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2354
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_29

    .line 2350
    :pswitch_e
    const-string v0, "critical)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    goto :goto_29

    .line 2347
    :pswitch_14
    const-string/jumbo v0, "low)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2348
    goto :goto_29

    .line 2344
    :pswitch_1b
    const-string/jumbo v0, "moderate)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2345
    goto :goto_29

    .line 2341
    :pswitch_22
    const-string/jumbo v0, "normal)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2342
    nop

    .line 2357
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1b
        :pswitch_14
        :pswitch_e
    .end packed-switch
.end method

.method dumpMemWatchProcessesLPf(Ljava/io/PrintWriter;Z)Z
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "needSep"    # Z

    .line 2276
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_ba

    .line 2277
    const-string v0, "  Mem watch processes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 2279
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2280
    .local v0, "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1d
    if-ltz v1, :cond_88

    .line 2281
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2282
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2283
    .local v3, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_31
    if-ltz v4, :cond_85

    .line 2284
    if-eqz p2, :cond_39

    .line 2285
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2286
    const/4 p2, 0x0

    .line 2288
    :cond_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2289
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2290
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2291
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2292
    .local v6, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 2293
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_7b

    .line 2294
    const-string v7, ", report to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    :cond_7b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2283
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    add-int/lit8 v4, v4, -0x1

    goto :goto_31

    .line 2280
    .end local v2    # "proc":Ljava/lang/String;
    .end local v3    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v4    # "j":I
    :cond_85
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 2299
    .end local v1    # "i":I
    :cond_88
    const-string v1, "  mMemWatchDumpProcName="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2300
    const-string v1, "  mMemWatchDumpUri="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2301
    const-string v1, "  mMemWatchDumpPid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2302
    const-string v1, "  mMemWatchDumpUid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2303
    const-string v1, "  mMemWatchIsUserInitiated="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2305
    .end local v0    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_ba
    return p2
.end method

.method dumpMemoryLevelsLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowLowerMemLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastMemoryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastNumProcesses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2364
    return-void
.end method

.method dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "needSep"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 2495
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_73

    .line 2496
    const/4 v0, 0x0

    .line 2497
    .local v0, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2498
    .local v1, "now":J
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_14
    if-ge v3, v4, :cond_73

    .line 2499
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 2500
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz p3, :cond_2b

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 2501
    goto :goto_70

    .line 2503
    :cond_2b
    if-nez v0, :cond_39

    .line 2504
    if-eqz p2, :cond_32

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2505
    :cond_32
    const/4 p2, 0x1

    .line 2506
    const-string v6, "  Processes that are waiting to GC:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2507
    const/4 v0, 0x1

    .line 2509
    :cond_39
    const-string v6, "    Process "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2510
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2511
    .local v6, "profile":Lcom/android/server/am/ProcessProfileRecord;
    const-string v7, "      lowMem="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 2512
    const-string v7, ", last gced="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v7

    sub-long v7, v1, v7

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2514
    const-string v7, " ms ago, last lowMem="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2515
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v7

    sub-long v7, v1, v7

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2516
    const-string v7, " ms ago"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2498
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2520
    .end local v0    # "printed":Z
    .end local v1    # "now":J
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_73
    return p2
.end method

.method dumpProfileDataLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z

    .line 2310
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2311
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2312
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2313
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_fe

    .line 2314
    :cond_2c
    if-eqz p2, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 2315
    :cond_3a
    if-eqz p3, :cond_40

    .line 2316
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2317
    const/4 p3, 0x0

    .line 2319
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProfileApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProfileProc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2320
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2319
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2321
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_fe

    .line 2322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProfileFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProfileFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2323
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2322
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSamplingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2325
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAutoStopProfiler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2327
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStreamingOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2329
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2324
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProfileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2334
    :cond_fe
    return p3
.end method

.method forAllCpuStats(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)V"
        }
    .end annotation

    .line 2039
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2040
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    .line 2041
    .local v1, "numOfStats":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_18

    .line 2042
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2041
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2044
    .end local v1    # "numOfStats":I
    .end local v2    # "i":I
    :cond_18
    monitor-exit v0

    .line 2045
    return-void

    .line 2044
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method getAppProfileStatsForDebugging(JI)Landroid/util/Pair;
    .registers 10
    .param p1, "time"    # J
    .param p3, "linesOfStats"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2452
    const/4 v0, 0x0

    .line 2453
    .local v0, "cpuLoad":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2454
    .local v1, "stats":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v2

    .line 2455
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 2456
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 2457
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2458
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_39

    .line 2460
    const/4 v2, 0x0

    .line 2461
    .local v2, "toIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-gt v3, p3, :cond_2e

    .line 2462
    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2463
    .local v4, "nextIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_29

    .line 2464
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2465
    goto :goto_2e

    .line 2467
    :cond_29
    add-int/lit8 v2, v4, 0x1

    .line 2461
    .end local v4    # "nextIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2469
    .end local v3    # "i":I
    :cond_2e
    :goto_2e
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 2458
    .end local v2    # "toIndex":I
    :catchall_39
    move-exception v3

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v3
.end method

.method getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 2033
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2034
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v2, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2035
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method getCpuTimeForPid(I)J
    .registers 5
    .param p1, "pid"    # I

    .line 2027
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2028
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2029
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getLastMemoryLevelLocked()I
    .registers 3

    .line 959
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 960
    return v0

    .line 962
    :cond_6
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    return v0
.end method

.method getLowRamTimeSinceIdleLPr(J)J
    .registers 10
    .param p1, "now"    # J

    .line 1200
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_c

    sub-long v4, p1, v2

    :cond_c
    add-long/2addr v0, v4

    return-wide v0
.end method

.method getProcessCpuTrackerLocked()Lcom/android/internal/os/ProcessCpuTracker;
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object v0
.end method

.method getTestPssMode()Z
    .registers 2

    .line 954
    iget-boolean v0, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    return v0
.end method

.method handleAbortDumpHeap(Ljava/lang/String;)V
    .registers 4
    .param p1, "procName"    # Ljava/lang/String;

    .line 809
    if-eqz p1, :cond_1c

    .line 810
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 812
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 813
    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 814
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 815
    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 817
    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v1

    .line 819
    :cond_1c
    :goto_1c
    return-void
.end method

.method handlePostDumpHeapNotification()V
    .registers 10

    .line 744
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_3
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 746
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 747
    .local v2, "procName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 748
    .local v3, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v3, :cond_1b

    .line 749
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    move-object v3, v4

    .line 751
    :cond_1b
    if-eqz v3, :cond_2a

    .line 752
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 753
    .local v4, "memLimit":J
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "reportPackage":Ljava/lang/String;
    goto :goto_2d

    .line 755
    .end local v4    # "memLimit":J
    .end local v6    # "reportPackage":Ljava/lang/String;
    :cond_2a
    const-wide/16 v4, 0x0

    .line 756
    .restart local v4    # "memLimit":J
    const/4 v6, 0x0

    .line 758
    .restart local v6    # "reportPackage":Ljava/lang/String;
    :goto_2d
    iget-boolean v7, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 760
    .local v7, "isUserInitiated":Z
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 761
    iput-object v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 762
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 763
    iput v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 764
    .end local v3    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_94

    .line 765
    if-nez v2, :cond_3d

    .line 766
    return-void

    .line 769
    :cond_3d
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_63

    .line 770
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing dump heap notification from "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_63
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, "dumpFinishedIntent":Landroid/content/Intent;
    const-string v3, "com.android.shell"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 777
    const-string v3, "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 778
    const-string v3, "com.android.internal.extra.heap_dump.SIZE_BYTES"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 779
    const-string v3, "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    const-string v3, "com.android.internal.extra.heap_dump.PROCESS_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 783
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 782
    invoke-virtual {v3, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 784
    return-void

    .line 764
    .end local v0    # "dumpFinishedIntent":Landroid/content/Intent;
    .end local v1    # "uid":I
    .end local v2    # "procName":Ljava/lang/String;
    .end local v4    # "memLimit":J
    .end local v6    # "reportPackage":Ljava/lang/String;
    .end local v7    # "isUserInitiated":Z
    :catchall_94
    move-exception v1

    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v1
.end method

.method isLastMemoryLevelNormal()Z
    .registers 5

    .line 967
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    .line 968
    if-gtz v0, :cond_a

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    return v1

    .line 970
    :cond_c
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-gtz v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method synthetic lambda$doLowMemReportIfNeededLocked$5$com-android-server-am-AppProfiler(Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V
    .registers 15
    .param p1, "dyingProc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "memInfos"    # Ljava/util/ArrayList;
    .param p3, "now"    # J
    .param p5, "rec"    # Lcom/android/server/am/ProcessRecord;

    .line 1335
    if-eq p5, p1, :cond_6a

    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_6a

    .line 1338
    :cond_9
    iget-object v0, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1339
    .local v0, "state":Lcom/android/server/am/ProcessStateRecord;
    if-eqz p2, :cond_2c

    .line 1340
    new-instance v8, Lcom/android/server/am/ProcessMemInfo;

    iget-object v2, p5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    .line 1341
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v5

    .line 1342
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    :cond_2c
    iget-object v1, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1345
    .local v1, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p3

    if-gtz v2, :cond_69

    .line 1349
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1350
    :try_start_40
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    const/16 v4, 0x190

    if-gt v3, v4, :cond_4e

    .line 1351
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    goto :goto_55

    .line 1353
    :cond_4e
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    .line 1355
    :goto_55
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1356
    invoke-virtual {v1, p3, p4}, Lcom/android/server/am/ProcessProfileRecord;->setLastLowMemory(J)V

    .line 1357
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1358
    invoke-direct {p0, p5}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1359
    monitor-exit v2

    goto :goto_69

    :catchall_66
    move-exception v3

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_40 .. :try_end_68} :catchall_66

    throw v3

    .line 1361
    :cond_69
    :goto_69
    return-void

    .line 1336
    .end local v0    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :cond_6a
    :goto_6a
    return-void
.end method

.method synthetic lambda$requestPssAllProcsLPr$2$com-android-server-am-AppProfiler(ZZJLcom/android/server/am/ProcessRecord;)V
    .registers 15
    .param p1, "memLowered"    # Z
    .param p2, "always"    # Z
    .param p3, "now"    # J
    .param p5, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 917
    iget-object v6, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 918
    .local v6, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 919
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_11

    goto :goto_48

    .line 922
    :cond_11
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v7

    .line 923
    .local v7, "lastStateTime":J
    if-nez p1, :cond_28

    if-eqz p2, :cond_20

    const-wide/16 v0, 0x3e8

    add-long/2addr v0, v7

    cmp-long v0, p3, v0

    if-gtz v0, :cond_28

    :cond_20
    const-wide/32 v0, 0x124f80

    add-long/2addr v0, v7

    cmp-long v0, p3, v0

    if-lez v0, :cond_47

    .line 926
    :cond_28
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    .line 927
    if-eqz p2, :cond_33

    const/4 v0, 0x2

    goto :goto_34

    .line 928
    :cond_33
    const/4 v0, 0x1

    .line 927
    :goto_34
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 929
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, v6

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 930
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_47
    return-void

    .line 920
    .end local v7    # "lastStateTime":J
    :cond_48
    :goto_48
    return-void
.end method

.method synthetic lambda$updateLowMemStateLSP$3$com-android-server-am-AppProfiler(ZI[I[IIILcom/android/server/am/ProcessRecord;)V
    .registers 23
    .param p1, "allChanged"    # Z
    .param p2, "trackerMemFactor"    # I
    .param p3, "curLevel"    # [I
    .param p4, "step"    # [I
    .param p5, "actualFactor"    # I
    .param p6, "fgTrimLevel"    # I
    .param p7, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1084
    move-object v1, p0

    move/from16 v2, p6

    move-object/from16 v3, p7

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1085
    .local v4, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v5

    .line 1086
    .local v5, "trimMemoryLevel":I
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1087
    .local v6, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v7

    .line 1089
    .local v7, "curProcState":I
    const/4 v8, 0x0

    if-nez p1, :cond_1e

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->hasProcStateChanged()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1e

    :cond_1b
    move/from16 v9, p2

    goto :goto_28

    .line 1090
    :cond_1e
    :goto_1e
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v9, p2

    invoke-virtual {v0, v3, v9}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 1091
    invoke-virtual {v6, v8}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 1093
    :goto_28
    invoke-direct {p0, v3}, Lcom/android/server/am/AppProfiler;->trimMemoryUiHiddenIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1094
    const/16 v0, 0xe

    const-string v10, " to "

    const-string v11, "ActivityManager"

    const/16 v12, 0x28

    if-lt v7, v0, :cond_ab

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 1095
    aget v0, p3, v8

    if-ge v5, v0, :cond_89

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move-object v13, v0

    .local v13, "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_89

    .line 1097
    :try_start_46
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_4e

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_70

    .line 1098
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Trimming memory of "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v14, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v10, p3, v8

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_70
    invoke-static {}, Lcom/android/server/am/AppProfilerStub;->getInstance()Lcom/android/server/am/AppProfilerStub;

    move-result-object v0

    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v0, v10}, Lcom/android/server/am/AppProfilerStub;->ctsTestTrimMemActivityBgWk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1104
    const/16 v0, 0x50

    invoke-interface {v13, v0}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    goto :goto_87

    .line 1107
    :cond_82
    aget v0, p3, v8

    invoke-interface {v13, v0}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_87} :catch_88

    .line 1110
    :goto_87
    goto :goto_89

    .line 1109
    :catch_88
    move-exception v0

    .line 1112
    .end local v13    # "thread":Landroid/app/IApplicationThread;
    :cond_89
    :goto_89
    aget v0, p3, v8

    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    .line 1113
    aget v0, p4, v8

    add-int/lit8 v0, v0, 0x1

    aput v0, p4, v8

    .line 1114
    aget v0, p4, v8

    move/from16 v13, p5

    if-lt v0, v13, :cond_12a

    .line 1115
    aput v8, p4, v8

    .line 1116
    aget v0, p3, v8

    sparse-switch v0, :sswitch_data_12c

    goto :goto_a9

    .line 1118
    :sswitch_a2
    const/16 v0, 0x3c

    aput v0, p3, v8

    .line 1119
    goto :goto_a9

    .line 1121
    :sswitch_a7
    aput v12, p3, v8

    .line 1122
    :goto_a9
    goto/16 :goto_12a

    .line 1094
    :cond_ab
    move/from16 v13, p5

    .line 1125
    const/16 v0, 0xd

    if-ne v7, v0, :cond_f1

    .line 1126
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_f1

    .line 1127
    if-ge v5, v12, :cond_ed

    .line 1128
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move-object v8, v0

    .local v8, "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_ed

    .line 1130
    :try_start_c0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_c8

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_e8

    .line 1131
    :cond_c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Trimming memory of heavy-weight "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v14, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_e8
    invoke-interface {v8, v12}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_eb} :catch_ec

    .line 1138
    goto :goto_ed

    .line 1137
    :catch_ec
    move-exception v0

    .line 1140
    .end local v8    # "thread":Landroid/app/IApplicationThread;
    :cond_ed
    :goto_ed
    invoke-virtual {v4, v12}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    goto :goto_12a

    .line 1142
    :cond_f1
    if-ge v5, v2, :cond_127

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move-object v8, v0

    .restart local v8    # "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_127

    .line 1144
    :try_start_fa
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_102

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_122

    .line 1145
    :cond_102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Trimming memory of fg "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v12, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_122
    invoke-interface {v8, v2}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_125
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_125} :catch_126

    .line 1150
    goto :goto_127

    .line 1149
    :catch_126
    move-exception v0

    .line 1152
    .end local v8    # "thread":Landroid/app/IApplicationThread;
    :cond_127
    :goto_127
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    .line 1154
    :cond_12a
    :goto_12a
    return-void

    nop

    :sswitch_data_12c
    .sparse-switch
        0x3c -> :sswitch_a7
        0x50 -> :sswitch_a2
    .end sparse-switch
.end method

.method synthetic lambda$updateLowMemStateLSP$4$com-android-server-am-AppProfiler(ZILcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "allChanged"    # Z
    .param p2, "trackerMemFactor"    # I
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1161
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1163
    .local v0, "profile":Lcom/android/server/am/ProcessProfileRecord;
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1164
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    const/4 v2, 0x0

    if-nez p1, :cond_d

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->hasProcStateChanged()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1165
    :cond_d
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p3, p2}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 1166
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 1168
    :cond_15
    invoke-direct {p0, p3}, Lcom/android/server/am/AppProfiler;->trimMemoryUiHiddenIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1169
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    .line 1170
    return-void
.end method

.method onActivityLaunched()V
    .registers 5

    .line 2158
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 2159
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2160
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2162
    .end local v0    # "msg":Landroid/os/Message;
    :cond_14
    return-void
.end method

.method onActivityManagerInternalAdded()V
    .registers 4

    .line 2140
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2145
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_c

    .line 2150
    nop

    .line 2151
    return-void

    .line 2146
    :catch_c
    move-exception v0

    .line 2147
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ActivityManager"

    const-string v2, "Interrupted wait during start"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2149
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method onAppDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2267
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2268
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-ne v1, p1, :cond_e

    .line 2269
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 2271
    :cond_e
    monitor-exit v0

    .line 2272
    return-void

    .line 2271
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method onCleanupApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2257
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2258
    :try_start_3
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2259
    .local v1, "profile":Lcom/android/server/am/ProcessProfileRecord;
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2260
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2261
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 2262
    .end local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    monitor-exit v0

    .line 2263
    return-void

    .line 2262
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method final performAppGcsIfAppropriateLocked()V
    .registers 3

    .line 1263
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1264
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canGcNowLocked()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1265
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsLPf()V

    .line 1266
    monitor-exit v0

    return-void

    .line 1269
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1270
    monitor-exit v0

    .line 1271
    return-void

    .line 1270
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method printCurrentCpuState(Ljava/lang/StringBuilder;J)V
    .registers 6
    .param p1, "report"    # Ljava/lang/StringBuilder;
    .param p2, "time"    # J

    .line 2446
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2447
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    monitor-exit v0

    .line 2449
    return-void

    .line 2448
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method profileControlLPf(Lcom/android/server/am/ProcessRecord;ZLandroid/app/ProfilerInfo;I)Z
    .registers 10
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "start"    # Z
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "profileType"    # I

    .line 1813
    if-eqz p2, :cond_56

    .line 1814
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1, v0}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;I)V

    .line 1815
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1816
    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v4, :cond_16

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    goto :goto_17

    :cond_16
    move-object v4, v1

    .line 1815
    :goto_17
    invoke-virtual {v0, v2, v3, p3, v4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 1817
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1818
    iput p4, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 1819
    iget-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_23} :catch_77
    .catchall {:try_start_4 .. :try_end_23} :catchall_75

    .line 1821
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_23
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_29
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_27} :catch_77
    .catchall {:try_start_23 .. :try_end_27} :catchall_75

    move-object v0, v2

    .line 1824
    goto :goto_2b

    .line 1822
    :catch_29
    move-exception v2

    .line 1823
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 1825
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2b
    :try_start_2b
    iput-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1826
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_36} :catch_77
    .catchall {:try_start_2b .. :try_end_36} :catchall_75

    .line 1827
    const/4 v0, 0x0

    .line 1829
    :try_start_37
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_42} :catch_43
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_42} :catch_77
    .catchall {:try_start_37 .. :try_end_42} :catchall_75

    .line 1831
    goto :goto_44

    .line 1830
    :catch_43
    move-exception v2

    .line 1832
    :goto_44
    :try_start_44
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v2

    iput-object v1, v2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1834
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_55

    .line 1839
    const/4 p3, 0x0

    .line 1841
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_55
    goto :goto_66

    .line 1842
    :cond_56
    invoke-direct {p0, p1, p4}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;I)V

    .line 1843
    if-eqz p3, :cond_66

    iget-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_5d} :catch_77
    .catchall {:try_start_44 .. :try_end_5d} :catchall_75

    if-eqz v0, :cond_66

    .line 1845
    :try_start_5f
    iget-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_65
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_64} :catch_77
    .catchall {:try_start_5f .. :try_end_64} :catchall_75

    .line 1847
    goto :goto_66

    .line 1846
    :catch_65
    move-exception v0

    .line 1851
    :cond_66
    :goto_66
    const/4 v0, 0x1

    .line 1855
    if-eqz p3, :cond_74

    iget-object v1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_74

    .line 1857
    :try_start_6d
    iget-object v1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_72} :catch_73

    .line 1859
    goto :goto_74

    .line 1858
    :catch_73
    move-exception v1

    .line 1851
    :cond_74
    :goto_74
    return v0

    .line 1855
    :catchall_75
    move-exception v0

    goto :goto_80

    .line 1852
    :catch_77
    move-exception v0

    .line 1853
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_78
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Process disappeared"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    .end local p1    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "start":Z
    .end local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p4    # "profileType":I
    throw v1
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_75

    .line 1855
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    .restart local p1    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "start":Z
    .restart local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p4    # "profileType":I
    :goto_80
    if-eqz p3, :cond_8d

    iget-object v1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_8d

    .line 1857
    :try_start_86
    iget-object v1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8b} :catch_8c

    .line 1859
    goto :goto_8d

    .line 1858
    :catch_8c
    move-exception v1

    .line 1861
    :cond_8d
    :goto_8d
    throw v0
.end method

.method reportMemUsage(Ljava/util/ArrayList;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessMemInfo;",
            ">;)V"
        }
    .end annotation

    .line 1698
    .local p1, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    move-object/from16 v1, p0

    new-instance v0, Lcom/android/server/am/ScoutMeminfo;

    invoke-direct {v0}, Lcom/android/server/am/ScoutMeminfo;-><init>()V

    move-object v2, v0

    .line 1699
    .local v2, "scoutInfo":Lcom/android/server/am/ScoutMeminfo;
    const-string v3, "Low on memory"

    .line 1700
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/MemUsageBuilder;

    const-string v4, "Low on memory"

    move-object/from16 v5, p1

    invoke-direct {v0, v1, v5, v4}, Lcom/android/server/am/MemUsageBuilder;-><init>(Lcom/android/server/am/AppProfiler;Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object v4, v0

    .line 1701
    .local v4, "builder":Lcom/android/server/am/MemUsageBuilder;
    invoke-virtual {v4, v2}, Lcom/android/server/am/MemUsageBuilder;->setScoutInfo(Lcom/android/server/am/ScoutMeminfo;)V

    .line 1702
    invoke-virtual {v4}, Lcom/android/server/am/MemUsageBuilder;->buildAll()V

    .line 1704
    const-string v0, "ActivityManager"

    const-string v6, "Low on memory:"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const-string v0, "ActivityManager"

    iget-object v6, v4, Lcom/android/server/am/MemUsageBuilder;->shortNative:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const-string v0, "ActivityManager"

    iget-object v6, v4, Lcom/android/server/am/MemUsageBuilder;->fullJava:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const-string v0, "ActivityManager"

    iget-object v6, v4, Lcom/android/server/am/MemUsageBuilder;->summary:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-wide v6, v4, Lcom/android/server/am/MemUsageBuilder;->totalPss:J

    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/ScoutMeminfo;->setTotalPss(J)V

    .line 1710
    iget-wide v6, v4, Lcom/android/server/am/MemUsageBuilder;->totalSwapPss:J

    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/ScoutMeminfo;->setTotalSwapPss(J)V

    .line 1711
    iget-wide v6, v4, Lcom/android/server/am/MemUsageBuilder;->cachedPss:J

    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/ScoutMeminfo;->setCachedPss(J)V

    .line 1712
    invoke-static {}, Lcom/android/server/am/AppProfilerStub;->getInstance()Lcom/android/server/am/AppProfilerStub;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/am/AppProfilerStub;->reportScoutLowMemory(Lcom/android/server/am/ScoutMeminfo;)V

    .line 1714
    invoke-virtual {v1, v4}, Lcom/android/server/am/AppProfiler;->buildDropboxString(Lcom/android/server/am/MemUsageBuilder;)Ljava/lang/String;

    move-result-object v20

    .line 1715
    .local v20, "dropboxStr":Ljava/lang/String;
    const/16 v0, 0x51

    invoke-static {v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 1716
    iget-object v6, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "lowmem"

    const-string/jumbo v9, "system_server"

    iget-object v13, v4, Lcom/android/server/am/MemUsageBuilder;->subject:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, v20

    invoke-virtual/range {v6 .. v19}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;)V

    .line 1719
    iget-object v6, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_74
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1720
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1721
    .local v7, "now":J
    iget-wide v9, v1, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    cmp-long v0, v9, v7

    if-gez v0, :cond_83

    .line 1722
    iput-wide v7, v1, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 1724
    .end local v7    # "now":J
    :cond_83
    monitor-exit v6
    :try_end_84
    .catchall {:try_start_74 .. :try_end_84} :catchall_88

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1725
    return-void

    .line 1724
    :catchall_88
    move-exception v0

    :try_start_89
    monitor-exit v6
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method requestPssAllProcsLPr(JZZ)V
    .registers 16
    .param p1, "now"    # J
    .param p3, "always"    # Z
    .param p4, "memLowered"    # Z

    .line 898
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 899
    if-nez p3, :cond_1d

    .line 900
    :try_start_5
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 901
    if-eqz p4, :cond_10

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    goto :goto_16

    .line 902
    :cond_10
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    :goto_16
    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_1d

    .line 903
    monitor-exit v0

    return-void

    .line 906
    :cond_1d
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_39

    .line 907
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting pss of all procs!  memLowered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_39
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 910
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    .line 911
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_45
    if-ltz v2, :cond_55

    .line 912
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 911
    add-int/lit8 v2, v2, -0x1

    goto :goto_45

    .line 914
    .end local v2    # "i":I
    :cond_55
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 915
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 916
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    new-instance v10, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;

    move-object v4, v10

    move-object v5, p0

    move v6, p4

    move v7, p3

    move-wide v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppProfiler;ZZJ)V

    invoke-virtual {v2, v3, v10}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 933
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_86

    .line 934
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 938
    :cond_86
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 939
    monitor-exit v0

    .line 940
    return-void

    .line 939
    :catchall_8f
    move-exception v1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_5 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method retrieveSettings()V
    .registers 6

    .line 2131
    const-string v0, "activity_manager"

    const-string v1, "activity_start_pss_defer"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 2133
    .local v1, "pssDeferralMs":J
    nop

    .line 2134
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 2133
    invoke-static {v0, v3, v4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2136
    iput-wide v1, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 2137
    return-void
.end method

.method final scheduleAppGcsLPf()V
    .registers 9

    .line 1278
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1280
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 1282
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1283
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1285
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    .line 1286
    .local v2, "when":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1287
    .local v4, "now":J
    iget-object v6, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    add-long/2addr v6, v4

    cmp-long v6, v2, v6

    if-gez v6, :cond_45

    .line 1288
    iget-object v6, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    add-long v2, v4, v6

    .line 1290
    :cond_45
    iget-object v6, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v6, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1292
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "when":J
    .end local v4    # "now":J
    :cond_4c
    return-void
.end method

.method setAgentAppLPf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Ljava/lang/String;

    .line 1887
    if-nez p2, :cond_15

    .line 1888
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-eqz v0, :cond_52

    .line 1889
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1891
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    goto :goto_52

    .line 1895
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-nez v0, :cond_20

    .line 1896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 1898
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_4d

    .line 1900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App agent map has too many entries, cannot add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return-void

    .line 1904
    :cond_4d
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    :cond_52
    :goto_52
    return-void
.end method

.method setAllowLowerMemLevelLocked(Z)V
    .registers 2
    .param p1, "allowLowerMemLevel"    # Z

    .line 983
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 984
    return-void
.end method

.method setCpuInfoService()V
    .registers 5

    .line 2114
    new-instance v0, Lcom/android/server/am/AppProfiler$CpuBinder;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CpuBinder;-><init>(Lcom/android/server/am/AppProfiler;)V

    const-string v1, "cpuinfo"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 2117
    return-void
.end method

.method setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    .registers 10
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "maxMemSize"    # J
    .param p5, "reportPackage"    # Ljava/lang/String;

    .line 788
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_1a

    .line 790
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 798
    :catchall_18
    move-exception v1

    goto :goto_2d

    .line 792
    :cond_1a
    if-eqz p2, :cond_22

    .line 793
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_2b

    .line 795
    :cond_22
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    :goto_2b
    monitor-exit v0

    .line 799
    return-void

    .line 798
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_18

    throw v1
.end method

.method setMemFactorOverrideLocked(I)V
    .registers 2
    .param p1, "factor"    # I

    .line 993
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 994
    return-void
.end method

.method setProfileAppLPf(Ljava/lang/String;Landroid/app/ProfilerInfo;)V
    .registers 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 1866
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 1868
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1869
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_24

    .line 1871
    :try_start_17
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_22} :catch_23

    .line 1873
    goto :goto_24

    .line 1872
    :catch_23
    move-exception v0

    .line 1876
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    new-instance v1, Landroid/app/ProfilerInfo;

    invoke-direct {v1, p2}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 1877
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 1878
    return-void
.end method

.method setProfileProcLPf(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1882
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1883
    return-void
.end method

.method setTestPssMode(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 943
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 944
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    .line 945
    if-eqz p1, :cond_12

    .line 948
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    .line 950
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 951
    return-void

    .line 950
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method setupProfilerInfoLocked(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)Landroid/app/ProfilerInfo;
    .registers 24
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "instr"    # Lcom/android/server/am/ActiveInstrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2167
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 2168
    .local v5, "profilerInfo":Landroid/app/ProfilerInfo;
    const/4 v6, 0x0

    .line 2169
    .local v6, "preBindAgent":Ljava/lang/String;
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2170
    .local v7, "processName":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2171
    :try_start_f
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_6e

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2172
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2173
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2174
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 2177
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_49

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2178
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v0, :cond_47

    goto :goto_49

    :cond_47
    move v0, v9

    goto :goto_4a

    :cond_49
    :goto_49
    move v0, v10

    .line 2179
    .local v0, "needsInfo":Z
    :goto_4a
    if-eqz v0, :cond_58

    .line 2180
    new-instance v11, Landroid/app/ProfilerInfo;

    iget-object v12, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v12}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    goto :goto_59

    :cond_58
    const/4 v11, 0x0

    :goto_59
    move-object v5, v11

    .line 2181
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v11}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-eqz v11, :cond_6d

    .line 2182
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v11}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    move-object v6, v11

    .line 2184
    .end local v0    # "needsInfo":Z
    :cond_6d
    goto :goto_86

    .line 2185
    :cond_6e
    if-eqz v4, :cond_86

    iget-object v0, v4, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v0, :cond_86

    .line 2186
    new-instance v0, Landroid/app/ProfilerInfo;

    iget-object v12, v4, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object v5, v0

    .line 2189
    :cond_86
    :goto_86
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-eqz v0, :cond_cd

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 2192
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 2193
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2195
    .local v0, "agent":Ljava/lang/String;
    if-nez v5, :cond_bc

    .line 2196
    new-instance v19, Landroid/app/ProfilerInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 2197
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x1

    move-object/from16 v11, v19

    invoke-direct/range {v11 .. v18}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object/from16 v5, v19

    goto :goto_cd

    .line 2198
    :cond_bc
    iget-object v11, v5, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-nez v11, :cond_cd

    .line 2199
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11, v10}, Landroid/app/ProfilerInfo;->setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;

    move-result-object v11

    move-object v5, v11

    .line 2204
    .end local v0    # "agent":Ljava/lang/String;
    :cond_cd
    :goto_cd
    if-eqz v5, :cond_f2

    iget-object v0, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_f2

    .line 2205
    iget-object v0, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2206
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f2

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2207
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_f2

    .line 2208
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 2211
    :cond_f2
    monitor-exit v8
    :try_end_f3
    .catchall {:try_start_f .. :try_end_f3} :catchall_187

    .line 2217
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_174

    if-nez v4, :cond_174

    .line 2218
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v10

    move v8, v0

    .line 2219
    .local v8, "i":I
    :goto_109
    if-ltz v8, :cond_174

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-nez v0, :cond_174

    .line 2220
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/am/ActiveInstrumentation;

    .line 2221
    .local v10, "aInstr":Lcom/android/server/am/ActiveInstrumentation;
    iget-boolean v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-nez v0, :cond_171

    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v11, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v11, :cond_171

    .line 2222
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v11

    :try_start_12b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2223
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_14a

    .line 2226
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 2227
    invoke-virtual {v3, v10}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2228
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_166

    .line 2231
    :cond_14a
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v12, v0

    move v13, v9

    :goto_14e
    if-ge v13, v12, :cond_166

    aget-object v14, v0, v13

    .line 2232
    .local v14, "proc":Ljava/lang/String;
    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_163

    .line 2233
    invoke-virtual {v3, v10}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2234
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2235
    goto :goto_166

    .line 2231
    .end local v14    # "proc":Ljava/lang/String;
    :cond_163
    add-int/lit8 v13, v13, 0x1

    goto :goto_14e

    .line 2239
    :cond_166
    :goto_166
    monitor-exit v11
    :try_end_167
    .catchall {:try_start_12b .. :try_end_167} :catchall_16b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_171

    :catchall_16b
    move-exception v0

    :try_start_16c
    monitor-exit v11
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 2219
    .end local v10    # "aInstr":Lcom/android/server/am/ActiveInstrumentation;
    :cond_171
    :goto_171
    add-int/lit8 v8, v8, -0x1

    goto :goto_109

    .line 2246
    .end local v8    # "i":I
    :cond_174
    if-eqz v6, :cond_179

    .line 2247
    invoke-interface {v2, v6}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 2249
    :cond_179
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_186

    .line 2250
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/app/IApplicationThread;->attachStartupAgents(Ljava/lang/String;)V

    .line 2252
    :cond_186
    return-object v5

    .line 2211
    :catchall_187
    move-exception v0

    :try_start_188
    monitor-exit v8
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_187

    throw v0
.end method

.method startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V
    .registers 9
    .param p1, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p2, "isUserInitiated"    # Z

    .line 700
    iget-object v0, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 701
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 702
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 703
    invoke-virtual {p1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 704
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 705
    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 708
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 709
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 708
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_2b} :catch_3f

    .line 712
    .local v1, "ctx":Landroid/content/Context;
    nop

    .line 713
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/AppProfiler$RecordPssRunnable;

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 714
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/android/server/am/AppProfiler$RecordPssRunnable;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 713
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    return-void

    .line 710
    .end local v1    # "ctx":Landroid/content/Context;
    :catch_3f
    move-exception v1

    .line 711
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "android package not found."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method updateCpuStats()V
    .registers 7

    .line 1909
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1910
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_13

    .line 1911
    return-void

    .line 1913
    :cond_13
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1914
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 1915
    :try_start_20
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1916
    monitor-exit v2

    goto :goto_2a

    :catchall_27
    move-exception v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v3

    .line 1918
    :cond_2a
    :goto_2a
    return-void
.end method

.method updateCpuStatsNow()V
    .registers 32

    .line 1921
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "settings_enable_monitor_phantom_procs"

    invoke-static {v0, v3}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    move v3, v0

    .line 1923
    .local v3, "monitorPhantomProcs":Z
    iget-object v4, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v4

    .line 1924
    :try_start_1d
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1925
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1926
    .local v5, "now":J
    const/4 v0, 0x0

    .line 1928
    .local v0, "haveNewCpuStats":Z
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1929
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_293

    const-wide/16 v9, 0x1388

    sub-long v9, v5, v9

    cmp-long v2, v7, v9

    if-gez v2, :cond_aa

    .line 1930
    :try_start_35
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1931
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1932
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->hasGoodLastStats()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 1933
    const/4 v0, 0x1

    .line 1939
    const-string/jumbo v2, "true"

    const-string v7, "events.cpu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 1940
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v2

    .line 1941
    .local v2, "user":I
    iget-object v7, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v7

    .line 1942
    .local v7, "system":I
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v8

    .line 1943
    .local v8, "iowait":I
    iget-object v9, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v9

    .line 1944
    .local v9, "irq":I
    iget-object v10, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v10

    .line 1945
    .local v10, "softIrq":I
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v11

    .line 1947
    .local v11, "idle":I
    add-int v12, v2, v7

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    add-int/2addr v12, v10

    add-int/2addr v12, v11

    .line 1948
    .local v12, "total":I
    if-nez v12, :cond_84

    const/4 v12, 0x1

    .line 1950
    :cond_84
    add-int v13, v2, v7

    add-int/2addr v13, v8

    add-int/2addr v13, v9

    add-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x64

    div-int v14, v13, v12

    mul-int/lit8 v13, v2, 0x64

    div-int v15, v13, v12

    mul-int/lit8 v13, v7, 0x64

    div-int v16, v13, v12

    mul-int/lit8 v13, v8, 0x64

    div-int v17, v13, v12

    mul-int/lit8 v13, v9, 0x64

    div-int v18, v13, v12

    mul-int/lit8 v13, v10, 0x64

    div-int v19, v13, v12

    invoke-static/range {v14 .. v19}, Lcom/android/server/am/EventLogTags;->writeCpu(IIIIII)V

    goto :goto_aa

    .line 2023
    .end local v0    # "haveNewCpuStats":Z
    .end local v2    # "user":I
    .end local v5    # "now":J
    .end local v7    # "system":I
    .end local v8    # "iowait":I
    .end local v9    # "irq":I
    .end local v10    # "softIrq":I
    .end local v11    # "idle":I
    .end local v12    # "total":I
    :catchall_a5
    move-exception v0

    move/from16 v25, v3

    goto/16 :goto_296

    .line 1961
    .restart local v0    # "haveNewCpuStats":Z
    .restart local v5    # "now":J
    :cond_aa
    :goto_aa
    move v2, v0

    .end local v0    # "haveNewCpuStats":Z
    .local v2, "haveNewCpuStats":Z
    if-eqz v3, :cond_b8

    if-eqz v2, :cond_b8

    .line 1962
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object v7, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0, v7}, Lcom/android/server/am/PhantomProcessList;->updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V
    :try_end_b8
    .catchall {:try_start_35 .. :try_end_b8} :catchall_a5

    .line 1965
    :cond_b8
    :try_start_b8
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    move-object/from16 v23, v0

    .line 1966
    .local v23, "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v23
    :try_end_c3
    .catchall {:try_start_b8 .. :try_end_c3} :catchall_293

    .line 1967
    if-eqz v2, :cond_26a

    .line 1968
    :try_start_c5
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->startAddingCpuLocked()Z

    move-result v0

    if-eqz v0, :cond_25c

    .line 1969
    const/4 v0, 0x0

    .line 1970
    .local v0, "totalUTime":I
    const/4 v7, 0x0

    .line 1971
    .local v7, "totalSTime":I
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v8

    move v15, v8

    .line 1972
    .local v15, "statsCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1973
    .local v10, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1974
    .local v12, "uptime":J
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v14
    :try_end_e1
    .catchall {:try_start_c5 .. :try_end_e1} :catchall_263

    .line 1975
    const/4 v8, 0x0

    move/from16 v30, v7

    move v7, v0

    move v0, v8

    move/from16 v8, v30

    .local v0, "i":I
    .local v7, "totalUTime":I
    .local v8, "totalSTime":I
    :goto_e8
    if-ge v0, v15, :cond_21e

    .line 1976
    :try_start_ea
    iget-object v9, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v9, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v9
    :try_end_f0
    .catchall {:try_start_ea .. :try_end_f0} :catchall_213

    .line 1977
    .local v9, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v24, v2

    .end local v2    # "haveNewCpuStats":Z
    .local v24, "haveNewCpuStats":Z
    :try_start_f2
    iget-boolean v2, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-nez v2, :cond_ff

    .line 1978
    move/from16 v25, v3

    move-wide/from16 v27, v5

    move-object v9, v14

    move/from16 v29, v15

    goto/16 :goto_1da

    .line 1980
    :cond_ff
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;
    :try_end_103
    .catchall {:try_start_f2 .. :try_end_103} :catchall_20a

    move/from16 v25, v3

    .end local v3    # "monitorPhantomProcs":Z
    .local v25, "monitorPhantomProcs":Z
    :try_start_105
    iget v3, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 1981
    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    iget v3, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_203

    add-int/2addr v3, v7

    .line 1982
    .end local v7    # "totalUTime":I
    .local v3, "totalUTime":I
    :try_start_10e
    iget v7, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I
    :try_end_110
    .catchall {:try_start_10e .. :try_end_110} :catchall_1f8

    add-int v21, v8, v7

    .line 1983
    .end local v8    # "totalSTime":I
    .local v21, "totalSTime":I
    if-eqz v2, :cond_198

    .line 1984
    :try_start_114
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    move-object v8, v7

    .line 1985
    .local v8, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getCurProcBatteryStats()Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v7
    :try_end_11b
    .catchall {:try_start_114 .. :try_end_11b} :catchall_18a

    move-object/from16 v16, v7

    .line 1986
    .local v16, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v16, :cond_13c

    :try_start_11f
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v7
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_131

    if-nez v7, :cond_126

    goto :goto_13c

    :cond_126
    move-object/from16 v26, v2

    move/from16 v22, v3

    move-wide/from16 v27, v5

    move-object v2, v8

    move-object v5, v9

    move-object/from16 v3, v16

    goto :goto_15c

    .line 2005
    .end local v0    # "i":I
    .end local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v9    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v16    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :catchall_131
    move-exception v0

    move v7, v3

    move-wide/from16 v27, v5

    move-object v9, v14

    move/from16 v29, v15

    move/from16 v8, v21

    goto/16 :goto_25a

    .line 1987
    .restart local v0    # "i":I
    .restart local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v9    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v16    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_13c
    :goto_13c
    :try_start_13c
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_140
    .catchall {:try_start_13c .. :try_end_140} :catchall_18a

    move/from16 v22, v3

    .end local v3    # "totalUTime":I
    .local v22, "totalUTime":I
    :try_start_142
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;
    :try_end_144
    .catchall {:try_start_142 .. :try_end_144} :catchall_17e

    .line 1988
    move/from16 v17, v7

    move-object/from16 v7, v23

    move-object/from16 v26, v2

    move-object v2, v8

    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v2, "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v26, "pr":Lcom/android/server/am/ProcessRecord;
    move/from16 v8, v17

    move-wide/from16 v27, v5

    move-object v5, v9

    .end local v9    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v27, "now":J
    move-object v9, v3

    :try_start_151
    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v3

    move-object/from16 v16, v3

    .line 1987
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setCurProcBatteryStats(Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;)V

    move-object/from16 v3, v16

    .line 1992
    .end local v16    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .local v3, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :goto_15c
    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 1993
    iget-object v6, v2, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v7, v8

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v6

    .line 1995
    .local v6, "curCpuTime":J
    iget-object v8, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    move-object v9, v2

    move-object/from16 v16, v3

    .end local v2    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v3    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .local v9, "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v16    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    const-wide/16 v2, 0x0

    invoke-virtual {v8, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_179
    .catchall {:try_start_151 .. :try_end_179} :catchall_1ae

    .line 1996
    move-object v9, v14

    move/from16 v29, v15

    .end local v6    # "curCpuTime":J
    .end local v9    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v16    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    goto/16 :goto_1d6

    .line 2005
    .end local v0    # "i":I
    .end local v26    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v27    # "now":J
    .local v5, "now":J
    :catchall_17e
    move-exception v0

    move-wide/from16 v27, v5

    move-object v9, v14

    move/from16 v29, v15

    move/from16 v8, v21

    move/from16 v7, v22

    .end local v5    # "now":J
    .restart local v27    # "now":J
    goto/16 :goto_25a

    .end local v22    # "totalUTime":I
    .end local v27    # "now":J
    .local v3, "totalUTime":I
    .restart local v5    # "now":J
    :catchall_18a
    move-exception v0

    move/from16 v22, v3

    move-wide/from16 v27, v5

    move-object v9, v14

    move/from16 v29, v15

    move/from16 v8, v21

    move/from16 v7, v22

    .end local v3    # "totalUTime":I
    .end local v5    # "now":J
    .restart local v22    # "totalUTime":I
    .restart local v27    # "now":J
    goto/16 :goto_25a

    .line 1997
    .end local v22    # "totalUTime":I
    .end local v27    # "now":J
    .restart local v0    # "i":I
    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "totalUTime":I
    .restart local v5    # "now":J
    .local v9, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_198
    move-object/from16 v26, v2

    move/from16 v22, v3

    move-wide/from16 v27, v5

    move-object v5, v9

    .end local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "totalUTime":I
    .end local v9    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v22    # "totalUTime":I
    .restart local v26    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v27    # "now":J
    :try_start_19f
    iget-object v2, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :try_end_1a1
    .catchall {:try_start_19f .. :try_end_1a1} :catchall_1ee

    .line 1998
    .local v2, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v2, :cond_1b8

    :try_start_1a3
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v3
    :try_end_1a7
    .catchall {:try_start_1a3 .. :try_end_1a7} :catchall_1ae

    if-nez v3, :cond_1aa

    goto :goto_1b8

    :cond_1aa
    move-object v9, v14

    move/from16 v29, v15

    goto :goto_1cf

    .line 2005
    .end local v0    # "i":I
    .end local v2    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v26    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_1ae
    move-exception v0

    move-object v9, v14

    move/from16 v29, v15

    move/from16 v8, v21

    move/from16 v7, v22

    goto/16 :goto_25a

    .line 1999
    .restart local v0    # "i":I
    .restart local v2    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .restart local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v26    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_1b8
    :goto_1b8
    :try_start_1b8
    iget v3, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;
    :try_end_1bc
    .catchall {:try_start_1b8 .. :try_end_1bc} :catchall_1ee

    move-object v9, v14

    move-object/from16 v14, v23

    move/from16 v29, v15

    .end local v15    # "statsCount":I
    .local v29, "statsCount":I
    move v15, v3

    move-object/from16 v16, v6

    move-wide/from16 v17, v10

    move-wide/from16 v19, v12

    :try_start_1c8
    invoke-virtual/range {v14 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v3

    move-object v2, v3

    iput-object v3, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 2002
    :goto_1cf
    iget v3, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V
    :try_end_1d6
    .catchall {:try_start_1c8 .. :try_end_1d6} :catchall_1e7

    .line 1975
    .end local v2    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v26    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_1d6
    move/from16 v8, v21

    move/from16 v7, v22

    .end local v21    # "totalSTime":I
    .end local v22    # "totalUTime":I
    .restart local v7    # "totalUTime":I
    .local v8, "totalSTime":I
    :goto_1da
    add-int/lit8 v0, v0, 0x1

    move-object v14, v9

    move/from16 v2, v24

    move/from16 v3, v25

    move-wide/from16 v5, v27

    move/from16 v15, v29

    goto/16 :goto_e8

    .line 2005
    .end local v0    # "i":I
    .end local v7    # "totalUTime":I
    .end local v8    # "totalSTime":I
    .restart local v21    # "totalSTime":I
    .restart local v22    # "totalUTime":I
    :catchall_1e7
    move-exception v0

    move/from16 v8, v21

    move/from16 v7, v22

    goto/16 :goto_25a

    .end local v29    # "statsCount":I
    .restart local v15    # "statsCount":I
    :catchall_1ee
    move-exception v0

    move-object v9, v14

    move/from16 v29, v15

    move/from16 v8, v21

    move/from16 v7, v22

    .end local v15    # "statsCount":I
    .restart local v29    # "statsCount":I
    goto/16 :goto_25a

    .end local v21    # "totalSTime":I
    .end local v22    # "totalUTime":I
    .end local v27    # "now":J
    .end local v29    # "statsCount":I
    .restart local v3    # "totalUTime":I
    .local v5, "now":J
    .restart local v8    # "totalSTime":I
    .restart local v15    # "statsCount":I
    :catchall_1f8
    move-exception v0

    move/from16 v22, v3

    move-wide/from16 v27, v5

    move-object v9, v14

    move/from16 v29, v15

    move/from16 v7, v22

    .end local v3    # "totalUTime":I
    .end local v5    # "now":J
    .end local v15    # "statsCount":I
    .restart local v22    # "totalUTime":I
    .restart local v27    # "now":J
    .restart local v29    # "statsCount":I
    goto :goto_25a

    .end local v22    # "totalUTime":I
    .end local v27    # "now":J
    .end local v29    # "statsCount":I
    .restart local v5    # "now":J
    .restart local v7    # "totalUTime":I
    .restart local v15    # "statsCount":I
    :catchall_203
    move-exception v0

    move-wide/from16 v27, v5

    move-object v9, v14

    move/from16 v29, v15

    .end local v5    # "now":J
    .end local v15    # "statsCount":I
    .restart local v27    # "now":J
    .restart local v29    # "statsCount":I
    goto :goto_25a

    .end local v25    # "monitorPhantomProcs":Z
    .end local v27    # "now":J
    .end local v29    # "statsCount":I
    .local v3, "monitorPhantomProcs":Z
    .restart local v5    # "now":J
    .restart local v15    # "statsCount":I
    :catchall_20a
    move-exception v0

    move/from16 v25, v3

    move-wide/from16 v27, v5

    move-object v9, v14

    move/from16 v29, v15

    .end local v3    # "monitorPhantomProcs":Z
    .end local v5    # "now":J
    .end local v15    # "statsCount":I
    .restart local v25    # "monitorPhantomProcs":Z
    .restart local v27    # "now":J
    .restart local v29    # "statsCount":I
    goto :goto_25a

    .end local v24    # "haveNewCpuStats":Z
    .end local v25    # "monitorPhantomProcs":Z
    .end local v27    # "now":J
    .end local v29    # "statsCount":I
    .local v2, "haveNewCpuStats":Z
    .restart local v3    # "monitorPhantomProcs":Z
    .restart local v5    # "now":J
    .restart local v15    # "statsCount":I
    :catchall_213
    move-exception v0

    move/from16 v24, v2

    move/from16 v25, v3

    move-wide/from16 v27, v5

    move-object v9, v14

    move/from16 v29, v15

    .end local v2    # "haveNewCpuStats":Z
    .end local v3    # "monitorPhantomProcs":Z
    .end local v5    # "now":J
    .end local v15    # "statsCount":I
    .restart local v24    # "haveNewCpuStats":Z
    .restart local v25    # "monitorPhantomProcs":Z
    .restart local v27    # "now":J
    .restart local v29    # "statsCount":I
    goto :goto_25a

    .line 1975
    .end local v24    # "haveNewCpuStats":Z
    .end local v25    # "monitorPhantomProcs":Z
    .end local v27    # "now":J
    .end local v29    # "statsCount":I
    .restart local v0    # "i":I
    .restart local v2    # "haveNewCpuStats":Z
    .restart local v3    # "monitorPhantomProcs":Z
    .restart local v5    # "now":J
    .restart local v15    # "statsCount":I
    :cond_21e
    move/from16 v24, v2

    move/from16 v25, v3

    move-wide/from16 v27, v5

    move-object v9, v14

    move/from16 v29, v15

    .line 2005
    .end local v0    # "i":I
    .end local v2    # "haveNewCpuStats":Z
    .end local v3    # "monitorPhantomProcs":Z
    .end local v5    # "now":J
    .end local v15    # "statsCount":I
    .restart local v24    # "haveNewCpuStats":Z
    .restart local v25    # "monitorPhantomProcs":Z
    .restart local v27    # "now":J
    .restart local v29    # "statsCount":I
    :try_start_227
    monitor-exit v9
    :try_end_228
    .catchall {:try_start_227 .. :try_end_228} :catchall_259

    .line 2007
    :try_start_228
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v17

    .line 2008
    .local v17, "userTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v18

    .line 2009
    .local v18, "systemTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v19

    .line 2010
    .local v19, "iowaitTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v20

    .line 2011
    .local v20, "irqTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v21

    .line 2012
    .local v21, "softIrqTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v22

    .line 2013
    .local v22, "idleTime":I
    move-object/from16 v14, v23

    move v15, v7

    move/from16 v16, v8

    invoke-virtual/range {v14 .. v22}, Lcom/android/internal/os/BatteryStatsImpl;->finishAddingCpuLocked(IIIIIIII)V
    :try_end_254
    .catchall {:try_start_228 .. :try_end_254} :catchall_255

    goto :goto_270

    .line 2022
    .end local v7    # "totalUTime":I
    .end local v8    # "totalSTime":I
    .end local v10    # "elapsedRealtime":J
    .end local v12    # "uptime":J
    .end local v17    # "userTime":I
    .end local v18    # "systemTime":I
    .end local v19    # "iowaitTime":I
    .end local v20    # "irqTime":I
    .end local v21    # "softIrqTime":I
    .end local v22    # "idleTime":I
    .end local v29    # "statsCount":I
    :catchall_255
    move-exception v0

    move-wide/from16 v2, v27

    goto :goto_28f

    .line 2005
    .restart local v7    # "totalUTime":I
    .restart local v8    # "totalSTime":I
    .restart local v10    # "elapsedRealtime":J
    .restart local v12    # "uptime":J
    .restart local v29    # "statsCount":I
    :catchall_259
    move-exception v0

    :goto_25a
    :try_start_25a
    monitor-exit v9
    :try_end_25b
    .catchall {:try_start_25a .. :try_end_25b} :catchall_259

    .end local v23    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v24    # "haveNewCpuStats":Z
    .end local v25    # "monitorPhantomProcs":Z
    .end local v27    # "now":J
    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    :try_start_25b
    throw v0
    :try_end_25c
    .catchall {:try_start_25b .. :try_end_25c} :catchall_255

    .line 1968
    .end local v7    # "totalUTime":I
    .end local v8    # "totalSTime":I
    .end local v10    # "elapsedRealtime":J
    .end local v12    # "uptime":J
    .end local v29    # "statsCount":I
    .restart local v2    # "haveNewCpuStats":Z
    .restart local v3    # "monitorPhantomProcs":Z
    .restart local v5    # "now":J
    .restart local v23    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    :cond_25c
    move/from16 v24, v2

    move/from16 v25, v3

    move-wide/from16 v27, v5

    .end local v2    # "haveNewCpuStats":Z
    .end local v3    # "monitorPhantomProcs":Z
    .end local v5    # "now":J
    .restart local v24    # "haveNewCpuStats":Z
    .restart local v25    # "monitorPhantomProcs":Z
    .restart local v27    # "now":J
    goto :goto_270

    .line 2022
    .end local v24    # "haveNewCpuStats":Z
    .end local v25    # "monitorPhantomProcs":Z
    .end local v27    # "now":J
    .restart local v2    # "haveNewCpuStats":Z
    .restart local v3    # "monitorPhantomProcs":Z
    .restart local v5    # "now":J
    :catchall_263
    move-exception v0

    move/from16 v24, v2

    move/from16 v25, v3

    move-wide v2, v5

    .end local v2    # "haveNewCpuStats":Z
    .end local v3    # "monitorPhantomProcs":Z
    .end local v5    # "now":J
    .restart local v24    # "haveNewCpuStats":Z
    .restart local v25    # "monitorPhantomProcs":Z
    .restart local v27    # "now":J
    goto :goto_28f

    .line 1967
    .end local v24    # "haveNewCpuStats":Z
    .end local v25    # "monitorPhantomProcs":Z
    .end local v27    # "now":J
    .restart local v2    # "haveNewCpuStats":Z
    .restart local v3    # "monitorPhantomProcs":Z
    .restart local v5    # "now":J
    :cond_26a
    move/from16 v24, v2

    move/from16 v25, v3

    move-wide/from16 v27, v5

    .line 2018
    .end local v2    # "haveNewCpuStats":Z
    .end local v3    # "monitorPhantomProcs":Z
    .end local v5    # "now":J
    .restart local v24    # "haveNewCpuStats":Z
    .restart local v25    # "monitorPhantomProcs":Z
    .restart local v27    # "now":J
    :goto_270
    :try_start_270
    iget-wide v2, v1, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J
    :try_end_272
    .catchall {:try_start_270 .. :try_end_272} :catchall_28c

    const-wide/32 v5, 0x1b7740

    sub-long v5, v27, v5

    cmp-long v0, v2, v5

    if-gez v0, :cond_287

    .line 2019
    move-wide/from16 v2, v27

    .end local v27    # "now":J
    .local v2, "now":J
    :try_start_27d
    iput-wide v2, v1, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 2020
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    goto :goto_289

    .line 2018
    .end local v2    # "now":J
    .restart local v27    # "now":J
    :cond_287
    move-wide/from16 v2, v27

    .line 2022
    .end local v27    # "now":J
    .restart local v2    # "now":J
    :goto_289
    monitor-exit v23
    :try_end_28a
    .catchall {:try_start_27d .. :try_end_28a} :catchall_291

    .line 2023
    .end local v2    # "now":J
    .end local v23    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v24    # "haveNewCpuStats":Z
    :try_start_28a
    monitor-exit v4
    :try_end_28b
    .catchall {:try_start_28a .. :try_end_28b} :catchall_298

    .line 2024
    return-void

    .line 2022
    .restart local v23    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v24    # "haveNewCpuStats":Z
    .restart local v27    # "now":J
    :catchall_28c
    move-exception v0

    move-wide/from16 v2, v27

    .end local v27    # "now":J
    .restart local v2    # "now":J
    :goto_28f
    :try_start_28f
    monitor-exit v23
    :try_end_290
    .catchall {:try_start_28f .. :try_end_290} :catchall_291

    .end local v25    # "monitorPhantomProcs":Z
    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    :try_start_290
    throw v0

    .restart local v25    # "monitorPhantomProcs":Z
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    :catchall_291
    move-exception v0

    goto :goto_28f

    .line 2023
    .end local v2    # "now":J
    .end local v23    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v24    # "haveNewCpuStats":Z
    .end local v25    # "monitorPhantomProcs":Z
    .restart local v3    # "monitorPhantomProcs":Z
    :catchall_293
    move-exception v0

    move/from16 v25, v3

    .end local v3    # "monitorPhantomProcs":Z
    .restart local v25    # "monitorPhantomProcs":Z
    :goto_296
    monitor-exit v4
    :try_end_297
    .catchall {:try_start_290 .. :try_end_297} :catchall_298

    throw v0

    :catchall_298
    move-exception v0

    goto :goto_296
.end method

.method updateLowMemStateLSP(III)Z
    .registers 25
    .param p1, "numCached"    # I
    .param p2, "numEmpty"    # I
    .param p3, "numTrimming"    # I

    .line 999
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    iget-object v0, v9, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/am/LowMemDetector;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1000
    iget-object v0, v9, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    invoke-virtual {v0}, Lcom/android/server/am/LowMemDetector;->getMemFactor()I

    move-result v0

    .local v0, "memFactor":I
    goto :goto_39

    .line 1008
    .end local v0    # "memFactor":I
    :cond_17
    iget-object v0, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    if-gt v10, v0, :cond_38

    iget-object v0, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-gt v11, v0, :cond_38

    .line 1010
    add-int v0, v10, v11

    .line 1011
    .local v0, "numCachedAndEmpty":I
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2f

    .line 1012
    const/4 v1, 0x3

    move v0, v1

    .local v1, "memFactor":I
    goto :goto_37

    .line 1013
    .end local v1    # "memFactor":I
    :cond_2f
    const/4 v1, 0x5

    if-gt v0, v1, :cond_35

    .line 1014
    const/4 v1, 0x2

    move v0, v1

    .restart local v1    # "memFactor":I
    goto :goto_37

    .line 1016
    .end local v1    # "memFactor":I
    :cond_35
    const/4 v1, 0x1

    move v0, v1

    .line 1018
    .local v0, "memFactor":I
    :goto_37
    goto :goto_39

    .line 1019
    .end local v0    # "memFactor":I
    :cond_38
    const/4 v0, 0x0

    .line 1025
    .restart local v0    # "memFactor":I
    :goto_39
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_98

    .line 1026
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oom: memFactor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " override="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " allowLow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v9, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numProcs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1028
    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1026
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_98
    iget v1, v9, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v12, 0x1

    if-eq v1, v2, :cond_a1

    move v1, v12

    goto :goto_a2

    :cond_a1
    move v1, v3

    :goto_a2
    move v13, v1

    .local v13, "override":Z
    if-eqz v1, :cond_a7

    .line 1033
    iget v0, v9, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 1035
    :cond_a7
    iget v1, v9, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-le v0, v1, :cond_ca

    .line 1036
    if-nez v13, :cond_ca

    iget-boolean v1, v9, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    if-eqz v1, :cond_bd

    iget-object v1, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1037
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    iget v2, v9, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    if-lt v1, v2, :cond_ca

    .line 1038
    :cond_bd
    iget v0, v9, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1039
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_ca

    const-string v1, "ActivityManager"

    const-string v2, "Keeping last mem factor!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_ca
    move v14, v0

    .end local v0    # "memFactor":I
    .local v14, "memFactor":I
    iget v0, v9, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-eq v14, v0, :cond_e3

    .line 1043
    invoke-static {v14, v0}, Lcom/android/server/am/EventLogTags;->writeAmMemFactor(II)V

    .line 1044
    const/16 v0, 0xf

    invoke-static {v0, v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1045
    iget-object v0, v9, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    iget v2, v9, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v0, v1, v2, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1046
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1048
    :cond_e3
    iput v14, v9, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1049
    iget-object v0, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    iput v0, v9, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    .line 1053
    iget-object v0, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1054
    :try_start_f6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1055
    .local v4, "now":J
    iget-object v0, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v2, :cond_111

    iget-object v2, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1056
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v2

    if-nez v2, :cond_10f

    goto :goto_111

    :cond_10f
    move v2, v3

    goto :goto_112

    :cond_111
    :goto_111
    move v2, v12

    .line 1055
    :goto_112
    invoke-virtual {v0, v14, v2, v4, v5}, Lcom/android/server/am/ProcessStatsService;->setMemFactorLocked(IZJ)Z

    move-result v0

    .line 1057
    .local v0, "allChanged":Z
    iget-object v2, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    move v15, v2

    .line 1058
    .local v15, "trackerMemFactor":I
    monitor-exit v1
    :try_end_120
    .catchall {:try_start_f6 .. :try_end_120} :catchall_196

    .line 1059
    const-wide/16 v1, 0x0

    if-eqz v14, :cond_178

    .line 1060
    iget-wide v6, v9, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    cmp-long v1, v6, v1

    if-nez v1, :cond_12c

    .line 1061
    iput-wide v4, v9, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 1064
    :cond_12c
    packed-switch v14, :pswitch_data_19a

    .line 1072
    const/4 v1, 0x5

    move/from16 v16, v1

    .local v1, "fgTrimLevel":I
    goto :goto_13c

    .line 1066
    .end local v1    # "fgTrimLevel":I
    :pswitch_133
    const/16 v1, 0xf

    .line 1067
    .restart local v1    # "fgTrimLevel":I
    move/from16 v16, v1

    goto :goto_13c

    .line 1069
    .end local v1    # "fgTrimLevel":I
    :pswitch_138
    const/16 v1, 0xa

    .line 1070
    .restart local v1    # "fgTrimLevel":I
    move/from16 v16, v1

    .line 1075
    .end local v1    # "fgTrimLevel":I
    .local v16, "fgTrimLevel":I
    :goto_13c
    div-int/lit8 v1, p3, 0x3

    .line 1076
    .local v1, "factor":I
    const/4 v2, 0x2

    .line 1077
    .local v2, "minFactor":I
    iget-boolean v6, v9, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    if-eqz v6, :cond_145

    add-int/lit8 v2, v2, 0x1

    .line 1078
    :cond_145
    iget-boolean v6, v9, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    if-eqz v6, :cond_14b

    add-int/lit8 v2, v2, 0x1

    :cond_14b
    move v8, v2

    .line 1079
    .end local v2    # "minFactor":I
    .local v8, "minFactor":I
    if-ge v1, v8, :cond_14f

    move v1, v8

    :cond_14f
    move/from16 v17, v1

    .line 1080
    .end local v1    # "factor":I
    .local v17, "factor":I
    move/from16 v7, v17

    .line 1081
    .local v7, "actualFactor":I
    new-array v6, v12, [I

    aput v3, v6, v3

    .line 1082
    .local v6, "step":[I
    new-array v1, v12, [I

    const/16 v2, 0x50

    aput v2, v1, v3

    move-wide/from16 v18, v4

    .end local v4    # "now":J
    .local v18, "now":J
    move-object v5, v1

    .line 1083
    .local v5, "curLevel":[I
    iget-object v1, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v3, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v10, v3

    move v3, v0

    move-object v11, v4

    move v4, v15

    move/from16 v20, v8

    .end local v8    # "minFactor":I
    .local v20, "minFactor":I
    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppProfiler;ZI[I[III)V

    invoke-virtual {v11, v12, v10}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1155
    .end local v5    # "curLevel":[I
    .end local v6    # "step":[I
    .end local v7    # "actualFactor":I
    .end local v16    # "fgTrimLevel":I
    .end local v17    # "factor":I
    .end local v20    # "minFactor":I
    goto :goto_195

    .line 1156
    .end local v18    # "now":J
    .restart local v4    # "now":J
    :cond_178
    move-wide/from16 v18, v4

    .end local v4    # "now":J
    .restart local v18    # "now":J
    iget-wide v3, v9, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_189

    .line 1157
    iget-wide v5, v9, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    sub-long v3, v18, v3

    add-long/2addr v5, v3

    iput-wide v5, v9, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 1158
    iput-wide v1, v9, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 1160
    :cond_189
    iget-object v1, v9, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;

    invoke-direct {v2, v9, v0, v15}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppProfiler;ZI)V

    invoke-virtual {v1, v12, v2}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1172
    :goto_195
    return v0

    .line 1058
    .end local v0    # "allChanged":Z
    .end local v15    # "trackerMemFactor":I
    .end local v18    # "now":J
    :catchall_196
    move-exception v0

    :try_start_197
    monitor-exit v1
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_196

    throw v0

    nop

    :pswitch_data_19a
    .packed-switch 0x2
        :pswitch_138
        :pswitch_133
    .end packed-switch
.end method

.method updateLowRamTimestampLPr(J)V
    .registers 7
    .param p1, "now"    # J

    .line 975
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 976
    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_c

    .line 977
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 979
    :cond_c
    return-void
.end method

.method updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V
    .registers 13
    .param p1, "procState"    # I
    .param p2, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p3, "now"    # J
    .param p5, "forceUpdate"    # Z

    .line 572
    if-nez p5, :cond_2d

    .line 573
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getNextPssTime()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_26

    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 574
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    .line 575
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 573
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_26

    .line 577
    return-void

    .line 579
    :cond_26
    invoke-direct {p0, p2, p1}, Lcom/android/server/am/AppProfiler;->requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 580
    return-void

    .line 583
    :cond_2d
    iget-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 584
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v4

    .line 583
    move-object v1, p2

    move v2, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessProfileRecord;->computeNextPssTime(IZZJ)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setNextPssTime(J)V

    .line 585
    return-void
.end method

.method writeMemWatchProcessToProtoLPf(Landroid/util/proto/ProtoOutputStream;)V
    .registers 19
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_df

    .line 2369
    const-wide v2, 0x10b00000020L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2371
    .local v2, "token":J
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 2372
    .local v4, "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const-wide v7, 0x10900000001L

    if-ge v5, v6, :cond_9d

    .line 2373
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2374
    .local v6, "proc":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 2375
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const-wide v10, 0x20b00000001L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 2377
    .local v10, "ptoken":J
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2379
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_49
    if-ltz v7, :cond_95

    .line 2380
    const-wide v12, 0x20b00000002L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 2382
    .local v12, "utoken":J
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 2383
    .local v8, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    const-wide v14, 0x10500000001L

    .line 2384
    move-object/from16 v16, v4

    .end local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .local v16, "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2383
    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2385
    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 2387
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15, v4}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 2385
    const-wide v14, 0x10900000002L

    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2388
    const-wide v14, 0x10900000003L

    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2390
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2379
    .end local v8    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v12    # "utoken":J
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v4, v16

    goto :goto_49

    .end local v16    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .restart local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_95
    move-object/from16 v16, v4

    .line 2392
    .end local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .end local v7    # "j":I
    .restart local v16    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2372
    .end local v6    # "proc":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v10    # "ptoken":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .end local v16    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .restart local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_9d
    move-object/from16 v16, v4

    .line 2395
    .end local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .end local v5    # "i":I
    .restart local v16    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    const-wide v4, 0x10b00000002L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2397
    .local v4, "dtoken":J
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2399
    const-wide v6, 0x10900000006L

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 2400
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2399
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2401
    const-wide v6, 0x10500000003L

    iget v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2403
    const-wide v6, 0x10500000004L

    iget v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2405
    const-wide v6, 0x10800000005L

    iget-boolean v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2408
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2410
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2412
    .end local v2    # "token":J
    .end local v4    # "dtoken":J
    .end local v16    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_df
    return-void
.end method

.method writeMemoryLevelsToProtoLocked(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2439
    iget-boolean v0, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    const-wide v1, 0x10800000037L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2441
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    const-wide v1, 0x10500000038L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2442
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    const-wide v1, 0x10500000039L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2443
    return-void
.end method

.method writeProcessesToGcToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .registers 20
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 2474
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6f

    .line 2475
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2476
    .local v3, "now":J
    const/4 v5, 0x0

    .local v5, "i":I
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_18
    if-ge v5, v6, :cond_6f

    .line 2477
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 2478
    .local v7, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_2f

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 2479
    goto :goto_6c

    .line 2481
    :cond_2f
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2482
    .local v8, "token":J
    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2483
    .local v10, "profile":Lcom/android/server/am/ProcessProfileRecord;
    const-wide v11, 0x10b00000001L

    invoke-virtual {v7, v1, v11, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2484
    const-wide v11, 0x10800000002L

    invoke-virtual {v10}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v13

    invoke-virtual {v1, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2485
    const-wide v11, 0x10300000003L

    invoke-virtual {v1, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2486
    const-wide v11, 0x10300000004L

    invoke-virtual {v10}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v13

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2487
    const-wide v11, 0x10300000005L

    invoke-virtual {v10}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v13

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2488
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2476
    .end local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "token":J
    .end local v10    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :goto_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 2491
    .end local v3    # "now":J
    .end local v5    # "i":I
    .end local v6    # "size":I
    :cond_6f
    return-void
.end method

.method writeProfileDataToProtoLocked(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 2416
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2417
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2418
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2419
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_82

    .line 2420
    :cond_2c
    if-eqz p2, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 2421
    :cond_3a
    const-wide v0, 0x10b00000022L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2422
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2423
    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v4

    .line 2422
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2424
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2426
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v2

    if-eqz v2, :cond_7f

    .line 2427
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/ProfilerInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2429
    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2432
    :cond_7f
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2435
    .end local v0    # "token":J
    :cond_82
    return-void
.end method
