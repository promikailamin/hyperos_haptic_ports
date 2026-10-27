.class public Lcom/android/server/am/AppProfiler;
.super Ljava/lang/Object;
.source "AppProfiler.java"


# instance fields
.field public final mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mAllowLowerMemLevel:Z

.field public mAppAgentMap:Ljava/util/Map;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

.field public mFullPssOrRssPending:Z

.field public final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mLastFullPssTime:J

.field public mLastMemUsageReportTime:J

.field public mLastMemoryLevel:I

.field public mLastNumProcesses:I

.field public volatile mLastWriteTime:J

.field public final mLowMemDetector:Lcom/android/server/am/LowMemDetector;

.field public mMemFactorOverride:I

.field public mMemWatchDumpPid:I

.field public mMemWatchDumpProcName:Ljava/lang/String;

.field public mMemWatchDumpUid:I

.field public mMemWatchDumpUri:Landroid/net/Uri;

.field public mMemWatchIsUserInitiated:Z

.field public final mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

.field public final mPendingPssOrRssProfiles:Ljava/util/ArrayList;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mProcessCpuThread:Ljava/lang/Thread;

.field public final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public final mProcessesToGc:Ljava/util/ArrayList;

.field public final mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

.field public mProfileType:I

.field public final mProfilerLock:Ljava/lang/Object;

.field public volatile mPssDeferralTime:J

.field public final mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public volatile mTestPssOrRssMode:Z


