.class public final Lcom/android/server/job/JobStore;
.super Ljava/lang/Object;
.source "JobStore.java"


# static fields
.field public static final DEBUG:Z

.field static final INVALID_UID:I = -0x2

.field static final JOB_FILE_SPLIT_PREFIX:Ljava/lang/String; = "jobs_"

.field public static final SPLIT_FILE_PATTERN:Ljava/util/regex/Pattern;

.field public static final sScheduledJob30MinHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static sSingleton:Lcom/android/server/job/JobStore;

.field public static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentJobSetSize:I

.field public final mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

.field public final mIoHandler:Landroid/os/Handler;

.field public final mJobFileDirectory:Ljava/io/File;

.field public final mJobSet:Lcom/android/server/job/JobStore$JobSet;

.field public final mJobsFile:Landroid/util/AtomicFile;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

.field public mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

.field public mRtcGood:Z

.field public mScheduledJob30MinHighWaterMark:I

.field public final mScheduledJobHighWaterMarkLoggingRunnable:Ljava/lang/Runnable;

.field public mSplitFileMigrationNeeded:Z

.field public mUseSplitFiles:Z

.field public mWriteInProgress:Z

.field public final mWriteRunnable:Ljava/lang/Runnable;

.field public final mWriteScheduleLock:Ljava/lang/Object;

.field public mWriteScheduled:Z

.field public final mXmlTimestamp:J


