.class public Lcom/android/server/am/AnrHelper;
.super Ljava/lang/Object;
.source "AnrHelper.java"


# static fields
.field public static final CONSECUTIVE_ANR_TIME_MS:J

.field public static final EXPIRED_REPORT_TIME_MS:J

.field public static final SELF_ONLY_AFTER_BOOT_MS:J

.field public static final sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field public static final sMainProcessDumpThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final mAnrRecords:Ljava/util/ArrayList;

.field public final mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

.field public mLastAnrTimeMs:J

.field public mProcessingPid:I

.field public final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTempDumpedPids:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$o4U1b8DdepzPilDk5ASRfiFAv34(Lcom/android/server/am/AnrHelper;ILcom/android/internal/os/TimeoutRecord;)Ljava/io/File;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AnrHelper;->lambda$appNotResponding$2(ILcom/android/internal/os/TimeoutRecord;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w_5HmdP7xJVX9IY4uygDlAQ5zxQ(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AnrMainProcessDumpThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$y7RFlsVN6Rac_UO6nHdK_btKHW0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AnrAuxiliaryTaskExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAuxiliaryTaskExecutor(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunning(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/AnrHelper;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmProcessingPid(Lcom/android/server/am/AnrHelper;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleBinderHeavyHitterAutoSamplerIfNecessary(Lcom/android/server/am/AnrHelper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AnrHelper;->scheduleBinderHeavyHitterAutoSamplerIfNecessary()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartAnrConsumerIfNeeded(Lcom/android/server/am/AnrHelper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetEXPIRED_REPORT_TIME_MS()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSELF_ONLY_AFTER_BOOT_MS()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/android/server/am/AnrHelper;->SELF_ONLY_AFTER_BOOT_MS:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AnrHelper;->SELF_ONLY_AFTER_BOOT_MS:J

    .line 75
    new-instance v0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 77
    new-instance v0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/am/AnrHelper;->sMainProcessDumpThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    const/4 v0, 0x1

    .line 105
    sget-object v1, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Lcom/android/server/am/AnrHelper;->makeExpiringThreadPoolWithSize(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/am/AnrHelper;->sMainProcessDumpThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 106
    invoke-static {v1, v2}, Lcom/android/server/am/AnrHelper;->makeExpiringThreadPoolWithSize(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 105
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/AnrHelper;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .registers 6

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 84
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    .line 112
    iput-object p1, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 113
    iput-object p2, p0, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 114
    iput-object p3, p0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static makeExpiringThreadPoolWithSize(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 10

    .line 193
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0xa

    move v2, p0

    move v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 p0, 0x1

    .line 197
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v0
.end method


# virtual methods
.method public appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    .registers 12

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 118
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Z)V

    return-void
.end method

.method public appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Z)V
    .registers 22

    move-object/from16 v8, p7

    .line 128
    :try_start_2
    iget-object v0, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingStarted()V

    .line 129
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 130
    iget-object v1, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAnrRecordLockStarted()V

    .line 131
    iget-object v11, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_109

    .line 132
    :try_start_11
    iget-object v1, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAnrRecordLockEnded()V

    if-nez v0, :cond_3b

    .line 136
    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skip zero pid ANR, process="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    monitor-exit v11
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_37

    .line 180
    :goto_31
    iget-object p0, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    return-void

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto/16 :goto_10c

    .line 139
    :cond_3b
    :try_start_3b
    iget v1, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    if-ne v1, v0, :cond_61

    .line 140
    const-string p0, "ActivityManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip duplicated ANR, pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v8, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    monitor-exit v11

    goto :goto_31

    .line 145
    :cond_61
    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 146
    const-string p0, "ActivityManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip ANR being predumped, pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v8, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-exit v11

    goto :goto_31

    .line 151
    :cond_8f
    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_97
    if-ltz v1, :cond_cb

    .line 152
    iget-object v2, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AnrHelper$AnrRecord;

    iget v2, v2, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    if-ne v2, v0, :cond_c8

    .line 153
    const-string p0, "ActivityManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip queued ANR, pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v8, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    monitor-exit v11

    goto/16 :goto_31

    :cond_c8
    add-int/lit8 v1, v1, -0x1

    goto :goto_97

    .line 162
    :cond_cb
    iget-object v1, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v2, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    .line 163
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 162
    invoke-virtual {v1, v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->earlyDumpRequestSubmittedWithSize(I)V

    .line 164
    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v8}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AnrHelper;ILcom/android/internal/os/TimeoutRecord;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    .line 173
    iget-object v0, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrRecordPlacingOnQueueWithSize(I)V

    .line 174
    iget-object v12, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/AnrHelper$AnrRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/AnrHelper$AnrRecord;-><init>(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;ZLjava/util/concurrent/Future;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    monitor-exit v11
    :try_end_104
    .catchall {:try_start_3b .. :try_end_104} :catchall_37

    .line 178
    :try_start_104
    invoke-virtual {p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_109

    goto/16 :goto_31

    :catchall_109
    move-exception v0

    move-object p0, v0

    goto :goto_10e

    .line 177
    :goto_10c
    :try_start_10c
    monitor-exit v11
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_37

    :try_start_10d
    throw p0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_109

    .line 180
    :goto_10e
    iget-object p1, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    .line 181
    throw p0
.end method

.method public final synthetic lambda$appNotResponding$2(ILcom/android/internal/os/TimeoutRecord;)Ljava/io/File;
    .registers 3

    .line 167
    iget-object p2, p2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-static {p1, p2}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTracesTempFile(ILcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object p2

    .line 169
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final scheduleBinderHeavyHitterAutoSamplerIfNecessary()V
    .registers 9

    const-wide/16 v0, 0x40

    .line 271
    :try_start_2
    const-string/jumbo v2, "scheduleBinderHeavyHitterAutoSamplerIfNecessary()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 274
    iget-wide v4, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    sget-wide v6, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    add-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-lez v4, :cond_1d

    .line 275
    iget-object v4, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->scheduleBinderHeavyHitterAutoSampler()V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_23

    .line 277
    :cond_1d
    :goto_1d
    iput-wide v2, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_1b

    .line 279
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 280
    throw p0
.end method

.method public final startAnrConsumerIfNeeded()V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 187
    new-instance v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;-><init>(Lcom/android/server/am/AnrHelper;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_12
    return-void
.end method