# direct methods
.method public static synthetic $r8$lambda$5OBAsIN8AUD6oXr1UL23SzYui-A(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5

    .line 1635
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Mu4Mmv7nLKTnNFWY9SGxNTlQQHE(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5

    .line 759
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget p0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$O0KXijwG7-p0M_PB8ZuTBcOSGho(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 1404
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1406
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_d

    const/16 v1, 0x10

    if-lt v0, v1, :cond_13

    .line 1410
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isSystemNoUi()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1411
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/16 v1, 0x14

    .line 1417
    :try_start_23
    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 1419
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-void
.end method

.method public static synthetic $r8$lambda$Z9mDQXO9b6I541heYJg3Dye-gv4(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppProfiler;->lambda$doLowMemReportIfNeededLocked$4(Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aB4rfrc1k-58zrhIodLdNJI2deY(Lcom/android/server/am/AppProfiler;ZZJLcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppProfiler;->lambda$requestPssAllProcsLPr$2(ZZJLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWbwHOlSw54MLlfLuHPQWGs2h6Y(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5

    .line 625
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget p0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$hjeAJXDhcV6uScFkM6n_Owtv5tE(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 2

    .line 2255
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastCpuTime(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastWriteTime(Lcom/android/server/am/AppProfiler;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuInitLatch(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuMutexFree(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPssDeferralTime(Lcom/android/server/am/AppProfiler;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mabortHeapDump(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppProfiler;->abortHeapDump(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcollectPssInBackground(Lcom/android/server/am/AppProfiler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->collectPssInBackground()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcollectRssInBackground(Lcom/android/server/am/AppProfiler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->collectRssInBackground()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeferPssForActivityStart(Lcom/android/server/am/AppProfiler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->deferPssForActivityStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMemoryPressureChangedLocked(Lcom/android/server/am/AppProfiler;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppProfiler;->handleMemoryPressureChangedLocked(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopDeferPss(Lcom/android/server/am/AppProfiler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->stopDeferPss()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;Lcom/android/server/am/LowMemDetector;)V
    .registers 10

    .line 2340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 189
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 200
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 212
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 220
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 230
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 237
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    const/4 v2, -0x1

    .line 240
    iput v2, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 253
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 267
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 270
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 273
    new-instance v4, Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-direct {v4, p0, v2}, Lcom/android/server/am/AppProfiler$ProfileData;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/AppProfiler-IA;)V

    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 276
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 301
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 303
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 304
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 305
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 307
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 318
    new-instance v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 327
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 334
    new-instance v0, Lcom/android/server/am/AppProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$1;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 2341
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2342
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 2343
    new-instance p1, Lcom/android/server/am/AppProfiler$BgHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppProfiler$BgHandler;-><init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    .line 2344
    iput-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    .line 2345
    new-instance p1, Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    const-string p2, "CpuTracker"

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppProfiler$ProcessCpuThread;-><init>(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    return-void
.end method

.method public static makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.shell.heapdump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_javaheap.bin"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final abortHeapDump(Ljava/lang/String;)V
    .registers 4

    .line 1154
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1155
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1156
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V
    .registers 7

    .line 1556
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2d

    .line 1557
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v1

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1558
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2a

    .line 1560
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1565
    :cond_2d
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public clearProfilerLPf()V
    .registers 3

    .line 1983
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 1984
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1d

    .line 1986
    :try_start_12
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_1d

    .line 1990
    :catch_1d
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1992
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    return-void
.end method

.method public final collectPssInBackground()V
    .registers 33

    move-object/from16 v0, p0

    .line 611
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 613
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 614
    :try_start_9
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1a

    .line 615
    iput-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 616
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    goto :goto_1b

    :catchall_17
    move-exception v0

    goto/16 :goto_1e1

    :cond_1a
    move-object v2, v4

    .line 618
    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_17

    const-wide/16 v18, 0x0

    if-eqz v2, :cond_b0

    .line 620
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 623
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 624
    :try_start_26
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v6, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v5

    .line 627
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_ad

    .line 629
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-nez v1, :cond_74

    .line 630
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    move v6, v3

    move-wide/from16 v7, v18

    :goto_41
    if-ge v6, v1, :cond_71

    .line 632
    iget-object v9, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v9

    .line 633
    :try_start_48
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v11, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_5e

    .line 635
    monitor-exit v9

    goto :goto_6c

    :catchall_5c
    move-exception v0

    goto :goto_6f

    .line 637
    :cond_5e
    monitor-exit v9
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_5c

    .line 638
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v9, v4, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v9

    add-long/2addr v7, v9

    :goto_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    .line 637
    :goto_6f
    :try_start_6f
    monitor-exit v9
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_5c

    throw v0

    :cond_71
    move-wide/from16 v29, v7

    goto :goto_76

    :cond_74
    move-wide/from16 v29, v18

    .line 642
    :goto_76
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 643
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v5, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 648
    :try_start_80
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v21

    .line 649
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v23

    .line 650
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v25

    .line 651
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v27

    const-wide/16 v1, 0x400

    mul-long v6, v21, v1

    mul-long v8, v23, v1

    mul-long v10, v25, v1

    mul-long v12, v27, v1

    mul-long v14, v29, v1

    .line 652
    invoke-static/range {v6 .. v15}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 654
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v30}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 656
    monitor-exit v5

    goto :goto_b0

    :catchall_aa
    move-exception v0

    monitor-exit v5
    :try_end_ac
    .catchall {:try_start_80 .. :try_end_ac} :catchall_aa

    throw v0

    :catchall_ad
    move-exception v0

    .line 627
    :try_start_ae
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v0

    :cond_b0
    :goto_b0
    const/4 v1, 0x3

    .line 660
    new-array v1, v1, [J

    move v2, v3

    .line 667
    :goto_b4
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 668
    :try_start_b7
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_f8

    .line 669
    iget-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    if-nez v1, :cond_c4

    goto :goto_ee

    .line 670
    :cond_c4
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Collected pss of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " processes in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_ee
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 675
    monitor-exit v5

    return-void

    :catchall_f5
    move-exception v0

    goto/16 :goto_1df

    .line 677
    :cond_f8
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessProfileRecord;

    move v7, v2

    .line 678
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getPssProcState()I

    move-result v2

    .line 679
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getPssStatType()I

    move-result v11

    .line 680
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v8

    .line 681
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 682
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v10

    if-eqz v10, :cond_129

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v10

    if-ne v2, v10, :cond_129

    const-wide/16 v14, 0x3e8

    add-long/2addr v14, v8

    cmp-long v10, v14, v12

    if-gez v10, :cond_129

    .line 684
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v10

    goto :goto_12e

    .line 686
    :cond_129
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    move v10, v3

    move-object v6, v4

    .line 696
    :goto_12e
    monitor-exit v5
    :try_end_12f
    .catchall {:try_start_b7 .. :try_end_12f} :catchall_f5

    if-eqz v6, :cond_1ce

    .line 698
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 702
    iget-object v5, v6, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v5, :cond_141

    .line 704
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->skipPSSCollectionBecauseFrozen()Z

    move-result v5

    if-nez v5, :cond_15b

    :cond_141
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v6, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v14, v14, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 705
    invoke-virtual {v5, v14}, Lcom/android/server/am/ActivityManagerService;->isCameraActiveForUid(I)Z

    move-result v5

    if-nez v5, :cond_15b

    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-eqz v5, :cond_156

    goto :goto_15b

    .line 707
    :cond_156
    invoke-static {v10, v1, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v14

    goto :goto_15d

    :cond_15b
    :goto_15b
    move-wide/from16 v14, v18

    .line 708
    :goto_15d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 709
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v5

    cmp-long v22, v14, v18

    if-eqz v22, :cond_1c1

    .line 710
    :try_start_168
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v22

    if-eqz v22, :cond_1c1

    move/from16 v22, v3

    .line 711
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v3

    if-ne v3, v2, :cond_1b9

    .line 712
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v3

    if-ne v3, v10, :cond_1b9

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v23

    cmp-long v3, v23, v8

    if-nez v3, :cond_1b9

    add-int/lit8 v23, v7, 0x1

    .line 714
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime()V
    :try_end_189
    .catchall {:try_start_168 .. :try_end_189} :catchall_1b5

    move-object v3, v1

    move-object v7, v5

    move-object v1, v6

    .line 715
    :try_start_18c
    aget-wide v5, v3, v22

    const/4 v8, 0x1

    aget-wide v8, v3, v8

    const/4 v10, 0x2

    aget-wide v24, v3, v10

    sub-long v12, v20, v12

    move-object v10, v3

    move-object/from16 v20, v4

    move-wide v3, v14

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14
    :try_end_19e
    .catchall {:try_start_18c .. :try_end_19e} :catchall_1b1

    move-object/from16 v21, v7

    move-wide v7, v8

    move-object/from16 v31, v20

    move-object/from16 v20, v10

    move-wide/from16 v9, v24

    move-object/from16 v24, v31

    .line 715
    :try_start_1a9
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/AppProfiler;->recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V

    move/from16 v2, v23

    goto :goto_1ca

    :catchall_1af
    move-exception v0

    goto :goto_1cc

    :catchall_1b1
    move-exception v0

    move-object/from16 v21, v7

    goto :goto_1cc

    :catchall_1b5
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_1cc

    :cond_1b9
    move-object/from16 v20, v1

    :goto_1bb
    move-object/from16 v24, v4

    move-object/from16 v21, v5

    move-object v1, v6

    goto :goto_1c6

    :cond_1c1
    move-object/from16 v20, v1

    move/from16 v22, v3

    goto :goto_1bb

    .line 718
    :goto_1c6
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    move v2, v7

    .line 730
    :goto_1ca
    monitor-exit v21

    goto :goto_1d5

    :goto_1cc
    monitor-exit v21
    :try_end_1cd
    .catchall {:try_start_1a9 .. :try_end_1cd} :catchall_1af

    throw v0

    :cond_1ce
    move-object/from16 v20, v1

    move/from16 v22, v3

    move-object/from16 v24, v4

    move v2, v7

    :goto_1d5
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v3, v22

    move-object/from16 v4, v24

    goto/16 :goto_b4

    .line 696
    :goto_1df
    :try_start_1df
    monitor-exit v5
    :try_end_1e0
    .catchall {:try_start_1df .. :try_end_1e0} :catchall_f5

    throw v0

    .line 618
    :goto_1e1
    :try_start_1e1
    monitor-exit v1
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_17

    throw v0
.end method

.method public final collectRssInBackground()V
    .registers 38

    move-object/from16 v0, p0

    .line 745
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 747
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 748
    :try_start_9
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v2, :cond_1a

    .line 749
    iput-boolean v12, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 750
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    goto :goto_1b

    :catchall_17
    move-exception v0

    goto/16 :goto_1a6

    :cond_1a
    move-object v2, v13

    .line 752
    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_17

    const-wide/16 v14, 0x0

    if-eqz v2, :cond_af

    .line 754
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 757
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 758
    :try_start_26
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v4, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v3

    .line 761
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_ac

    .line 765
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-nez v1, :cond_73

    .line 766
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    move v4, v12

    move-wide v5, v14

    :goto_40
    if-ge v4, v1, :cond_70

    .line 768
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v7

    .line 769
    :try_start_47
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_5d

    .line 771
    monitor-exit v7

    goto :goto_6b

    :catchall_5b
    move-exception v0

    goto :goto_6e

    .line 773
    :cond_5d
    monitor-exit v7
    :try_end_5e
    .catchall {:try_start_47 .. :try_end_5e} :catchall_5b

    .line 774
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v7, v13}, Landroid/os/Debug;->getRss(I[J)J

    move-result-wide v7

    add-long/2addr v5, v7

    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 773
    :goto_6e
    :try_start_6e
    monitor-exit v7
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_5b

    throw v0

    :cond_70
    move-wide/from16 v25, v5

    goto :goto_75

    :cond_73
    move-wide/from16 v25, v14

    .line 778
    :goto_75
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 779
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 786
    :try_start_7f
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v17

    .line 787
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v19

    .line 788
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v21

    .line 789
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v23

    const-wide/16 v1, 0x400

    mul-long v27, v17, v1

    mul-long v29, v19, v1

    mul-long v31, v21, v1

    mul-long v33, v23, v1

    mul-long v35, v25, v1

    .line 792
    invoke-static/range {v27 .. v36}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 794
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v26}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 796
    monitor-exit v3

    goto :goto_af

    :catchall_a9
    move-exception v0

    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_7f .. :try_end_ab} :catchall_a9

    throw v0

    :catchall_ac
    move-exception v0

    .line 761
    :try_start_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v0

    :cond_af
    :goto_af
    move v1, v12

    .line 808
    :goto_b0
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 809
    :try_start_b3
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_f4

    .line 810
    iget-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    if-nez v3, :cond_c0

    goto :goto_e9

    .line 811
    :cond_c0
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collected rss of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " processes in "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v10

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 811
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :goto_e9
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 816
    monitor-exit v2

    return-void

    :catchall_f0
    move-exception v0

    move-object v4, v2

    goto/16 :goto_1a4

    .line 818
    :cond_f4
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;
    :try_end_fc
    .catchall {:try_start_b3 .. :try_end_fc} :catchall_f0

    move-object v4, v2

    .line 819
    :try_start_fd
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getPssProcState()I

    move-result v2

    .line 820
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getPssStatType()I

    move-result v5

    .line 821
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v6

    .line 822
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 823
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v16

    if-eqz v16, :cond_129

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v12

    if-ne v2, v12, :cond_129

    const-wide/16 v17, 0x3e8

    add-long v17, v6, v17

    cmp-long v8, v17, v8

    if-gez v8, :cond_129

    .line 825
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v8

    goto :goto_12e

    :catchall_126
    move-exception v0

    goto/16 :goto_1a4

    .line 827
    :cond_129
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    move-object v3, v13

    const/4 v8, 0x0

    .line 837
    :goto_12e
    monitor-exit v4
    :try_end_12f
    .catchall {:try_start_fd .. :try_end_12f} :catchall_126

    if-eqz v3, :cond_19f

    .line 839
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 843
    iget-object v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v4, :cond_141

    .line 845
    invoke-virtual {v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->skipPSSCollectionBecauseFrozen()Z

    move-result v4

    if-nez v4, :cond_15b

    :cond_141
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 846
    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityManagerService;->isCameraActiveForUid(I)Z

    move-result v4

    if-nez v4, :cond_15b

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-eqz v4, :cond_156

    goto :goto_15b

    .line 848
    :cond_156
    invoke-static {v8, v13}, Landroid/os/Debug;->getRss(I[J)J

    move-result-wide v19

    goto :goto_15d

    :cond_15b
    :goto_15b
    move-wide/from16 v19, v14

    .line 849
    :goto_15d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 850
    iget-object v12, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v12

    cmp-long v4, v19, v14

    if-eqz v4, :cond_198

    .line 851
    :try_start_168
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_198

    .line 852
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v4

    if-ne v4, v2, :cond_198

    .line 853
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v4

    if-ne v4, v8, :cond_198

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-nez v4, :cond_198

    add-int/lit8 v23, v1, 0x1

    .line 855
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime()V

    sub-long v6, v21, v17

    .line 857
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object v1, v3

    move-wide/from16 v3, v19

    .line 856
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/AppProfiler;->recordRssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJIJJ)V

    move/from16 v1, v23

    goto :goto_19b

    :catchall_196
    move-exception v0

    goto :goto_19d

    .line 859
    :cond_198
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 871
    :goto_19b
    monitor-exit v12

    goto :goto_19f

    :goto_19d
    monitor-exit v12
    :try_end_19e
    .catchall {:try_start_168 .. :try_end_19e} :catchall_196

    throw v0

    :cond_19f
    :goto_19f
    const/4 v12, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_b0

    .line 837
    :goto_1a4
    :try_start_1a4
    monitor-exit v4
    :try_end_1a5
    .catchall {:try_start_1a4 .. :try_end_1a5} :catchall_126

    throw v0

    .line 752
    :goto_1a6
    :try_start_1a6
    monitor-exit v1
    :try_end_1a7
    .catchall {:try_start_1a6 .. :try_end_1a7} :catchall_17

    throw v0
.end method

.method public final deferPssForActivityStart()V
    .registers 5

    .line 1214
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->deferPssIfNeededLPf()V

    .line 1220
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_1d

    .line 1221
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 1222
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_1d
    move-exception p0

    .line 1220
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0

    :cond_20
    return-void
.end method

.method public final deferPssIfNeededLPf()V
    .registers 5

    .line 1207
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 1208
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1209
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_15
    return-void
.end method

.method public final doLowMemReportIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 11

    .line 1574
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->haveBackgroundProcessLOSP()Z

    move-result v0

    if-nez v0, :cond_59

    .line 1575
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    if-eqz v0, :cond_21

    .line 1578
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    cmp-long v1, v5, v1

    if-gez v1, :cond_1f

    move v0, v7

    goto :goto_21

    .line 1581
    :cond_1f
    iput-wide v5, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 1584
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    if-eqz v0, :cond_32

    .line 1586
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_30
    move-object v4, v2

    goto :goto_34

    :cond_32
    const/4 v2, 0x0

    goto :goto_30

    .line 1587
    :goto_34
    invoke-static {v1}, Lcom/android/server/am/EventLogTags;->writeAmLowMemory(I)V

    .line 1588
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;J)V

    invoke-virtual {v8, v7, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    if-eqz v0, :cond_5a

    .line 1616
    iget-object p0, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 p1, 0x21

    invoke-virtual {p0, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1617
    iget-object p1, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5a

    :cond_59
    move-object v2, p0

    .line 1620
    :cond_5a
    :goto_5a
    iget-object p0, v2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1621
    :try_start_5d
    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1622
    monitor-exit p0

    return-void

    :catchall_62
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_62

    throw p1
.end method

.method public dumpHeapFinished(Ljava/lang/String;I)V
    .registers 6

    .line 1069
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1070
    :try_start_3
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    if-eq p2, v1, :cond_2f

    .line 1071
    const-string p1, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpHeapFinished: Calling pid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not match last pid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    goto :goto_72

    .line 1075
    :cond_2f
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    if-eqz p2, :cond_50

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    goto :goto_50

    .line 1081
    :cond_3e
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 p1, 0x32

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1085
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    .line 1086
    monitor-exit v0

    return-void

    .line 1076
    :cond_50
    :goto_50
    const-string p2, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpHeapFinished: Calling path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match last path "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    monitor-exit v0

    return-void

    .line 1086
    :goto_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_2d

    throw p0
.end method

.method public dumpLastMemoryLevelLocked(Ljava/io/PrintWriter;)V
    .registers 3

    .line 2564
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-eqz p0, :cond_2a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    .line 2578
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 2579
    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2575
    :cond_16
    const-string p0, "critical)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2572
    :cond_1c
    const-string/jumbo p0, "low)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2569
    :cond_23
    const-string/jumbo p0, "moderate)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2566
    :cond_2a
    const-string/jumbo p0, "normal)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpMemWatchProcessesLPf(Ljava/io/PrintWriter;Z)Z
    .registers 12

    .line 2497
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_b7

    .line 2498
    const-string v0, "  Mem watch processes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2499
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 2500
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2501
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1d
    if-ltz v1, :cond_85

    .line 2502
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2503
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2504
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_31
    if-ltz v4, :cond_82

    if-eqz p2, :cond_39

    .line 2506
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 p2, 0x0

    .line 2509
    :cond_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2510
    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2511
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2512
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2513
    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 2514
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_78

    .line 2515
    const-string v7, ", report to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    :cond_78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_31

    :cond_82
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 2520
    :cond_85
    const-string v0, "  mMemWatchDumpProcName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2521
    const-string v0, "  mMemWatchDumpUri="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2522
    const-string v0, "  mMemWatchDumpPid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2523
    const-string v0, "  mMemWatchDumpUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2524
    const-string v0, "  mMemWatchIsUserInitiated="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_b7
    return p2
.end method

.method public dumpMemoryLevelsLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 2586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowLowerMemLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastMemoryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLastNumProcesses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 12

    .line 2721
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_73

    .line 2723
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2724
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v3, v2, :cond_73

    .line 2725
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_2b

    .line 2726
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_70

    :cond_2b
    if-nez v4, :cond_39

    if-eqz p2, :cond_32

    .line 2730
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2732
    :cond_32
    const-string p2, "  Processes that are waiting to GC:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x1

    move v4, p2

    .line 2735
    :cond_39
    const-string v6, "    Process "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2736
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2737
    const-string v6, "      lowMem="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2738
    const-string v6, ", last gced="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2739
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v6

    sub-long v6, v0, v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 2740
    const-string v6, " ms ago, last lowMem="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2741
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v5

    sub-long v5, v0, v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 2742
    const-string v5, " ms ago"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_73
    return p2
.end method

.method public dumpProfileDataLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z
    .registers 5

    .line 2531
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2532
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2533
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2534
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3b

    :cond_2c
    if-eqz p2, :cond_3c

    .line 2535
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    goto :goto_3c

    :cond_3b
    return p3

    :cond_3c
    :goto_3c
    if-eqz p3, :cond_42

    .line 2537
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 p3, 0x0

    .line 2540
    :cond_42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mProfileApp="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mProfileProc="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2541
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2540
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2542
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    if-eqz p2, :cond_110

    .line 2543
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mProfileFile="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mProfileFd="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2544
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2543
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2545
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSamplingInterval="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2546
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mAutoStopProfiler="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2548
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mStreamingOutput="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2550
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mClockType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2552
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mProfilerOutputVersion="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2554
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2545
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mProfileType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_110
    return p3
.end method

.method public forAllCpuStats(Ljava/util/function/Consumer;)V
    .registers 6

    .line 2260
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2261
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 2263
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 2265
    :cond_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public getAppProfileStatsForDebugging(JI)Landroid/util/Pair;
    .registers 7

    .line 2680
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2681
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 2682
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    .line 2683
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object p0

    .line 2684
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_35

    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_16
    if-gt p2, p3, :cond_2b

    const/16 v2, 0xa

    .line 2688
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_26

    .line 2690
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2b

    :cond_26
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    .line 2695
    :cond_2b
    :goto_2b
    new-instance p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :catchall_35
    move-exception p0

    .line 2684
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getCpuDelayTimeForPid(I)J
    .registers 2

    .line 2250
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuDelayTimeForPid(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 4

    .line 2254
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2255
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v1, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 2256
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getCpuTimeForPid(I)J
    .registers 2

    .line 2246
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLastMemoryLevelLocked()I
    .registers 3

    .line 1307
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1310
    :cond_6
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    return p0
.end method

.method public getTestPssMode()Z
    .registers 1

    .line 1302
    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    return p0
.end method

.method public handleAbortDumpHeap(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 1161
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1162
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    .line 1163
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1164
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    const/4 p1, -0x1

    .line 1165
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 1166
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 1168
    :cond_1a
    :goto_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_18

    throw p0

    :cond_1e
    return-void
.end method

.method public final handleMemoryPressureChangedLocked(II)V
    .registers 9

    .line 1956
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const-string/jumbo v3, "mem-pressure-event"

    .line 1957
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v1, p1

    move v2, p2

    .line 1956
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartOnMemoryPressureIfNeededLocked(IILjava/lang/String;J)V

    return-void
.end method

.method public handlePostDumpHeapNotification()V
    .registers 9

    .line 1095
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1096
    :try_start_3
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 1097
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1098
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_1d

    .line 1100
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_70

    :cond_1d
    :goto_1d
    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    .line 1103
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1104
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_30

    :cond_2d
    const-wide/16 v5, 0x0

    move-object v3, v4

    .line 1109
    :goto_30
    iget-boolean v7, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 1111
    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 1112
    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    const/4 v4, -0x1

    .line 1113
    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 1114
    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 1115
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_1b

    if-nez v2, :cond_3f

    return-void

    .line 1124
    :cond_3f
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1126
    const-string v4, "com.android.shell"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1127
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1128
    const-string v4, "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1129
    const-string v4, "com.android.internal.extra.heap_dump.SIZE_BYTES"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1130
    const-string v4, "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    const-string v3, "com.android.internal.extra.heap_dump.PROCESS_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1134
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1133
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 1115
    :goto_70
    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_1b

    throw p0
.end method

.method public isLastMemoryLevelNormal()Z
    .registers 5

    .line 1315
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_b

    if-gtz v0, :cond_a

    return v3

    :cond_a
    return v2

    .line 1318
    :cond_b
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-gtz p0, :cond_10

    return v3

    :cond_10
    return v2
.end method

.method public isProfilingPss()Z
    .registers 1

    .line 736
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$doLowMemReportIfNeededLocked$4(Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V
    .registers 13

    if-eq p5, p1, :cond_68

    .line 1589
    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_68

    :cond_9
    if-eqz p2, :cond_29

    .line 1593
    new-instance v0, Lcom/android/server/am/ProcessMemInfo;

    iget-object v1, p5, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    .line 1594
    invoke-virtual {p5}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v3

    invoke-virtual {p5}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v4

    .line 1595
    invoke-virtual {p5}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1593
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    :cond_29
    iget-object p1, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1598
    invoke-virtual {p1}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v0

    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-gtz p2, :cond_68

    .line 1602
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1603
    :try_start_3d
    invoke-virtual {p5}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_4e

    const-wide/16 v0, 0x0

    .line 1604
    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    goto :goto_55

    :catchall_4b
    move-exception v0

    move-object p0, v0

    goto :goto_66

    .line 1606
    :cond_4e
    invoke-virtual {p1}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    :goto_55
    const/4 v0, 0x1

    .line 1608
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1609
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/ProcessProfileRecord;->setLastLowMemory(J)V

    .line 1610
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1611
    invoke-virtual {p0, p5}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1612
    monitor-exit p2

    return-void

    :goto_66
    monitor-exit p2
    :try_end_67
    .catchall {:try_start_3d .. :try_end_67} :catchall_4b

    throw p0

    :cond_68
    :goto_68
    return-void
.end method

.method public final synthetic lambda$requestPssAllProcsLPr$2(ZZJLcom/android/server/am/ProcessRecord;)V
    .registers 10

    .line 1268
    iget-object p5, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1269
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 1270
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_11

    goto :goto_45

    .line 1273
    :cond_11
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v0

    if-nez p1, :cond_28

    if-eqz p2, :cond_20

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    cmp-long p1, p3, v2

    if-gtz p1, :cond_28

    :cond_20
    const-wide/32 v2, 0x124f80

    add-long/2addr v0, v2

    cmp-long p1, p3, v0

    if-lez p1, :cond_45

    .line 1277
    :cond_28
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result p1

    invoke-virtual {p5, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    if-eqz p2, :cond_33

    const/4 p1, 0x2

    goto :goto_34

    :cond_33
    const/4 p1, 0x1

    .line 1278
    :goto_34
    invoke-virtual {p5, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 1280
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result p1

    move-object p2, p5

    const/4 p5, 0x1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 1281
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    :goto_45
    return-void
.end method

.method public onActivityLaunched()V
    .registers 5

    .line 2376
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 2377
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2378
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_14
    return-void
.end method

.method public onActivityManagerInternalAdded()V
    .registers 3

    .line 2358
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2363
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 2365
    const-string v0, "ActivityManager"

    const-string v1, "Interrupted wait during start"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2366
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2367
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAppDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 2488
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2489
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-ne v1, p1, :cond_11

    .line 2490
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 2492
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public onCleanupApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 2478
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2479
    :try_start_3
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2480
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2481
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2482
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 2483
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 1463
    :try_start_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1467
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 1468
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1469
    invoke-interface {p1}, Landroid/app/IApplicationThread;->scheduleLowMemory()V

    return-void

    .line 1471
    :cond_1d
    invoke-interface {p1}, Landroid/app/IApplicationThread;->processInBackground()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    return-void
.end method

.method public final performAppGcsIfAppropriateLocked()V
    .registers 3

    .line 1517
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1518
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canGcNowLocked()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1519
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsLPf()V

    .line 1520
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_17

    .line 1523
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1524
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_10

    throw p0
.end method

.method public final performAppGcsLPf()V
    .registers 6

    .line 1485
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    .line 1488
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_47

    .line 1489
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1490
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1491
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getCurRawAdj()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_2a

    .line 1492
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1493
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v1, v3

    .line 1494
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_44

    .line 1497
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler;->performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1498
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    return-void

    .line 1503
    :cond_44
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1509
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    return-void
.end method

.method public printCurrentCpuState(Ljava/lang/StringBuilder;J)V
    .registers 6

    .line 2671
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2673
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/16 v1, 0xa

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2674
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public profileControlLPf(Lcom/android/server/am/ProcessRecord;ZLandroid/app/ProfilerInfo;I)Z
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_6e

    if-nez p4, :cond_9

    move v3, v1

    goto :goto_a

    :cond_9
    move v3, v0

    .line 2011
    :goto_a
    :try_start_a
    invoke-virtual {p0, v2, v2, v0}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V

    .line 2012
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 2013
    iget-boolean v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_24
    .catchall {:try_start_a .. :try_end_15} :catchall_6b

    if-eqz v0, :cond_27

    :try_start_17
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1b} :catch_24
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    move-object v8, v0

    :goto_1c
    move-object v7, p3

    move v9, p4

    goto :goto_29

    :catchall_1f
    move-exception v0

    move-object p0, v0

    move-object v7, p3

    goto/16 :goto_9d

    :catch_24
    move-object v7, p3

    goto/16 :goto_95

    :cond_27
    move-object v8, v2

    goto :goto_1c

    .line 2012
    :goto_29
    :try_start_29
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;Landroid/content/pm/ApplicationInfo;I)V

    .line 2014
    iget-object p3, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p3, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2015
    iput v9, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    if-eqz v3, :cond_43

    .line 2019
    iget-object p3, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_37} :catch_95
    .catchall {:try_start_29 .. :try_end_37} :catchall_3c

    .line 2021
    :try_start_37
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3b} :catch_95
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3c

    goto :goto_41

    :catchall_3c
    move-exception v0

    :goto_3d
    move-object p0, v0

    goto/16 :goto_9d

    :catch_40
    move-object p3, v2

    .line 2025
    :goto_41
    :try_start_41
    iput-object p3, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2028
    :cond_43
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p3

    invoke-interface {p3, p2, v7, v9}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4c} :catch_95
    .catchall {:try_start_41 .. :try_end_4c} :catchall_3c

    if-eqz v3, :cond_8a

    .line 2033
    :try_start_4e
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_59} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_59} :catch_95
    .catchall {:try_start_4e .. :try_end_59} :catchall_3c

    .line 2036
    :catch_59
    :try_start_59
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p0

    iput-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2038
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    sget p1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p0, p1, :cond_8a

    move-object p3, v2

    goto :goto_8b

    :catchall_6b
    move-exception v0

    move-object v7, p3

    goto :goto_3d

    :cond_6e
    move-object v7, p3

    move v9, p4

    if-ne v9, v1, :cond_73

    move v0, v1

    :cond_73
    if-eqz v7, :cond_87

    .line 2048
    iget-object p2, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_77} :catch_95
    .catchall {:try_start_59 .. :try_end_77} :catchall_3c

    if-eqz p2, :cond_87

    if-eqz v0, :cond_81

    .line 2052
    :try_start_7b
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    :goto_7f
    move-object v2, p2

    goto :goto_85

    .line 2054
    :cond_81
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_84} :catch_85
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_84} :catch_95
    .catchall {:try_start_7b .. :try_end_84} :catchall_3c

    goto :goto_7f

    .line 2059
    :catch_85
    :goto_85
    :try_start_85
    iput-object v2, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2061
    :cond_87
    invoke-virtual {p0, p1, v7, v9}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8a} :catch_95
    .catchall {:try_start_85 .. :try_end_8a} :catchall_3c

    :cond_8a
    move-object p3, v7

    :goto_8b
    if-eqz p3, :cond_94

    .line 2068
    iget-object p0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_94

    .line 2070
    :try_start_91
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_94

    :catch_94
    :cond_94
    return v1

    .line 2066
    :catch_95
    :goto_95
    :try_start_95
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Process disappeared"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_3c

    :goto_9d
    if-eqz v7, :cond_a6

    .line 2068
    iget-object p1, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_a6

    .line 2070
    :try_start_a3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a6

    .line 2074
    :catch_a6
    :cond_a6
    throw p0
.end method

.method public final recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v12, p7

    .line 900
    iget-object v14, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 902
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v15

    iget v2, v14, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v3, v14, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    const-wide/16 v4, 0x400

    mul-long v18, p3, v4

    mul-long v20, p5, v4

    mul-long v22, v12, v4

    mul-long v24, p9, v4

    move/from16 v27, p2

    move/from16 v26, p11

    move-wide/from16 v28, p12

    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 901
    invoke-static/range {v15 .. v29}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    move-wide/from16 v2, p14

    .line 904
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastPssTime(J)V

    const/4 v8, 0x1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    move/from16 v9, p11

    move-wide/from16 v10, p12

    .line 905
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 912
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastPss(J)V

    .line 913
    invoke-virtual {v1, v12, v13}, Lcom/android/server/am/ProcessProfileRecord;->setLastSwapPss(J)V

    const/16 v4, 0xe

    move/from16 v5, p2

    if-lt v5, v4, :cond_4c

    .line 915
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedPss(J)V

    .line 916
    invoke-virtual {v1, v12, v13}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedSwapPss(J)V

    .line 918
    :cond_4c
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    .line 920
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 921
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_78

    .line 924
    iget v4, v14, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_71

    .line 926
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/util/Pair;

    :cond_71
    if-eqz v4, :cond_78

    .line 929
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    :goto_79
    if-eqz v2, :cond_dc

    .line 933
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v18, v4

    if-ltz v4, :cond_dc

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_dc

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    if-nez v4, :cond_dc

    .line 935
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v5, " exceeded pss limit "

    const-string v6, "Process "

    const-string v7, "ActivityManager"

    if-nez v4, :cond_bc

    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_9e

    goto :goto_bc

    .line 939
    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but debugging not enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 936
    :cond_bc
    :goto_bc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; reporting"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    :cond_dc
    return-void
.end method

.method public final recordRssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJIJJ)V
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 959
    iget-object v12, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 965
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v13

    iget v14, v12, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v15, v12, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    const-wide/16 v28, 0x400

    mul-long v22, p3, v28

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move/from16 v25, p2

    move/from16 v24, p5

    move-wide/from16 v26, p6

    .line 964
    invoke-static/range {v13 .. v27}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    move-wide/from16 v2, p8

    .line 967
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastPssTime(J)V

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    move-wide/from16 v6, p3

    move/from16 v9, p5

    move-wide/from16 v10, p6

    .line 969
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 976
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    const/16 v2, 0xe

    move/from16 v3, p2

    if-lt v3, v2, :cond_40

    .line 978
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedRss(J)V

    .line 981
    :cond_40
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 982
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, v12, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_6a

    .line 985
    iget v5, v12, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    if-nez v5, :cond_63

    .line 987
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/util/Pair;

    :cond_63
    if-eqz v5, :cond_6a

    .line 990
    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    goto :goto_6b

    :cond_6a
    move-object v2, v4

    :goto_6b
    if-eqz v2, :cond_d8

    .line 995
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v5

    invoke-static {v5, v4, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v4

    mul-long v4, v4, v28

    .line 996
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_d8

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_d8

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    if-nez v4, :cond_d8

    .line 998
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v5, " exceeded pss limit "

    const-string v6, "Process "

    const-string v7, "ActivityManager"

    if-nez v4, :cond_b8

    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_9a

    goto :goto_b8

    .line 1002
    :cond_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but debugging not enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 999
    :cond_b8
    :goto_b8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; reporting"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    :cond_d8
    return-void
.end method

.method public reportMemUsage(Ljava/util/ArrayList;)V
    .registers 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1626
    new-instance v2, Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 1627
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v3, :cond_22

    .line 1628
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessMemInfo;

    .line 1629
    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1631
    :cond_22
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    const/4 v3, 0x4

    .line 1632
    new-array v5, v3, [J

    const/4 v6, 0x2

    .line 1633
    new-array v7, v6, [J

    .line 1635
    new-instance v8, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/server/am/AppProfiler;->getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v8

    .line 1636
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v17, v3

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    :goto_3f
    if-ge v12, v9, :cond_bb

    .line 1640
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    const-wide/16 v20, 0x0

    .line 1641
    iget v10, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v10, v7, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v10

    const/16 v18, 0x1

    .line 1642
    sget-object v3, Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;->RSS:Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;

    const/16 v22, 0x0

    iget v4, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v3, v4}, Lcom/android/internal/os/ProcfsMemoryUtil;->readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;I)I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v23, v8

    .line 1643
    sget-object v8, Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;->PSS:Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;

    move/from16 v24, v9

    iget v9, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v8, v9}, Lcom/android/internal/os/ProcfsMemoryUtil;->readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;I)I

    move-result v8

    int-to-long v8, v8

    cmp-long v25, v10, v20

    if-gtz v25, :cond_75

    cmp-long v25, v8, v20

    if-lez v25, :cond_78

    :cond_75
    move/from16 v25, v12

    goto :goto_7b

    :cond_78
    move/from16 v25, v12

    goto :goto_b2

    .line 1645
    :goto_7b
    iget v12, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_b2

    .line 1646
    new-instance v26, Lcom/android/server/am/ProcessMemInfo;

    iget-object v12, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v6, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const-string/jumbo v31, "native"

    const/16 v32, 0x0

    const/16 v29, -0x3e8

    const/16 v30, -0x1

    move/from16 v28, v6

    move-object/from16 v27, v12

    invoke-direct/range {v26 .. v32}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v26

    .line 1648
    iput-wide v10, v6, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1649
    iput-wide v3, v6, Lcom/android/server/am/ProcessMemInfo;->dmabufRss:J

    .line 1650
    iput-wide v8, v6, Lcom/android/server/am/ProcessMemInfo;->dmabufPss:J

    .line 1651
    aget-wide v3, v7, v18

    iput-wide v3, v6, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 1652
    aget-wide v3, v5, v22

    iput-wide v3, v6, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 1653
    aget-wide v3, v5, v18

    add-long/2addr v13, v3

    .line 1654
    aget-wide v3, v5, v19

    add-long/2addr v15, v3

    .line 1655
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b2
    :goto_b2
    add-int/lit8 v12, v25, 0x1

    move/from16 v6, v19

    move-object/from16 v8, v23

    move/from16 v9, v24

    goto :goto_3f

    :cond_bb
    move/from16 v19, v6

    const/16 v18, 0x1

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    .line 1663
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-wide/from16 v8, v20

    move-wide v10, v8

    move-wide/from16 v23, v10

    move/from16 v3, v22

    :goto_ce
    if-ge v3, v2, :cond_118

    .line 1664
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    move v6, v2

    move v12, v3

    .line 1665
    iget-wide v2, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v2, v2, v20

    if-nez v2, :cond_10a

    .line 1666
    iget v2, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-static {v2, v7, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1667
    sget-object v2, Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;->RSS:Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;

    iget v3, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-static {v2, v3}, Lcom/android/internal/os/ProcfsMemoryUtil;->readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v4, Lcom/android/server/am/ProcessMemInfo;->dmabufRss:J

    .line 1668
    sget-object v2, Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;->PSS:Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;

    iget v3, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-static {v2, v3}, Lcom/android/internal/os/ProcfsMemoryUtil;->readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v4, Lcom/android/server/am/ProcessMemInfo;->dmabufPss:J

    .line 1669
    aget-wide v2, v7, v18

    iput-wide v2, v4, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 1670
    aget-wide v2, v5, v22

    iput-wide v2, v4, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 1671
    aget-wide v2, v5, v18

    add-long/2addr v13, v2

    .line 1672
    aget-wide v2, v5, v19

    add-long/2addr v15, v2

    .line 1674
    :cond_10a
    iget-wide v2, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long/2addr v8, v2

    .line 1675
    iget-wide v2, v4, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    add-long/2addr v10, v2

    .line 1676
    iget-wide v2, v4, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v23, v23, v2

    add-int/lit8 v3, v12, 0x1

    move v2, v6

    goto :goto_ce

    .line 1678
    :cond_118
    new-instance v2, Lcom/android/server/am/AppProfiler$2;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppProfiler$2;-><init>(Lcom/android/server/am/AppProfiler;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1690
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1692
    const-string v3, "Low on memory -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    const-string/jumbo v3, "total"

    move/from16 v5, v22

    invoke-static {v2, v8, v9, v3, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1694
    const-string/jumbo v3, "total"

    move/from16 v5, v18

    invoke-static {v4, v8, v9, v3, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1696
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1697
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1698
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1705
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/high16 v25, -0x80000000

    move-wide/from16 v37, v10

    move-wide/from16 v26, v20

    move-wide/from16 v32, v26

    move-wide/from16 v34, v32

    move/from16 v10, v25

    const/4 v5, 0x0

    const/16 v25, 0x1

    :goto_165
    if-ge v5, v12, :cond_25e

    .line 1706
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v11, v28

    check-cast v11, Lcom/android/server/am/ProcessMemInfo;

    move/from16 v40, v5

    .line 1708
    iget v5, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move-wide/from16 v41, v13

    const/16 v13, 0x384

    if-lt v5, v13, :cond_17d

    .line 1709
    iget-wide v13, v11, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v26, v26, v13

    :cond_17d
    move-wide/from16 v43, v26

    const/16 v13, -0x3e8

    if-eq v5, v13, :cond_190

    const/16 v14, 0x1f4

    if-lt v5, v14, :cond_194

    const/16 v14, 0x258

    if-eq v5, v14, :cond_194

    const/16 v14, 0x2bc

    if-ne v5, v14, :cond_190

    goto :goto_194

    :cond_190
    move-wide/from16 v45, v15

    goto/16 :goto_216

    :cond_194
    :goto_194
    if-eq v10, v5, :cond_1b7

    if-gtz v5, :cond_19d

    .line 1719
    const-string v10, " / "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    :cond_19d
    iget v10, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v10, :cond_1b1

    if-eqz v25, :cond_1aa

    .line 1723
    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v25, 0x0

    .line 1726
    :cond_1aa
    const-string v10, "\n\t at "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1af
    move v10, v5

    goto :goto_1c1

    .line 1728
    :cond_1b1
    const-string v10, "$"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1af

    .line 1731
    :cond_1b7
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    :goto_1c1
    iget v5, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v5, :cond_1d0

    .line 1735
    iget-wide v13, v11, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v5, v11, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    move-wide/from16 v45, v15

    const/4 v15, 0x0

    invoke-static {v2, v13, v14, v5, v15}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    goto :goto_1d2

    :cond_1d0
    move-wide/from16 v45, v15

    .line 1737
    :goto_1d2
    iget-wide v13, v11, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v5, v11, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v4, v13, v14, v5, v15}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1738
    iget v5, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v5, :cond_216

    add-int/lit8 v5, v40, 0x1

    if-ge v5, v12, :cond_1ec

    .line 1739
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    iget v5, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq v5, v10, :cond_216

    .line 1740
    :cond_1ec
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 1741
    :goto_1f2
    sget-object v13, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v14, v13

    if-ge v5, v14, :cond_211

    .line 1742
    aget v14, v13, v5

    iget v15, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v14, v15, :cond_20e

    .line 1743
    sget-object v14, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    const-string v14, ":"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    aget v13, v13, v5

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_20e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f2

    .line 1748
    :cond_211
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_216
    :goto_216
    move/from16 v5, v25

    .line 1752
    invoke-static {v3, v11}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 1753
    iget v13, v11, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v14, -0x3e8

    if-ne v13, v14, :cond_234

    .line 1755
    iget-wide v13, v11, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v15, 0x200

    cmp-long v15, v13, v15

    if-ltz v15, :cond_22d

    .line 1756
    invoke-static {v6, v11}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    goto :goto_251

    :cond_22d
    add-long v32, v32, v13

    .line 1759
    iget-wide v13, v11, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v34, v34, v13

    goto :goto_251

    :cond_234
    cmp-long v13, v32, v20

    if-lez v13, :cond_24e

    const-wide/16 v30, -0x1

    .line 1765
    const-string v36, "(Other native)"

    const/16 v26, -0x3e8

    const/16 v27, -0x1

    const-wide/16 v28, -0x1

    move-object/from16 v25, v6

    invoke-static/range {v25 .. v36}, Lcom/android/server/am/ActivityManagerService;->appendBasicMemEntry(Ljava/lang/StringBuilder;IIJJJJLjava/lang/String;)V

    const/16 v13, 0xa

    .line 1767
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v32, v20

    .line 1770
    :cond_24e
    invoke-static {v7, v11}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    :goto_251
    add-int/lit8 v11, v40, 0x1

    move/from16 v25, v5

    move v5, v11

    move-wide/from16 v13, v41

    move-wide/from16 v26, v43

    move-wide/from16 v15, v45

    goto/16 :goto_165

    :cond_25e
    move-wide/from16 v41, v13

    move-wide/from16 v45, v15

    .line 1774
    const-string v1, "           "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    invoke-static {v7, v8, v9}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 1776
    const-string v1, ": TOTAL"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v1, v23, v20

    if-lez v1, :cond_284

    .line 1778
    const-string v1, " ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    invoke-static/range {v23 .. v24}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    const-string v1, " memtrack)"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    :cond_284
    const-string v1, "\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1785
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1786
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v5

    .line 1788
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x400

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1789
    invoke-static {v5}, Landroid/os/Debug;->getMemInfo([J)V

    .line 1790
    const-string v11, "  MemInfo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x5

    .line 1791
    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " slab, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    aget-wide v11, v5, v17

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " shmem, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xc

    .line 1793
    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " vm alloc, "

    .line 1794
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xd

    .line 1795
    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " page tables "

    .line 1796
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xe

    .line 1797
    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " kernel stack\n"

    .line 1798
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    const-string v11, "           "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    aget-wide v11, v5, v19

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " buffers, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x3

    .line 1801
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " cached, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xb

    .line 1802
    aget-wide v12, v5, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " mapped, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x1

    .line 1803
    aget-wide v12, v5, v18

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " free\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v39, 0xa

    .line 1804
    aget-wide v12, v5, v39

    cmp-long v12, v12, v20

    if-eqz v12, :cond_36e

    .line 1805
    const-string v12, "  ZRAM: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    aget-wide v12, v5, v39

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    const-string v12, " RAM, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x8

    .line 1808
    aget-wide v12, v5, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    const-string v12, " swap total, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x9

    .line 1810
    aget-wide v12, v5, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    const-string v5, " swap free\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    :cond_36e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getKsmInfo()[J

    move-result-object v5

    const/16 v18, 0x1

    .line 1814
    aget-wide v12, v5, v18

    cmp-long v12, v12, v20

    if-nez v12, :cond_38e

    const/16 v22, 0x0

    aget-wide v12, v5, v22

    cmp-long v12, v12, v20

    if-nez v12, :cond_38e

    aget-wide v12, v5, v19

    cmp-long v12, v12, v20

    if-nez v12, :cond_38e

    aget-wide v12, v5, v11

    cmp-long v12, v12, v20

    if-eqz v12, :cond_3cf

    .line 1816
    :cond_38e
    const-string v12, "  KSM: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x1

    .line 1817
    aget-wide v12, v5, v18

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    const-string v12, " saved from shared "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    .line 1819
    aget-wide v12, v5, v22

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    const-string v12, "\n       "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    aget-wide v12, v5, v19

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    const-string v12, " unshared; "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    const-string v5, " volatile\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    :cond_3cf
    const-string v5, "  Free RAM: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v11

    add-long v11, v26, v11

    .line 1828
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 1827
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v11

    .line 1831
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v13

    .line 1832
    invoke-static {}, Landroid/os/Debug;->getIonPoolsSizeKb()J

    move-result-wide v15

    .line 1833
    invoke-static {}, Landroid/os/Debug;->getDmabufMappedSizeKb()J

    move-result-wide v17

    cmp-long v5, v13, v20

    if-ltz v5, :cond_41e

    cmp-long v5, v15, v20

    if-ltz v5, :cond_41e

    sub-long v23, v13, v17

    .line 1836
    const-string v5, "       ION: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v13, v15

    .line 1837
    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v11, v11, v23

    sub-long v8, v8, v41

    add-long v8, v8, v17

    goto :goto_470

    .line 1846
    :cond_41e
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v13

    cmp-long v5, v13, v20

    if-ltz v5, :cond_43e

    sub-long v15, v13, v17

    .line 1849
    const-string v5, "DMA-BUF: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v11, v15

    sub-long v8, v8, v41

    add-long v8, v8, v17

    .line 1860
    :cond_43e
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v13

    cmp-long v5, v13, v20

    if-ltz v5, :cond_457

    .line 1862
    const-string v5, "DMA-BUF Heap: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    :cond_457
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapPoolsSizeKb()J

    move-result-wide v13

    cmp-long v5, v13, v20

    if-ltz v5, :cond_470

    .line 1869
    const-string v5, "DMA-BUF Heaps pool: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    :cond_470
    :goto_470
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v13

    cmp-long v5, v13, v20

    if-ltz v5, :cond_4c0

    .line 1877
    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    move-result-wide v15

    cmp-long v5, v15, v20

    if-ltz v5, :cond_4af

    sub-long v17, v13, v15

    .line 1880
    const-string v5, "      GPU: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    const-string v5, " ("

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    invoke-static/range {v17 .. v18}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    const-string v5, " dmabuf + "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    invoke-static/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    const-string v5, " private)\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v8, v45

    add-long/2addr v11, v15

    goto :goto_4c0

    .line 1892
    :cond_4af
    const-string v5, "       GPU: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    :cond_4c0
    :goto_4c0
    const-string v5, "  Used RAM: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v13, v8, v26

    add-long/2addr v13, v11

    .line 1899
    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    const-string v5, "  Lost RAM: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v13

    sub-long v8, v8, v37

    sub-long/2addr v13, v8

    .line 1907
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v8

    sub-long/2addr v13, v8

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v8

    sub-long/2addr v13, v8

    sub-long/2addr v13, v11

    .line 1908
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v8

    sub-long/2addr v13, v8

    .line 1906
    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    const-string v1, "\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    const-string v1, "ActivityManager"

    const-string v5, "Low on memory:"

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    const-string v1, "ActivityManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    const-string v1, "ActivityManager"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    const-string v1, "ActivityManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v11, 0x400

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1916
    const-string v5, "Low on memory:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v13, 0xa

    .line 1918
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1919
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1920
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1921
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1922
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1923
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1924
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 1925
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    .line 1926
    :try_start_54c
    new-instance v7, Lcom/android/internal/util/FastPrintWriter;

    const/16 v5, 0x100

    const/4 v15, 0x0

    invoke-direct {v7, v3, v15, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1927
    new-array v8, v15, [Ljava/lang/String;

    .line 1928
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 1929
    iget-object v13, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v13
    :try_end_55f
    .catchall {:try_start_54c .. :try_end_55f} :catchall_5e8

    .line 1930
    :try_start_55f
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ProcessList;->dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V

    .line 1931
    monitor-exit v13
    :try_end_56c
    .catchall {:try_start_55f .. :try_end_56c} :catchall_5ea

    :try_start_56c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1932
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 1933
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActiveServices;->newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-result-object v5

    .line 1934
    invoke-virtual {v5}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpLocked()V

    .line 1935
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 1936
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v6, "activities"

    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object v9, v8

    move-object v8, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;I)V

    move-object v7, v8

    .line 1938
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 1939
    monitor-exit v4
    :try_end_59a
    .catchall {:try_start_56c .. :try_end_59a} :catchall_5e8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1940
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x51

    .line 1941
    invoke-static {v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 1942
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "lowmem"

    const-string/jumbo v7, "system_server"

    .line 1943
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1942
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;)V

    .line 1945
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1946
    :try_start_5cf
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1947
    iget-wide v4, v0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_5de

    .line 1948
    iput-wide v2, v0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    goto :goto_5de

    :catchall_5dc
    move-exception v0

    goto :goto_5e3

    .line 1950
    :cond_5de
    :goto_5de
    monitor-exit v1
    :try_end_5df
    .catchall {:try_start_5cf .. :try_end_5df} :catchall_5dc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_5e3
    :try_start_5e3
    monitor-exit v1
    :try_end_5e4
    .catchall {:try_start_5e3 .. :try_end_5e4} :catchall_5dc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5e8
    move-exception v0

    goto :goto_5f0

    :catchall_5ea
    move-exception v0

    .line 1931
    :try_start_5eb
    monitor-exit v13
    :try_end_5ec
    .catchall {:try_start_5eb .. :try_end_5ec} :catchall_5ea

    :try_start_5ec
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 1939
    :goto_5f0
    monitor-exit v4
    :try_end_5f1
    .catchall {:try_start_5ec .. :try_end_5f1} :catchall_5e8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public requestPssAllProcsLPr(JZZ)V
    .registers 14

    .line 1249
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p3, :cond_20

    .line 1251
    :try_start_5
    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    if-eqz p4, :cond_13

    .line 1252
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    goto :goto_19

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_6e

    .line 1253
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    :goto_19
    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_20

    .line 1254
    monitor-exit v1

    return-void

    .line 1260
    :cond_20
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    const/4 v0, 0x1

    .line 1261
    iput-boolean v0, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 1262
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_2c
    if-ltz v2, :cond_3c

    .line 1263
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 1265
    :cond_3c
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1266
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1267
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v3, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;

    move-object v4, p0

    move-wide v7, p1

    move v6, p3

    move v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppProfiler;ZZJ)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1284
    iget-object p0, v4, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-nez p0, :cond_6c

    .line 1285
    iget-object p0, v4, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1287
    :cond_6c
    monitor-exit v1

    return-void

    :goto_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_5 .. :try_end_6f} :catchall_10

    throw p0
.end method

.method public final requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z
    .registers 10

    .line 1182
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1185
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2a

    .line 1186
    iget-wide v3, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_25

    .line 1187
    iget-wide v5, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 1192
    :cond_25
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1195
    :cond_2a
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    .line 1196
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 1197
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public retrieveSettings()V
    .registers 6

    .line 2349
    const-string v0, "activity_start_pss_defer"

    const-wide/16 v1, 0x0

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2352
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 2351
    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2354
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-void
.end method

.method public final scheduleAppGcsLPf()V
    .registers 11

    .line 1532
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1534
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_45

    .line 1536
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1537
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1539
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    .line 1540
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1541
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    add-long v8, v4, v6

    cmp-long v0, v2, v8

    if-gez v0, :cond_40

    add-long v2, v4, v6

    .line 1544
    :cond_40
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_45
    return-void
.end method

.method public setAgentAppLPf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p2, :cond_15

    .line 2103
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-eqz p2, :cond_14

    .line 2104
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    .line 2106
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    :cond_14
    return-void

    .line 2110
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-nez v0, :cond_20

    .line 2111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 2113
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_49

    .line 2115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App agent map has too many entries, cannot add "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2119
    :cond_49
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAllowLowerMemLevelLocked(Z)V
    .registers 2

    .line 1323
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    return-void
.end method

.method public setCpuInfoService()V
    .registers 4

    .line 2335
    new-instance v0, Lcom/android/server/am/AppProfiler$CpuBinder;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CpuBinder;-><init>(Lcom/android/server/am/AppProfiler;)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    const-string v2, "cpuinfo"

    invoke-static {v2, v0, p0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    .registers 9

    .line 1139
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_1a

    .line 1141
    :try_start_9
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v1, p3, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :catchall_18
    move-exception p0

    goto :goto_2d

    :cond_1a
    if-eqz p2, :cond_22

    .line 1144
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_2b

    .line 1146
    :cond_22
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    :goto_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_18

    throw p0
.end method

.method public setMemFactorOverrideLocked(I)V
    .registers 2

    .line 1328
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 1329
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessStateController;->setIsLastMemoryLevelNormal(Z)V

    return-void
.end method

.method public setProfileAppLPf(Ljava/lang/String;Landroid/app/ProfilerInfo;I)V
    .registers 5

    .line 2079
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 2081
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 2082
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_22

    .line 2084
    :try_start_17
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    if-eqz p2, :cond_2e

    .line 2090
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    new-instance v0, Landroid/app/ProfilerInfo;

    invoke-direct {v0, p2}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    invoke-virtual {p1, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 2092
    :cond_2e
    iput p3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    return-void
.end method

.method public setProfileProcLPf(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 2097
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public setTestPssMode(Z)V
    .registers 5

    .line 1291
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1292
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    if-eqz p1, :cond_15

    .line 1296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v2, p1, p1}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_1a

    .line 1298
    :cond_15
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public setupProfilerInfoLocked(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)Landroid/app/ProfilerInfo;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2387
    iget-object v4, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 2388
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2389
    :try_start_d
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6c

    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2390
    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 2391
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6, v2}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2392
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v6

    if-eqz v6, :cond_8a

    .line 2395
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v6, :cond_49

    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2396
    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v6

    iget-boolean v6, v6, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v6, :cond_44

    goto :goto_49

    :cond_44
    move-object v6, v7

    goto :goto_54

    :catchall_46
    move-exception v0

    goto/16 :goto_193

    .line 2398
    :cond_49
    :goto_49
    new-instance v6, Landroid/app/ProfilerInfo;

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v8}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    .line 2399
    :goto_54
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v8}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-eqz v8, :cond_66

    .line 2400
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v7}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    :cond_66
    move-object/from16 v23, v7

    move-object v7, v6

    move-object/from16 v6, v23

    goto :goto_8b

    :cond_6c
    if-eqz v3, :cond_8a

    .line 2403
    iget-object v6, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v6, :cond_8a

    .line 2404
    new-instance v8, Landroid/app/ProfilerInfo;

    iget-object v9, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v8 .. v20}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZIIZJ)V

    move-object v6, v7

    move-object v7, v8

    goto :goto_8b

    :cond_8a
    move-object v6, v7

    .line 2407
    :goto_8b
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    const/4 v9, 0x1

    if-eqz v8, :cond_d6

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 2410
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 2411
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v7, :cond_c6

    .line 2414
    new-instance v10, Landroid/app/ProfilerInfo;

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 2415
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v10 .. v22}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZIIZJ)V

    move-object v7, v10

    goto :goto_d6

    .line 2417
    :cond_c6
    iget-object v8, v7, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-nez v8, :cond_d6

    .line 2418
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/app/ProfilerInfo;->setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;

    move-result-object v7

    :cond_d6
    :goto_d6
    if-eqz v7, :cond_f9

    .line 2423
    iget-object v8, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_f9

    .line 2424
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2425
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v8}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f9

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2426
    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v4

    if-eqz v4, :cond_f9

    .line 2427
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 2430
    :cond_f9
    monitor-exit v5
    :try_end_fa
    .catchall {:try_start_d .. :try_end_fa} :catchall_46

    .line 2436
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_180

    if-nez v3, :cond_180

    .line 2437
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v9

    :goto_10f
    if-ltz v3, :cond_180

    .line 2438
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v4

    if-nez v4, :cond_180

    .line 2439
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveInstrumentation;

    .line 2440
    iget-boolean v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-nez v5, :cond_17d

    iget-object v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v8, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne v5, v8, :cond_17d

    .line 2441
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v5

    .line 2442
    :try_start_133
    iget-object v8, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v9, v8

    if-nez v9, :cond_155

    .line 2445
    iget-object v8, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_173

    .line 2446
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v8, v2, v4}, Lcom/android/server/am/ProcessStateController;->setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2448
    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_173

    :catchall_153
    move-exception v0

    goto :goto_178

    .line 2451
    :cond_155
    array-length v9, v8

    const/4 v10, 0x0

    :goto_157
    if-ge v10, v9, :cond_173

    aget-object v11, v8, v10

    .line 2452
    iget-object v12, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_170

    .line 2453
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v8, v2, v4}, Lcom/android/server/am/ProcessStateController;->setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2455
    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_173

    :cond_170
    add-int/lit8 v10, v10, 0x1

    goto :goto_157

    .line 2460
    :cond_173
    :goto_173
    monitor-exit v5
    :try_end_174
    .catchall {:try_start_133 .. :try_end_174} :catchall_153

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_17d

    :goto_178
    :try_start_178
    monitor-exit v5
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_153

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_17d
    :goto_17d
    add-int/lit8 v3, v3, -0x1

    goto :goto_10f

    :cond_180
    if-eqz v6, :cond_185

    .line 2468
    invoke-interface {v1, v6}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 2470
    :cond_185
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 2471
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/app/IApplicationThread;->attachStartupAgents(Ljava/lang/String;)V

    :cond_192
    return-object v7

    .line 2430
    :goto_193
    :try_start_193
    monitor-exit v5
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_46

    throw v0
.end method

.method public startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V
    .registers 6

    .line 1051
    iget-object v0, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1052
    iget-object v1, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1053
    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 1054
    invoke-virtual {p1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 1055
    iget v0, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iput v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 1056
    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 1059
    :try_start_18
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android"

    .line 1060
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v2, 0x0

    .line 1059
    invoke-virtual {p2, v1, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_27} :catch_3a

    .line 1064
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppProfiler$RecordPssRunnable;

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 1065
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/android/server/am/AppProfiler$RecordPssRunnable;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 1064
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1062
    :catch_3a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "android package not found."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final stopDeferPss()V
    .registers 3

    .line 1227
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_16

    if-gez v0, :cond_16

    .line 1234
    const-string v0, "ActivityManager"

    const-string v1, "Activity start nesting undercount!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_16
    return-void
.end method

.method public final stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V
    .registers 5

    if-eqz p1, :cond_a

    .line 1962
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-ne p1, v0, :cond_15

    .line 1963
    :cond_a
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 1964
    iget p3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    :cond_15
    if-nez p1, :cond_18

    goto :goto_20

    .line 1970
    :cond_18
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    if-nez p0, :cond_21

    :goto_20
    return-void

    :cond_21
    const/4 p1, 0x0

    .line 1975
    :try_start_22
    invoke-interface {p0, p1, p2, p3}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    return-void

    .line 1977
    :catch_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Process disappeared"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateCpuStats()V
    .registers 7

    .line 2124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2125
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    sub-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_12

    goto :goto_29

    .line 2128
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2129
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 2130
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2131
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    throw p0

    :cond_29
    :goto_29
    return-void
.end method

.method public updateCpuStatsNow()V
    .registers 34

    move-object/from16 v0, p0

    .line 2136
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "settings_enable_monitor_phantom_procs"

    invoke-static {v1, v4}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    .line 2138
    :goto_1a
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v4

    .line 2139
    :try_start_1d
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2143
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2144
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    sub-long v9, v5, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_a3

    .line 2145
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2146
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 2147
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->hasGoodLastStats()Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 2154
    const-string/jumbo v7, "true"

    const-string v8, "events.cpu"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 2155
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v7

    .line 2156
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v8

    .line 2157
    iget-object v9, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v9

    .line 2158
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v10

    .line 2159
    iget-object v11, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v11

    .line 2160
    iget-object v12, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v12

    add-int v13, v7, v8

    add-int/2addr v13, v9

    add-int/2addr v13, v10

    add-int/2addr v13, v11

    add-int/2addr v12, v13

    if-nez v12, :cond_82

    move v12, v2

    :cond_82
    mul-int/lit8 v13, v13, 0x64

    .line 2165
    div-int v14, v13, v12

    mul-int/lit8 v7, v7, 0x64

    div-int v15, v7, v12

    mul-int/lit8 v8, v8, 0x64

    div-int v16, v8, v12

    mul-int/lit8 v9, v9, 0x64

    div-int v17, v9, v12

    mul-int/lit8 v10, v10, 0x64

    div-int v18, v10, v12

    mul-int/lit8 v11, v11, 0x64

    div-int v19, v11, v12

    invoke-static/range {v14 .. v19}, Lcom/android/server/am/EventLogTags;->writeCpu(IIIIII)V

    goto :goto_a4

    :catchall_9e
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_1fb

    :cond_a3
    move v2, v3

    :cond_a4
    :goto_a4
    if-eqz v1, :cond_b1

    if-eqz v2, :cond_b1

    .line 2177
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, v7}, Lcom/android/server/am/PhantomProcessList;->updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V

    .line 2180
    :cond_b1
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v7

    .line 2181
    monitor-enter v7
    :try_end_ba
    .catchall {:try_start_1d .. :try_end_ba} :catchall_9e

    if-eqz v2, :cond_1de

    .line 2183
    :try_start_bc
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->startAddingCpuStatsLocked()Z

    move-result v1

    if-eqz v1, :cond_1de

    .line 2186
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    .line 2187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 2188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2189
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_d5
    .catchall {:try_start_bc .. :try_end_d5} :catchall_1da

    move v8, v3

    move v9, v8

    :goto_d7
    if-ge v3, v1, :cond_1a6

    .line 2191
    :try_start_d9
    iget-object v14, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v14, v3}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v14

    .line 2192
    iget-boolean v15, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-nez v15, :cond_ed

    move/from16 v16, v1

    move-object/from16 v31, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_19a

    .line 2195
    :cond_ed
    iget-object v15, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    move/from16 v16, v1

    iget v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v15, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 2196
    iget v15, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    add-int/2addr v15, v8

    .line 2197
    iget v8, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I
    :try_end_fe
    .catchall {:try_start_d9 .. :try_end_fe} :catchall_113

    add-int v17, v9, v8

    if-eqz v1, :cond_155

    .line 2199
    :try_start_102
    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2200
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getCurProcBatteryStats()Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v9
    :try_end_108
    .catchall {:try_start_102 .. :try_end_108} :catchall_151

    if-eqz v9, :cond_11a

    .line 2201
    :try_start_10a
    invoke-virtual {v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v18
    :try_end_10e
    .catchall {:try_start_10a .. :try_end_10e} :catchall_113

    if-nez v18, :cond_111

    goto :goto_11a

    :cond_111
    move-object v1, v8

    goto :goto_12d

    :catchall_113
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v19, v4

    goto/16 :goto_1d8

    .line 2202
    :cond_11a
    :goto_11a
    :try_start_11a
    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    move/from16 v32, v9

    move-object v9, v1

    move-object v1, v8

    move/from16 v8, v32

    .line 2203
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v9

    .line 2202
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessProfileRecord;->setCurProcBatteryStats(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;)V

    .line 2207
    :goto_12d
    iget v8, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move/from16 v18, v3

    iget v3, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v9, v8, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 2208
    iget-object v3, v1, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget v8, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v9, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v8, v9

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v8

    .line 2210
    iget-object v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;
    :try_end_144
    .catchall {:try_start_11a .. :try_end_144} :catchall_151

    move-object/from16 v19, v4

    const-wide/16 v3, 0x0

    :try_start_148
    invoke-virtual {v1, v3, v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    goto :goto_176

    :catchall_14c
    move-exception v0

    :goto_14d
    move-object/from16 v31, v2

    goto/16 :goto_1d8

    :catchall_151
    move-exception v0

    move-object/from16 v19, v4

    goto :goto_14d

    :cond_155
    move/from16 v18, v3

    move-object/from16 v19, v4

    .line 2212
    iget-object v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    if-eqz v1, :cond_165

    .line 2214
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v3

    if-nez v3, :cond_16f

    .line 2215
    :cond_165
    iget v8, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v9, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    iput-object v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    .line 2218
    :cond_16f
    iget v3, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v4, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 2220
    :goto_176
    iget v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    int-to-long v3, v1

    iget v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    int-to-long v8, v1

    iget-object v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;
    :try_end_17e
    .catchall {:try_start_148 .. :try_end_17e} :catchall_14c

    move-object/from16 v24, v1

    move-object/from16 v31, v2

    :try_start_182
    iget-wide v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    move-wide/from16 v25, v1

    iget v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    int-to-long v1, v1

    iget v14, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move-wide/from16 v27, v1

    int-to-long v1, v14

    move-wide/from16 v29, v1

    move-wide/from16 v20, v3

    move-wide/from16 v22, v8

    invoke-static/range {v20 .. v30}, Lcom/android/server/am/EventLogTags;->writeAmCpu(JJLjava/lang/String;JJJ)V

    move v8, v15

    move/from16 v9, v17

    :goto_19a
    add-int/lit8 v3, v18, 0x1

    move/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v2, v31

    goto/16 :goto_d7

    :catchall_1a4
    move-exception v0

    goto :goto_1d8

    :cond_1a6
    move-object/from16 v31, v2

    move-object/from16 v19, v4

    .line 2223
    monitor-exit v31
    :try_end_1ab
    .catchall {:try_start_182 .. :try_end_1ab} :catchall_1a4

    .line 2225
    :try_start_1ab
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v10

    .line 2226
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v11

    .line 2227
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v12

    .line 2228
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v13

    .line 2229
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v14

    .line 2230
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v15

    .line 2231
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/power/stats/BatteryStatsImpl;->addCpuStatsLocked(IIIIIIII)V

    .line 2233
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->finishAddingCpuStatsLocked()V
    :try_end_1d5
    .catchall {:try_start_1ab .. :try_end_1d5} :catchall_1d6

    goto :goto_1e0

    :catchall_1d6
    move-exception v0

    goto :goto_1f9

    .line 2223
    :goto_1d8
    :try_start_1d8
    monitor-exit v31
    :try_end_1d9
    .catchall {:try_start_1d8 .. :try_end_1d9} :catchall_1a4

    :try_start_1d9
    throw v0

    :catchall_1da
    move-exception v0

    move-object/from16 v19, v4

    goto :goto_1f9

    :cond_1de
    move-object/from16 v19, v4

    .line 2237
    :goto_1e0
    iget-wide v1, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    const-wide/32 v3, 0x1b7740

    sub-long v3, v5, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1f4

    .line 2238
    iput-wide v5, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 2239
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    .line 2241
    :cond_1f4
    monitor-exit v7
    :try_end_1f5
    .catchall {:try_start_1d9 .. :try_end_1f5} :catchall_1d6

    .line 2242
    :try_start_1f5
    monitor-exit v19
    :try_end_1f6
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_1f7

    return-void

    :catchall_1f7
    move-exception v0

    goto :goto_1fb

    .line 2241
    :goto_1f9
    :try_start_1f9
    monitor-exit v7
    :try_end_1fa
    .catchall {:try_start_1f9 .. :try_end_1fa} :catchall_1d6

    :try_start_1fa
    throw v0

    .line 2242
    :goto_1fb
    monitor-exit v19
    :try_end_1fc
    .catchall {:try_start_1fa .. :try_end_1fc} :catchall_1f7

    throw v0
.end method

.method public updateLowMemStateLSP(IIIJ)V
    .registers 11

    .line 1335
    iget-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_13

    invoke-virtual {p3}, Lcom/android/server/am/LowMemDetector;->isAvailable()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 1336
    iget-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    invoke-virtual {p3}, Lcom/android/server/am/LowMemDetector;->getMemFactor()I

    move-result p3

    goto :goto_2e

    .line 1344
    :cond_13
    iget-object p3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, p3, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    if-gt p1, v2, :cond_2d

    iget p3, p3, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-gt p2, p3, :cond_2d

    add-int p3, p1, p2

    const/4 v2, 0x3

    if-gt p3, v2, :cond_26

    move p3, v2

    goto :goto_2e

    :cond_26
    const/4 v2, 0x5

    if-gt p3, v2, :cond_2b

    const/4 p3, 0x2

    goto :goto_2e

    :cond_2b
    move p3, v1

    goto :goto_2e

    :cond_2d
    move p3, v0

    .line 1368
    :goto_2e
    iget v2, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    move v3, v1

    goto :goto_36

    :cond_35
    move v3, v0

    :goto_36
    if-eqz v3, :cond_39

    move p3, v2

    .line 1371
    :cond_39
    iget v2, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-le p3, v2, :cond_51

    if-nez v3, :cond_51

    .line 1372
    iget-boolean v2, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1373
    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    if-lt v2, v3, :cond_51

    .line 1374
    :cond_4f
    iget p3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1378
    :cond_51
    iget v2, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-eq p3, v2, :cond_69

    .line 1379
    invoke-static {p3, v2}, Lcom/android/server/am/EventLogTags;->writeAmMemFactor(II)V

    const/16 v2, 0xf

    .line 1380
    invoke-static {v2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1381
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v2, v3, v4, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1382
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1385
    :cond_69
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    add-int/2addr p1, p2

    invoke-virtual {v2, p1, p4, p5}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->updateCachedAppsHighWatermarkIfNecessaryLocked(IJ)V

    .line 1389
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p1, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1390
    :try_start_76
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p4, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p2, :cond_87

    .line 1391
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result p2

    if-nez p2, :cond_88

    goto :goto_87

    :catchall_85
    move-exception p0

    goto :goto_bb

    :cond_87
    :goto_87
    move v0, v1

    .line 1392
    :cond_88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1390
    invoke-virtual {p4, p3, v0, v2, v3}, Lcom/android/server/am/ProcessStatsService;->setMemFactorLocked(IZJ)Z

    .line 1393
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    .line 1394
    monitor-exit p1
    :try_end_97
    .catchall {:try_start_76 .. :try_end_97} :catchall_85

    .line 1396
    iput p3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1397
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessStateController;->setIsLastMemoryLevelNormal(Z)V

    .line 1398
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    .line 1401
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance p1, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    return-void

    .line 1394
    :goto_bb
    :try_start_bb
    monitor-exit p1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_85

    throw p0
.end method

.method public updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V
    .registers 12

    if-nez p5, :cond_2d

    .line 880
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getNextPssTime()J

    move-result-wide v0

    cmp-long p5, p3, v0

    if-gtz p5, :cond_26

    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 881
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v2

    iget-boolean p5, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 882
    invoke-static {p5}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 880
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long p5, p3, v0

    if-gtz p5, :cond_26

    goto :goto_2c

    .line 886
    :cond_26
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppProfiler;->requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z

    move-result p5

    if-nez p5, :cond_2d

    :goto_2c
    return-void

    .line 890
    :cond_2d
    iget-boolean v2, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 891
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v3

    move v1, p1

    move-object v0, p2

    move-wide v4, p3

    .line 890
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessProfileRecord;->computeNextPssTime(IZZJ)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->setNextPssTime(J)V

    return-void
.end method

.method public writeMemWatchProcessToProtoLPf(Landroid/util/proto/ProtoOutputStream;)V
    .registers 16

    .line 2593
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_d3

    const-wide v0, 0x10b00000020L

    .line 2594
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2596
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    const/4 v3, 0x0

    .line 2597
    :goto_1c
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const-wide v5, 0x10900000001L

    if-ge v3, v4, :cond_93

    .line 2598
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2599
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    const-wide v8, 0x20b00000001L

    .line 2600
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2602
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2604
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_45
    if-ltz v4, :cond_8d

    const-wide v5, 0x20b00000002L

    .line 2605
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2607
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    const-wide v11, 0x10500000001L

    .line 2609
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 2608
    invoke-virtual {p1, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2610
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 2612
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    const-wide v12, 0x10900000002L

    .line 2610
    invoke-virtual {p1, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2613
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    const-wide v11, 0x10900000003L

    invoke-virtual {p1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2615
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_45

    .line 2617
    :cond_8d
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_93
    const-wide v2, 0x10b00000002L

    .line 2620
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2622
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2624
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 2625
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide v5, 0x10900000006L

    .line 2624
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10500000003L

    .line 2626
    iget v6, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10500000004L

    .line 2628
    iget v6, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10800000005L

    .line 2630
    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {p1, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2633
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2635
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_d3
    return-void
.end method

.method public writeMemoryLevelsToProtoLocked(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5

    const-wide v0, 0x10800000037L

    .line 2664
    iget-boolean v2, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000038L

    .line 2666
    iget v2, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000039L

    .line 2667
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public writeProcessesToGcToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .registers 18

    move-object/from16 v0, p4

    .line 2700
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6c

    .line 2701
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2702
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_6c

    .line 2703
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2c

    .line 2704
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    goto :goto_69

    .line 2707
    :cond_2c
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2708
    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const-wide v9, 0x10b00000001L

    .line 2709
    invoke-virtual {v5, p1, v9, v10}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v9, 0x10800000002L

    .line 2710
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v5

    invoke-virtual {p1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v9, 0x10300000003L

    .line 2711
    invoke-virtual {p1, v9, v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10300000004L

    .line 2712
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v11

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10300000005L

    .line 2713
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v11

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2714
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_6c
    return-void
.end method

.method public writeProfileDataToProtoLocked(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .registers 7

    .line 2641
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2642
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2643
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2644
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3b

    :cond_2c
    if-eqz p2, :cond_3c

    .line 2645
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    goto :goto_3c

    :cond_3b
    return-void

    :cond_3c
    :goto_3c
    const-wide v0, 0x10b00000022L

    .line 2646
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2647
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2648
    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object p2

    const-wide v2, 0x10900000001L

    .line 2647
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2649
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object p2

    const-wide v2, 0x10b00000002L

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2651
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    if-eqz p2, :cond_81

    .line 2652
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    const-wide v2, 0x10b00000003L

    invoke-virtual {p2, p1, v2, v3}, Landroid/app/ProfilerInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v2, 0x10500000004L

    .line 2654
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2657
    :cond_81
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