# direct methods
.method public static synthetic $r8$lambda$CUH2yIm-c34YKhc8Nam77Rkt44Q(JLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 21

    .line 267
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3d

    move-wide/from16 v1, p0

    .line 270
    invoke-static {v0, v1, v2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 272
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 274
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v10

    .line 275
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v12

    .line 276
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getCumulativeExecutionTimeMs()J

    move-result-wide v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v15}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    .line 277
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    move-object/from16 v0, p2

    .line 278
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual/range {p3 .. p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentJobSetSize(Lcom/android/server/job/JobStore;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEventLogger(Lcom/android/server/job/JobStore;)Landroid/util/SystemConfigFileCommitEventLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmJobsFile(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduledJob30MinHighWaterMark(Lcom/android/server/job/JobStore;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduledJobHighWaterMarkLoggingRunnable(Lcom/android/server/job/JobStore;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mScheduledJobHighWaterMarkLoggingRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSplitFileMigrationNeeded(Lcom/android/server/job/JobStore;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/JobStore;->mSplitFileMigrationNeeded:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWriteInProgress(Lcom/android/server/job/JobStore;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentJobSetSize(Lcom/android/server/job/JobStore;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScheduledJob30MinHighWaterMark(Lcom/android/server/job/JobStore;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWriteInProgress(Lcom/android/server/job/JobStore;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWriteScheduled(Lcom/android/server/job/JobStore;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateJobFile(Lcom/android/server/job/JobStore;Ljava/io/File;)Landroid/util/AtomicFile;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->createJobFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreateJobFile(Lcom/android/server/job/JobStore;Ljava/lang/String;)Landroid/util/AtomicFile;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->createJobFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeWriteStatusToDiskAsync(Lcom/android/server/job/JobStore;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrateJobFilesAsync(Lcom/android/server/job/JobStore;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->migrateJobFilesAsync()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSPLIT_FILE_PATTERN()Ljava/util/regex/Pattern;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/job/JobStore;->SPLIT_FILE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsScheduledJob30MinHighWaterMarkLogger()Lcom/android/modules/expresslog/Histogram;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/job/JobStore;->sScheduledJob30MinHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smconvertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/job/JobStore;->isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 97
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 104
    const-string v0, "^jobs_\\d+.xml$"

    .line 105
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobStore;->SPLIT_FILE_PATTERN:Ljava/util/regex/Pattern;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    .line 147
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/high16 v2, 0x42c60000    # 99.0f

    const/high16 v3, 0x3fc00000    # 1.5f

    const/16 v4, 0xf

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "job_scheduler.value_hist_scheduled_job_30_min_high_water_mark"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobStore;->sScheduledJob30MinHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V
    .registers 9

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 134
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 139
    new-instance v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    invoke-direct {v1}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    const/4 v1, 0x0

    .line 145
    iput v1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 146
    iput v1, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    .line 150
    new-instance v2, Lcom/android/server/job/JobStore$1;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobStore$1;-><init>(Lcom/android/server/job/JobStore;)V

    iput-object v2, p0, Lcom/android/server/job/JobStore;->mScheduledJobHighWaterMarkLoggingRunnable:Ljava/lang/Runnable;

    .line 644
    new-instance v3, Lcom/android/server/job/JobStore$2;

    invoke-direct {v3, p0}, Lcom/android/server/job/JobStore$2;-><init>(Lcom/android/server/job/JobStore;)V

    iput-object v3, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    .line 191
    iput-object p2, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 192
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 193
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mContext:Landroid/content/Context;

    .line 195
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "system"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    new-instance p2, Ljava/io/File;

    const-string p3, "job"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    .line 197
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 198
    new-instance p1, Landroid/util/SystemConfigFileCommitEventLogger;

    const-string p3, "jobs"

    invoke-direct {p1, p3}, Landroid/util/SystemConfigFileCommitEventLogger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    .line 199
    new-instance p1, Ljava/io/File;

    const-string p3, "jobs.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->createJobFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    .line 201
    new-instance p3, Lcom/android/server/job/JobStore$JobSet;

    invoke-direct {p3}, Lcom/android/server/job/JobStore$JobSet;-><init>()V

    iput-object p3, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 214
    invoke-virtual {p1}, Landroid/util/AtomicFile;->exists()Z

    move-result p3

    if-eqz p3, :cond_74

    .line 215
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide p1

    goto :goto_78

    :cond_74
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    :goto_78
    iput-wide p1, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    .line 216
    sget-object p3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {p3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    cmp-long p1, v3, p1

    if-lez p1, :cond_85

    goto :goto_86

    :cond_85
    move v0, v1

    :goto_86
    iput-boolean v0, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    .line 218
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/32 p1, 0x1b7740

    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;
    .registers 13

    .line 1077
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1078
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    .line 1079
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v2, p1

    goto :goto_24

    :cond_23
    move-wide v2, v4

    .line 1081
    :goto_24
    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-gez v6, :cond_44

    .line 1082
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long v8, p1, v0

    .line 1084
    :cond_44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static extractUidFromJobFileName(Ljava/io/File;)I
    .registers 4

    .line 623
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 624
    const-string v0, "jobs_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_28

    .line 626
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v2, 0x5

    .line 628
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 627
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_20

    if-gez p0, :cond_1f

    return v1

    :cond_1f
    return p0

    :catch_20
    move-exception p0

    .line 634
    const-string v0, "JobStore"

    const-string v2, "Unexpected file name format"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    return v1
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;
    .registers 5

    .line 167
    sget-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    sget-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    if-nez v1, :cond_1d

    .line 169
    new-instance v1, Lcom/android/server/job/JobStore;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 170
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    sput-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_21

    .line 172
    :cond_1d
    :goto_1d
    sget-object p0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    monitor-exit v0

    return-object p0

    .line 173
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1b

    throw p0
.end method

.method public static initAndGetForTesting(Landroid/content/Context;Ljava/io/File;)Lcom/android/server/job/JobStore;
    .registers 4

    .line 181
    new-instance v0, Lcom/android/server/job/JobStore;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    .line 182
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->init()V

    .line 183
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->clearForTesting()V

    return-object v0
.end method

.method public static intArrayToString([I)Ljava/lang/String;
    .registers 5

    .line 597
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 598
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    aget v3, p0, v2

    .line 599
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 601
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 1088
    const-class v0, Lcom/android/server/content/SyncJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static stringToIntArray(Ljava/lang/String;)[I
    .registers 4

    .line 612
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    new-array p0, v1, [I

    return-object p0

    .line 613
    :cond_a
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 614
    array-length v0, p0

    new-array v0, v0, [I

    .line 615
    :goto_13
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 616
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 292
    iget v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 293
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeUpdateHighWaterMark()V

    .line 295
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 296
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 299
    :cond_23
    sget-boolean p0, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz p0, :cond_3d

    .line 300
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added job status to store: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobStore"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method

.method public addForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 310
    iget v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 311
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeUpdateHighWaterMark()V

    .line 313
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 314
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_20
    return-void
.end method

.method public clear()V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->clear()V

    .line 390
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x0

    .line 391
    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 392
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    return-void
.end method

.method public clearForTesting()V
    .registers 4

    .line 400
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->clear()V

    .line 401
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    return-void
.end method

.method public clockNowValidToInflate(J)Z
    .registers 5

    .line 243
    iget-wide v0, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    cmp-long p0, p1, v0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public containsJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 319
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public countJobsForUid(I)I
    .registers 2

    .line 331
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->countJobsForUid(I)I

    move-result p0

    return p0
.end method

.method public final createJobFile(Ljava/io/File;)Landroid/util/AtomicFile;
    .registers 3

    .line 235
    new-instance v0, Landroid/util/AtomicFile;

    iget-object p0, p0, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    invoke-direct {v0, p1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Landroid/util/SystemConfigFileCommitEventLogger;)V

    return-object v0
.end method

.method public final createJobFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .registers 5

    .line 231
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobStore;->createJobFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public forEachJob(ILjava/util/function/Consumer;)V
    .registers 3

    .line 486
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public forEachJob(Ljava/util/function/Consumer;)V
    .registers 3

    .line 477
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .registers 3

    .line 482
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachJobForSourceUid(ILjava/util/function/Consumer;)V
    .registers 3

    .line 490
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;
    .registers 4

    .line 467
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobStore$JobSet;->get(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p0

    return-object p0
.end method

.method public getJobsBySourceUid(I)Landroid/util/ArraySet;
    .registers 2

    .line 440
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getJobsBySourceUid(ILjava/util/Set;)V
    .registers 3

    .line 444
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(ILjava/util/Set;)V

    return-void
.end method

.method public getJobsByUid(I)Landroid/util/ArraySet;
    .registers 2

    .line 453
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getJobsByUid(ILjava/util/Set;)V
    .registers 3

    .line 457
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUid(ILjava/util/Set;)V

    return-void
.end method

.method public getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .registers 1

    .line 327
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object p0
.end method

.method public getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6

    .line 262
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 266
    new-instance v2, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final init()V
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobStore;->readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V

    return-void
.end method

.method public initAsync(Ljava/util/concurrent/CountDownLatch;)V
    .registers 6

    .line 227
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    iget-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-boolean v3, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public jobTimesInflatedValid()Z
    .registers 1

    .line 239
    iget-boolean p0, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    return p0
.end method

.method public final maybeUpdateHighWaterMark()V
    .registers 3

    .line 494
    iget v0, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    iget v1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    if-ge v0, v1, :cond_8

    .line 495
    iput v1, p0, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    :cond_8
    return-void
.end method

.method public final maybeWriteStatusToDiskAsync()V
    .registers 6

    .line 534
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v1, :cond_21

    .line 536
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v1, :cond_15

    .line 537
    const-string v1, "JobStore"

    const-string v2, "Scheduling persist of jobs to disk."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_23

    .line 539
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    .line 540
    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 542
    :cond_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_13

    throw p0
.end method

.method public final migrateJobFilesAsync()V
    .registers 5

    .line 520
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 522
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_18

    .line 523
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 524
    :try_start_e
    iput-boolean v3, p0, Lcom/android/server/job/JobStore;->mSplitFileMigrationNeeded:Z

    .line 525
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 526
    monitor-exit v1

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p0

    :catchall_18
    move-exception p0

    .line 522
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V
    .registers 4

    .line 547
    new-instance v0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    return-void
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 6

    .line 341
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 343
    sget-boolean p0, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz p0, :cond_22

    .line 344
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t remove job: didn\'t exist: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobStore"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 p0, 0x0

    return p0

    .line 348
    :cond_24
    iget v1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    if-eqz p2, :cond_3e

    .line 349
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 350
    iget-object p2, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 351
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    :cond_3e
    return v0
.end method

.method public removeForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 362
    iget v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    .line 364
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 365
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1d
    return-void
.end method

.method public removeJobsOfUnlistedUsers([I)V
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->removeJobsOfUnlistedUsers([I)V

    .line 375
    iget-object p1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p1}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    return-void
.end method

.method public runWorkAsync(Ljava/lang/Runnable;)V
    .registers 2

    .line 252
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUseSplitFiles(Z)V
    .registers 4

    .line 406
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    if-eq v1, p1, :cond_f

    .line 408
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 409
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->migrateJobFilesAsync()V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_11

    .line 411
    :cond_f
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p0
.end method

.method public setUseSplitFilesForTesting(Z)V
    .registers 6

    .line 420
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    const/4 v2, 0x1

    if-eq v1, p1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_18

    .line 423
    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 424
    iget-object p1, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_26

    .line 426
    :cond_18
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_16

    if-eqz v1, :cond_25

    .line 428
    iget-object p1, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 429
    :try_start_1e
    iput-boolean v2, p0, Lcom/android/server/job/JobStore;->mSplitFileMigrationNeeded:Z

    .line 430
    monitor-exit p1

    return-void

    :catchall_22
    move-exception p0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_22

    throw p0

    :cond_25
    return-void

    .line 426
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_16

    throw p0
.end method

.method public size()I
    .registers 1

    .line 323
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result p0

    return p0
.end method

.method public touchJob(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    .line 380
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 383
    :cond_7
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 384
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    return-void
.end method

.method public waitForWriteToCompleteForTesting(J)Z
    .registers 11

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    .line 573
    iget-object v4, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 574
    :goto_9
    :try_start_9
    iget-boolean v5, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v5, :cond_14

    iget-boolean v5, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    if-eqz v5, :cond_27

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_2a

    .line 575
    :cond_14
    :goto_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-ltz v7, :cond_1f

    const/4 p0, 0x0

    .line 578
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_12

    return p0

    .line 581
    :cond_1f
    :try_start_1f
    iget-object v7, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    sub-long/2addr v5, v0

    add-long/2addr v5, p1

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_26} :catch_27
    .catchall {:try_start_1f .. :try_end_26} :catchall_12

    goto :goto_9

    .line 587
    :catch_27
    :cond_27
    :try_start_27
    monitor-exit v4

    const/4 p0, 0x1

    return p0

    :goto_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_12

    throw p0
.end method

.method public writeStatusToDiskForTesting()V
    .registers 3

    .line 553
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v1, :cond_13

    const/4 v1, 0x1

    .line 558
    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 559
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 560
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_1b

    .line 555
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "An asynchronous write is already scheduled."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 560
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_11

    throw p0
.end method
