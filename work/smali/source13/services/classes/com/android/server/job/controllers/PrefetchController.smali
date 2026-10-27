.class public Lcom/android/server/job/controllers/PrefetchController;
.super Lcom/android/server/job/controllers/StateController;
.source "PrefetchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/PrefetchController$PcConstants;,
        Lcom/android/server/job/controllers/PrefetchController$PcHandler;,
        Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MSG_PROCESS_TOP_STATE_CHANGE:I = 0x2

.field private static final MSG_PROCESS_UPDATED_ESTIMATED_LAUNCH_TIME:I = 0x1

.field private static final MSG_RETRIEVE_ESTIMATED_LAUNCH_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Prefetch"


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mEstimatedLaunchTimeChangedListener:Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

.field private final mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

.field private mLaunchTimeAllowanceMs:J

.field private mLaunchTimeThresholdMs:J

.field private final mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

.field private final mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

.field private final mTrackedJobs:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEstimatedLaunchTimes(Lcom/android/server/job/controllers/PrefetchController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/job/controllers/PrefetchController;)Lcom/android/server/job/controllers/PrefetchController$PcHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLaunchTimeAllowanceMs(Lcom/android/server/job/controllers/PrefetchController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmThresholdAlarmListener(Lcom/android/server/job/controllers/PrefetchController;)Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrackedJobs(Lcom/android/server/job/controllers/PrefetchController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/job/controllers/PrefetchController;)Landroid/app/usage/UsageStatsManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLaunchTimeAllowanceMs(Lcom/android/server/job/controllers/PrefetchController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/PrefetchController;JJILjava/lang/String;)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeUpdateConstraintForUid(Lcom/android/server/job/controllers/PrefetchController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForUid(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessUpdatedEstimatedLaunchTime(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->processUpdatedEstimatedLaunchTime(ILjava/lang/String;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateThresholdAlarmLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwillBeLaunchedSoonLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 61
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 62
    const-string v1, "JobScheduler.Prefetch"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 76
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 82
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 90
    const-wide/32 v0, 0x1808580

    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    .line 99
    const-wide/32 v0, 0x124f80

    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    .line 102
    new-instance v0, Lcom/android/server/job/controllers/PrefetchController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/PrefetchController$1;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimeChangedListener:Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

    .line 123
    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    .line 124
    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    iget-object v2, p0, Lcom/android/server/job/controllers/PrefetchController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/PrefetchController$PcHandler;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    .line 125
    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    iget-object v2, p0, Lcom/android/server/job/controllers/PrefetchController;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->get()Lcom/android/server/JobSchedulerBackgroundThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/JobSchedulerBackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener-IA;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    .line 127
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 129
    nop

    .line 130
    invoke-virtual {v1, v0}, Landroid/app/usage/UsageStatsManagerInternal;->registerLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V

    .line 131
    return-void
.end method

.method private getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J
    .registers 10
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "now"    # J

    .line 215
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 216
    .local v0, "nextEstimatedLaunchTime":Ljava/lang/Long;
    if-eqz v0, :cond_1c

    .line 217
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    sub-long v3, p3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_17

    goto :goto_1c

    .line 225
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 219
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v2, p2}, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 222
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, p1, p2, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 223
    return-wide v2
.end method

.method static synthetic lambda$dumpControllerStateLocked$1(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .registers 6
    .param p0, "predicate"    # Ljava/util/function/Predicate;
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "jobs"    # Landroid/util/ArraySet;

    .line 616
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 617
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 618
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 619
    goto :goto_2b

    .line 621
    :cond_14
    const-string v2, "#"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 623
    const-string v2, " from "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 625
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 616
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 627
    .end local v0    # "j":I
    :cond_2e
    return-void
.end method

.method private maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z
    .registers 20
    .param p1, "now"    # J
    .param p3, "nowElapsed"    # J
    .param p5, "userId"    # I
    .param p6, "pkgName"    # Ljava/lang/String;

    .line 231
    move-object v6, p0

    iget-object v0, v6, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/util/ArraySet;

    .line 232
    .local v9, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v9, :cond_12

    .line 233
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_12
    const/4 v0, 0x0

    .line 236
    .local v0, "changed":Z
    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    .end local v0    # "changed":Z
    .local v10, "changed":Z
    .local v11, "i":I
    :goto_16
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v11, v0, :cond_30

    .line 237
    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/job/controllers/JobStatus;

    .line 238
    .local v12, "js":Lcom/android/server/job/controllers/JobStatus;
    move-object v0, p0

    move-object v1, v12

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    move-result v0

    or-int/2addr v10, v0

    .line 236
    .end local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 240
    .end local v11    # "i":I
    :cond_30
    return v10
.end method

.method private maybeUpdateConstraintForUid(I)V
    .registers 19
    .param p1, "uid"    # I

    .line 244
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/job/controllers/PrefetchController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 245
    :try_start_5
    iget-object v0, v7, Lcom/android/server/job/controllers/PrefetchController;->mService:Lcom/android/server/job/JobSchedulerService;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_7a

    move/from16 v9, p1

    :try_start_9
    invoke-virtual {v0, v9}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 246
    .local v0, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_11

    .line 247
    monitor-exit v8

    return-void

    .line 249
    :cond_11
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    move v10, v1

    .line 250
    .local v10, "userId":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v1

    .line 251
    .local v11, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 252
    .local v3, "now":J
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 253
    .local v5, "nowElapsed":J
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v12, v1

    .local v12, "p":I
    :goto_2f
    if-ltz v12, :cond_6b

    .line 254
    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v13, v1

    .line 255
    .local v13, "pkgName":Ljava/lang/String;
    iget-object v1, v7, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v10, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    move-object v14, v1

    .line 256
    .local v14, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v14, :cond_44

    .line 257
    goto :goto_68

    .line 259
    :cond_44
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_46
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v15, v1, :cond_68

    .line 260
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    move-object v2, v1

    .line 261
    .local v2, "js":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v1, p0

    move-object/from16 v16, v2

    .end local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    .local v16, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 262
    move-object/from16 v1, v16

    .end local v16    # "js":Lcom/android/server/job/controllers/JobStatus;
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 261
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v16    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_63
    move-object/from16 v1, v16

    .line 259
    .end local v16    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_65
    add-int/lit8 v15, v15, 0x1

    goto :goto_46

    .line 253
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v15    # "i":I
    :cond_68
    :goto_68
    add-int/lit8 v12, v12, -0x1

    goto :goto_2f

    .line 266
    .end local v12    # "p":I
    :cond_6b
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_76

    .line 267
    iget-object v1, v7, Lcom/android/server/job/controllers/PrefetchController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1, v11}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 269
    .end local v0    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "now":J
    .end local v5    # "nowElapsed":J
    .end local v10    # "userId":I
    .end local v11    # "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_76
    monitor-exit v8

    .line 270
    return-void

    .line 269
    :catchall_78
    move-exception v0

    goto :goto_7d

    :catchall_7a
    move-exception v0

    move/from16 v9, p1

    :goto_7d
    monitor-exit v8
    :try_end_7e
    .catchall {:try_start_9 .. :try_end_7e} :catchall_78

    throw v0
.end method

.method private processUpdatedEstimatedLaunchTime(ILjava/lang/String;J)V
    .registers 21
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "newEstimatedLaunchTime"    # J

    .line 274
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-wide/from16 v11, p3

    sget-boolean v0, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    if-eqz v0, :cond_4e

    .line 275
    const-string v1, "JobScheduler.Prefetch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Estimated launch time for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 278
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    sub-long v3, v11, v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from now)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_4e
    iget-object v9, v15, Lcom/android/server/job/controllers/PrefetchController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 283
    :try_start_51
    iget-object v1, v15, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v14, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    move-object v10, v1

    .line 284
    .local v10, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v10, :cond_7e

    .line 285
    if-eqz v0, :cond_7c

    .line 286
    const-string v0, "JobScheduler.Prefetch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not caching launch time since we haven\'t seen any prefetch jobs for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 288
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    goto :goto_ba

    .line 285
    :cond_7c
    move-object v1, v9

    goto :goto_ba

    .line 294
    :cond_7e
    iget-object v0, v15, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v14, v13, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 296
    invoke-virtual {v10}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 297
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 298
    .local v4, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 299
    .local v6, "nowElapsed":J
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V
    :try_end_a2
    .catchall {:try_start_51 .. :try_end_a2} :catchall_bc

    .line 300
    move-object/from16 v8, p0

    move-object v1, v9

    move-object v0, v10

    .end local v10    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    move-wide v9, v4

    move-wide v11, v6

    move/from16 v13, p1

    move-object/from16 v14, p2

    :try_start_ac
    invoke-direct/range {v8 .. v14}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 301
    iget-object v2, v15, Lcom/android/server/job/controllers/PrefetchController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto :goto_ba

    .line 296
    .end local v0    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "now":J
    .end local v6    # "nowElapsed":J
    .restart local v10    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_b8
    move-object v1, v9

    move-object v0, v10

    .line 305
    .end local v10    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_ba
    :goto_ba
    monitor-exit v1

    .line 306
    return-void

    .line 305
    :catchall_bc
    move-exception v0

    move-object v1, v9

    :goto_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_ac .. :try_end_bf} :catchall_c0

    throw v0

    :catchall_c0
    move-exception v0

    goto :goto_be
.end method

.method private updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z
    .registers 12
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "now"    # J
    .param p4, "nowElapsed"    # J

    .line 317
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 318
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x28

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 320
    .local v0, "appIsOpen":Z
    :goto_13
    if-nez v0, :cond_32

    .line 321
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v3

    .line 322
    .local v3, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v3, v4, p2, p3}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result v5

    if-nez v5, :cond_30

    iget-object v5, p0, Lcom/android/server/job/controllers/PrefetchController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v5, :cond_2e

    .line 331
    invoke-virtual {v5, v4, v3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2e

    goto :goto_30

    :cond_2e
    move v1, v2

    goto :goto_31

    :cond_30
    :goto_30
    nop

    .line 332
    .end local v3    # "userId":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .local v1, "satisfied":Z
    :goto_31
    goto :goto_38

    .line 333
    .end local v1    # "satisfied":Z
    :cond_32
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 335
    .restart local v1    # "satisfied":Z
    :goto_38
    invoke-virtual {p1, p4, p5, v1}, Lcom/android/server/job/controllers/JobStatus;->setPrefetchConstraintSatisfied(JZ)Z

    move-result v2

    return v2
.end method

.method private updateThresholdAlarmLocked(ILjava/lang/String;JJ)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "nowElapsed"    # J

    .line 341
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 342
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_41

    .line 347
    :cond_11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide v1

    .line 349
    .local v1, "nextEstimatedLaunchTime":J
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_36

    sub-long v3, v1, p3

    iget-wide v5, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_36

    .line 352
    add-long/2addr v5, p3

    sub-long v3, v1, v5

    .line 354
    .local v3, "timeToCrossThresholdMs":J
    iget-object v5, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    new-instance v6, Lcom/android/server/job/controllers/Package;

    invoke-direct {v6, p1, p2}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    add-long v7, p5, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->addAlarm(Ljava/lang/Object;J)V

    .line 356
    .end local v3    # "timeToCrossThresholdMs":J
    goto :goto_40

    .line 357
    :cond_36
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    new-instance v4, Lcom/android/server/job/controllers/Package;

    invoke-direct {v4, p1, p2}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 359
    :goto_40
    return-void

    .line 343
    .end local v1    # "nextEstimatedLaunchTime":J
    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    new-instance v2, Lcom/android/server/job/controllers/Package;

    invoke-direct {v2, p1, p2}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method private willBeLaunchedSoonLocked(ILjava/lang/String;J)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "now"    # J

    .line 368
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    add-long/2addr v2, p3

    iget-wide v4, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 635
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->-$$Nest$mdump(Lcom/android/server/job/controllers/PrefetchController$PcConstants;Landroid/util/IndentingPrintWriter;)V

    .line 636
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 14
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 593
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 595
    .local v0, "now":J
    const-string v2, "Cached launch times:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 597
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 598
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v3

    .line 599
    .local v3, "userId":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_1e
    iget-object v5, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v5

    if-ge v4, v5, :cond_5d

    .line 600
    iget-object v5, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 601
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 603
    .local v6, "estimatedLaunchTime":J
    invoke-static {v3, v5}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 604
    const-string v8, ": "

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p1, v6, v7}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 606
    const-string v8, " ("

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 607
    sub-long v8, v6, v0

    const/16 v10, 0x13

    invoke-static {v8, v9, p1, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 609
    const-string v8, " from now)"

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 599
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "estimatedLaunchTime":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 597
    .end local v3    # "userId":I
    .end local v4    # "p":I
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 612
    .end local v2    # "u":I
    :cond_60
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 614
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 615
    iget-object v2, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2, p1}, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 629
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 630
    iget-object v2, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 631
    return-void
.end method

.method getLaunchTimeAllowanceMs()J
    .registers 3

    .line 574
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    return-wide v0
.end method

.method getLaunchTimeThresholdMs()J
    .registers 3

    .line 579
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    return-wide v0
.end method

.method public getNextEstimatedLaunchTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 206
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 207
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "pkgName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method getPcConstants()Lcom/android/server/job/controllers/PrefetchController$PcConstants;
    .registers 2

    .line 585
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    return-object v0
.end method

.method synthetic lambda$onConstantsUpdatedLocked$0$com-android-server-job-controllers-PrefetchController()V
    .registers 19

    .line 390
    move-object/from16 v13, p0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v0

    .line 391
    .local v14, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v15, v13, Lcom/android/server/job/controllers/PrefetchController;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 392
    :try_start_b
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 393
    .local v4, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    move-wide v11, v0

    .line 394
    .local v11, "now":J
    const/4 v0, 0x0

    .local v0, "u":I
    :goto_19
    iget-object v1, v13, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_77

    .line 395
    iget-object v1, v13, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v9, v1

    .line 396
    .local v9, "userId":I
    const/4 v1, 0x0

    move v10, v1

    .local v10, "p":I
    :goto_2a
    iget-object v1, v13, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v1

    if-ge v10, v1, :cond_70

    .line 397
    iget-object v1, v13, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0, v10}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    .line 398
    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v1, p0

    move-wide v2, v11

    move v6, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 400
    iget-object v1, v13, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0, v10}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 402
    :cond_51
    invoke-direct {v13, v9, v8, v11, v12}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_65

    .line 403
    move-object/from16 v6, p0

    move v7, v9

    move-object v1, v8

    .end local v8    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    move v2, v9

    move v3, v10

    .end local v9    # "userId":I
    .end local v10    # "p":I
    .local v2, "userId":I
    .local v3, "p":I
    move-wide v9, v11

    move-wide/from16 v16, v11

    .end local v11    # "now":J
    .local v16, "now":J
    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V

    goto :goto_6a

    .line 402
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    .end local v3    # "p":I
    .end local v16    # "now":J
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "userId":I
    .restart local v10    # "p":I
    .restart local v11    # "now":J
    :cond_65
    move-object v1, v8

    move v2, v9

    move v3, v10

    move-wide/from16 v16, v11

    .line 396
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "userId":I
    .end local v10    # "p":I
    .end local v11    # "now":J
    .restart local v2    # "userId":I
    .restart local v3    # "p":I
    .restart local v16    # "now":J
    :goto_6a
    add-int/lit8 v10, v3, 0x1

    move v9, v2

    move-wide/from16 v11, v16

    .end local v3    # "p":I
    .restart local v10    # "p":I
    goto :goto_2a

    .end local v2    # "userId":I
    .end local v16    # "now":J
    .restart local v9    # "userId":I
    .restart local v11    # "now":J
    :cond_70
    move v2, v9

    move v3, v10

    move-wide/from16 v16, v11

    .line 394
    .end local v9    # "userId":I
    .end local v10    # "p":I
    .end local v11    # "now":J
    .restart local v16    # "now":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .end local v16    # "now":J
    .restart local v11    # "now":J
    :cond_77
    move-wide/from16 v16, v11

    .line 407
    .end local v0    # "u":I
    .end local v4    # "nowElapsed":J
    .end local v11    # "now":J
    monitor-exit v15
    :try_end_7a
    .catchall {:try_start_b .. :try_end_7a} :catchall_86

    .line 408
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_85

    .line 409
    iget-object v0, v13, Lcom/android/server/job/controllers/PrefetchController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, v14}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 411
    :cond_85
    return-void

    .line 407
    :catchall_86
    move-exception v0

    :try_start_87
    monitor-exit v15
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 19
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 141
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v8

    .line 143
    .local v8, "userId":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 145
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v0, :cond_2b

    .line 146
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 147
    iget-object v1, v7, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v10, v0

    goto :goto_2c

    .line 145
    :cond_2b
    move-object v10, v0

    .line 149
    .end local v0    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v10, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_2c
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 150
    .local v11, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 151
    .local v13, "nowElapsed":J
    move-object/from16 v15, p1

    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_56

    .line 152
    invoke-direct {v7, v8, v9, v11, v12}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_56

    .line 153
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-wide v3, v11

    move-wide v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V

    .line 155
    :cond_56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v11

    move-wide v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    goto :goto_62

    .line 141
    .end local v8    # "userId":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v11    # "now":J
    .end local v13    # "nowElapsed":J
    :cond_60
    move-object/from16 v15, p1

    .line 157
    :goto_62
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 9
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 163
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 164
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 166
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_28

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_28

    .line 167
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    new-instance v4, Lcom/android/server/job/controllers/Package;

    invoke-direct {v4, v0, v1}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 169
    :cond_28
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 174
    if-nez p1, :cond_a

    .line 175
    const-string v0, "JobScheduler.Prefetch"

    const-string v1, "Told app removed but given null package name."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 178
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 179
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    new-instance v2, Lcom/android/server/job/controllers/Package;

    invoke-direct {v2, v0, p1}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-static {v0}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->-$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/PrefetchController$PcConstants;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 389
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    :cond_14
    return-void
.end method

.method public onSystemServicesReady()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 136
    return-void
.end method

.method public onUidBiasChangedLocked(III)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "prevBias"    # I
    .param p3, "newBias"    # I

    .line 195
    const/4 v0, 0x1

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-ne p3, v1, :cond_8

    move v3, v0

    goto :goto_9

    :cond_8
    move v3, v2

    .line 196
    .local v3, "isNowTop":Z
    :goto_9
    if-ne p2, v1, :cond_c

    goto :goto_d

    :cond_c
    move v0, v2

    .line 197
    .local v0, "wasTop":Z
    :goto_d
    if-eq v3, v0, :cond_19

    .line 198
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, p1, v2}, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 200
    :cond_19
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 187
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 188
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 189
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->removeAlarmsForUserId(I)V

    .line 190
    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->-$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/PrefetchController$PcConstants;Z)V

    .line 376
    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .param p2, "key"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    .line 382
    return-void
.end method
