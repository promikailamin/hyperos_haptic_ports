.class public final Lcom/android/server/job/JobServiceContext;
.super Ljava/lang/Object;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static final NOTIFICATION_TIMEOUT_MILLIS:J

.field public static final OP_BIND_TIMEOUT_MILLIS:J

.field public static final OP_TIMEOUT_MILLIS:J

.field public static final VERB_STRINGS:[Ljava/lang/String;

.field public static final sAnrTimerArgs:Lcom/android/server/utils/AnrTimer$Args;

.field public static final sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

.field public static final sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAnrTimer:Lcom/android/server/job/JobServiceContext$JobAnrTimer;

.field public mAvailable:Z

.field public mAwaitingNotification:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mCallbackHandler:Landroid/os/Handler;

.field public mCancelled:Z

.field public final mCompletedListener:Lcom/android/server/job/JobCompletedListener;

.field public final mContext:Landroid/content/Context;

.field public mDeathMarkDebugReason:Ljava/lang/String;

.field public mDeathMarkInternalStopReason:I

.field public mDeathMarkStopReason:I

.field public mEstimatedDownloadBytes:J

.field public mEstimatedUploadBytes:J

.field public mExecutionStartTimeElapsed:J

.field public mInitialDownloadedBytesFromCalling:J

.field public mInitialDownloadedBytesFromSource:J

.field public mInitialUploadedBytesFromCalling:J

.field public mInitialUploadedBytesFromSource:J

.field public final mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field public final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field public mLastExecutionDurationStampTimeElapsed:J

.field public mLastUnsuccessfulFinishElapsed:J

.field public final mLock:Ljava/lang/Object;

.field public mMaxExecutionTimeMillis:J

.field public mMinExecutionGuaranteeMillis:J

.field public final mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

.field public mParams:Landroid/app/job/JobParameters;

.field public mPendingDebugStopReason:Ljava/lang/String;

.field public mPendingInternalStopReason:I

.field public mPendingNetworkChange:Landroid/net/Network;

.field public mPendingStopReason:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPreferredUid:I

.field public mPreviousJobHadSuccessfulFinish:Z

.field public mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

.field public mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field public mRunningJobWorkType:I

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field public mTimeoutElapsed:J

.field public mTransferredDownloadBytes:J

.field public mTransferredUploadBytes:J

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field mVerb:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public service:Landroid/app/job/IJobService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnrTimer(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobAnrTimer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mAnrTimer:Lcom/android/server/job/JobServiceContext$JobAnrTimer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackHandler(Lcom/android/server/job/JobServiceContext;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningCallback(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningJob(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdoAcknowledgeGetTransferredDownloadBytesMessage(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobServiceContext;->doAcknowledgeGetTransferredDownloadBytesMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoAcknowledgeGetTransferredUploadBytesMessage(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobServiceContext;->doAcknowledgeGetTransferredUploadBytesMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoSetNotification(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;IILandroid/app/Notification;I)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobServiceContext;->doSetNotification(Lcom/android/server/job/JobServiceContext$JobCallback;IILandroid/app/Notification;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoUpdateEstimatedNetworkBytes(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/job/JobServiceContext;->doUpdateEstimatedNetworkBytes(Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoUpdateTransferredNetworkBytes(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/job/JobServiceContext;->doUpdateTransferredNetworkBytes(Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsAnrTimerArgs()Lcom/android/server/utils/AnrTimer$Args;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/job/JobServiceContext;->sAnrTimerArgs:Lcom/android/server/utils/AnrTimer$Args;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 97
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 98
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    .line 109
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v0, 0x4650

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    mul-int/lit16 v1, v0, 0x1f40

    int-to-long v1, v1

    .line 111
    sput-wide v1, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    const-wide/16 v1, 0x2710

    int-to-long v3, v0

    mul-long/2addr v3, v1

    .line 113
    sput-wide v3, Lcom/android/server/job/JobServiceContext;->NOTIFICATION_TIMEOUT_MILLIS:J

    .line 116
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/high16 v2, 0x40400000    # 3.0f

    const v3, 0x3fb33333    # 1.4f

    const/16 v4, 0x14

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "job_scheduler.value_hist_w_uid_enqueued_work_items_at_job_start"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

    .line 119
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/high16 v4, 0x42000000    # 32.0f

    const v6, 0x3fa7ae14    # 1.31f

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v7, "job_scheduler.value_hist_transferred_network_download_kilobytes_high_water_mark"

    invoke-direct {v0, v7, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 122
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v7, "job_scheduler.value_hist_transferred_network_upload_kilobytes_high_water_mark"

    invoke-direct {v0, v7, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 125
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v7, "job_scheduler.value_hist_updated_estimated_network_download_kilobytes"

    invoke-direct {v0, v7, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 128
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "job_scheduler.value_hist_updated_estimated_network_upload_kilobytes"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 132
    const-string v0, "VERB_STOPPING"

    const-string v1, "VERB_FINISHED"

    const-string v2, "VERB_BINDING"

    const-string v3, "VERB_STARTING"

    const-string v4, "VERB_EXECUTING"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    .line 324
    new-instance v0, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {v0}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    .line 325
    invoke-virtual {v0, v5}, Lcom/android/server/utils/AnrTimer$Args;->enable(Z)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sAnrTimerArgs:Lcom/android/server/utils/AnrTimer$Args;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V
    .registers 9

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 240
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 360
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 361
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 362
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 363
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 364
    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 365
    iput-object p5, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 366
    new-instance p4, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {p4, p0, p6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    .line 367
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 368
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    .line 369
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    .line 370
    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    .line 371
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 p1, 0x1

    .line 372
    iput-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 p1, 0x4

    .line 373
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 p1, -0x1

    .line 374
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 375
    new-instance p1, Lcom/android/server/job/JobServiceContext$JobAnrTimer;

    invoke-direct {p1, p0}, Lcom/android/server/job/JobServiceContext$JobAnrTimer;-><init>(Lcom/android/server/job/JobServiceContext;)V

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mAnrTimer:Lcom/android/server/job/JobServiceContext$JobAnrTimer;

    return-void
.end method


# virtual methods
.method public final applyStoppedReasonLocked(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 1805
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 1806
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 1807
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 1808
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eqz p1, :cond_1a

    .line 1809
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    .line 1810
    iput-wide v0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    :cond_1a
    return-void
.end method

.method public final assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .registers 8

    .line 1177
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1178
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1179
    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    if-nez v2, :cond_1c

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long p0, v2, v4

    if-gez p0, :cond_1c

    const/4 p0, 0x0

    return p0

    .line 1186
    :cond_1c
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1187
    const-string v2, "Caller no longer running"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    iget-object v2, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    if-eqz v2, :cond_41

    .line 1189
    const-string v2, ", last stopped "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    iget-wide v2, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1191
    const-string v0, " because: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    iget-object p1, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    :cond_41
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    const/4 p0, 0x1

    return p0
.end method

.method public final canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 6

    .line 628
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 635
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    const-wide/32 v2, 0x10341a19

    .line 636
    invoke-static {v2, v3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 638
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 639
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/job/JobServiceContext;->hasPermissionForDelivery(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2a

    return v1

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public cancelExecutingJobLocked(IILjava/lang/String;)V
    .registers 4

    .line 699
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobServiceContext;->doCancelLocked(IILjava/lang/String;)V

    return-void
.end method

.method public clearPreferredUid()V
    .registers 2

    const/4 v0, -0x1

    .line 735
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return-void
.end method

.method public final closeAndCleanupJobLocked(ZLjava/lang/String;)V
    .registers 84

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1631
    iget v3, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    return-void

    .line 1634
    :cond_c
    sget-boolean v3, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v5, "JobServiceContext"

    if-eqz v3, :cond_3c

    .line 1635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " reschedule="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_3c
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 1639
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 1640
    iget-object v8, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1641
    iget-wide v9, v0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    sub-long v9, v6, v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->incrementCumulativeExecutionTime(J)V

    .line 1650
    iget-object v9, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v9}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v29

    .line 1651
    iget-object v9, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v9}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    move-result v15

    .line 1653
    iget v9, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    if-eqz v9, :cond_89

    if-eqz v3, :cond_84

    .line 1655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Job marked for death because of "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    .line 1656
    invoke-static {v9}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1655
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_84
    iget v3, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 1661
    iget v5, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    goto :goto_8c

    :cond_89
    move v5, v15

    move/from16 v3, v29

    :goto_8c
    const/16 v9, 0xa

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v15, v9, :cond_94

    move v9, v10

    goto :goto_95

    :cond_94
    move v9, v11

    .line 1666
    :goto_95
    iput-boolean v9, v0, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    if-nez v9, :cond_9b

    .line 1669
    iput-wide v6, v0, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    .line 1671
    :cond_9b
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v6, v8, v15, v2}, Lcom/android/server/job/JobPackageTracker;->noteInactive(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)V

    .line 1673
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 1674
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    move-result v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_bc

    .line 1678
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v6

    .line 1681
    :cond_bc
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v9

    const/4 v12, 0x2

    if-eqz v9, :cond_ce

    .line 1682
    new-array v9, v12, [I

    aput v2, v9, v11

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    aput v2, v9, v10

    goto :goto_d2

    :cond_ce
    new-array v9, v10, [I

    aput v2, v9, v11

    .line 1685
    :goto_d2
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_e5

    .line 1686
    new-array v2, v12, [Ljava/lang/String;

    aput-object v13, v2, v11

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v10

    :goto_e3
    move-object v14, v13

    goto :goto_ee

    .line 1687
    :cond_e5
    new-array v2, v10, [Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v11

    goto :goto_e3

    .line 1688
    :goto_ee
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v13

    .line 1690
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v16

    .line 1691
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getLoggingJobId()J

    move-result-wide v17

    .line 1692
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v19

    .line 1693
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v20

    .line 1694
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v21

    .line 1695
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v22

    .line 1696
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v23

    .line 1697
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v24

    .line 1698
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v25

    .line 1699
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v26

    .line 1700
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v27

    iget-boolean v11, v8, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 1703
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v30

    .line 1704
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v31

    .line 1705
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v32

    .line 1706
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v33

    .line 1707
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v34

    iget-object v14, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1708
    invoke-virtual {v14}, Landroid/app/job/JobParameters;->isOverrideDeadlineExpired()Z

    move-result v36

    .line 1709
    invoke-virtual {v8, v10}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v37

    .line 1710
    invoke-virtual {v8, v12}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v38

    .line 1711
    invoke-virtual {v8, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v39

    const/high16 v7, -0x80000000

    .line 1712
    invoke-virtual {v8, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v40

    .line 1713
    invoke-virtual {v8, v4}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v41

    const/high16 v7, 0x10000000

    .line 1714
    invoke-virtual {v8, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v42

    const/high16 v7, 0x4000000

    .line 1715
    invoke-virtual {v8, v7}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v43

    move v7, v10

    move v12, v11

    iget-wide v10, v0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    move/from16 v80, v5

    iget-wide v4, v8, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v44, v10, v4

    .line 1717
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v46

    iget-boolean v4, v8, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 1719
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v48

    .line 1720
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v49

    .line 1721
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v51

    .line 1722
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v53

    .line 1723
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v55

    .line 1725
    invoke-static {v6}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v56

    .line 1726
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNamespaceHash()Ljava/lang/String;

    move-result-object v57

    .line 1727
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    iget-wide v10, v0, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromSource:J

    sub-long v58, v5, v10

    .line 1729
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    iget-wide v10, v0, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromSource:J

    sub-long v60, v5, v10

    .line 1731
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    iget-wide v10, v0, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromCalling:J

    sub-long v62, v5, v10

    .line 1733
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    iget-wide v10, v0, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromCalling:J

    sub-long v64, v5, v10

    .line 1735
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v66

    .line 1736
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v68

    .line 1737
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v70

    const/high16 v5, 0x200000

    .line 1738
    invoke-virtual {v8, v5}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v71

    .line 1739
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->canApplyTransportAffinities()Z

    move-result v72

    .line 1740
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result v73

    .line 1741
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v74

    .line 1742
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v75

    .line 1743
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v76

    .line 1744
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v77

    .line 1746
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v5

    add-int/lit8 v78, v5, 0x1

    iget-object v5, v0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1748
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v6

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    .line 1747
    invoke-virtual {v5, v6, v10}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v79

    const/16 v10, 0x8

    const/4 v14, 0x0

    move/from16 v47, v4

    move-object v11, v9

    move/from16 v28, v12

    const/4 v4, 0x0

    move-object v12, v2

    const/4 v2, 0x0

    .line 1680
    invoke-static/range {v10 .. v79}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    const-wide/32 v5, 0x80000

    .line 1749
    invoke-static {v5, v6}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    const-string v10, "JobScheduler"

    if-eqz v9, :cond_23a

    .line 1751
    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v9

    .line 1750
    invoke-static {v5, v6, v10, v9}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 1753
    :cond_23a
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getAppTraceTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_249

    const-wide/16 v5, 0x1000

    .line 1755
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v9

    .line 1754
    invoke-static {v5, v6, v10, v9}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 1758
    :cond_249
    :try_start_249
    iget-object v5, v0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v9

    invoke-interface {v5, v6, v9, v15}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;II)V
    :try_end_25a
    .catch Landroid/os/RemoteException; {:try_start_249 .. :try_end_25a} :catch_25a

    .line 1763
    :catch_25a
    iget-object v5, v0, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    invoke-virtual {v5, v0, v3, v8}, Lcom/android/server/job/JobNotificationCoordinator;->removeNotificationAssociation(Lcom/android/server/job/JobServiceContext;ILcom/android/server/job/controllers/JobStatus;)V

    .line 1765
    iget-object v5, v0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_266

    .line 1766
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1768
    :cond_266
    iget v5, v0, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 1769
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1771
    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1772
    iput-object v2, v0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1773
    iput-object v2, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1774
    iput v4, v0, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 1775
    iput-object v2, v0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 1776
    iput-object v2, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v6, 0x4

    .line 1777
    iput v6, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 1778
    iput-boolean v4, v0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 1779
    iput-object v2, v0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 1780
    iput-boolean v7, v0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 1781
    iput v4, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 1782
    iput v4, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    .line 1783
    iput-object v2, v0, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    const-wide/16 v6, 0x0

    .line 1784
    iput-wide v6, v0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    .line 1785
    iput v4, v0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 1786
    iput v4, v0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 1787
    iput-object v2, v0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    .line 1788
    iput-object v2, v0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 1789
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result v2

    if-eqz v2, :cond_2a0

    .line 1790
    iget-object v2, v0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v0, v8, v4}, Lcom/android/server/job/JobSchedulerService;->informObserversOfUserVisibleJobChange(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1794
    :cond_2a0
    iget-object v2, v0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2, v0, v8, v5}, Lcom/android/server/job/JobConcurrencyManager;->onJobCompletedLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    .line 1795
    iget-object v0, v0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    move/from16 v15, v80

    invoke-interface {v0, v8, v3, v15, v1}, Lcom/android/server/job/JobCompletedListener;->onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;IIZ)V

    return-void
.end method

.method public final doAcknowledgeGetTransferredDownloadBytesMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V
    .registers 6

    .line 871
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 872
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 873
    monitor-exit p2

    return-void

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 875
    :cond_d
    iput-wide p4, p0, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    .line 876
    monitor-exit p2

    return-void

    :goto_11
    monitor-exit p2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method public final doAcknowledgeGetTransferredUploadBytesMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V
    .registers 6

    .line 882
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 883
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 884
    monitor-exit p2

    return-void

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 886
    :cond_d
    iput-wide p4, p0, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    .line 887
    monitor-exit p2

    return-void

    :goto_11
    monitor-exit p2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method public doAcknowledgeStartMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 4

    .line 895
    const-string p2, "finished start"

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    return-void
.end method

.method public doAcknowledgeStopMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 4

    const/4 p2, 0x0

    .line 891
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    return-void
.end method

.method public doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V
    .registers 7

    .line 1245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1247
    :try_start_4
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1e

    .line 1248
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 1249
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    .line 1254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    goto :goto_1c

    .line 1251
    :cond_14
    :try_start_14
    invoke-virtual {p0, p2, p3}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 1252
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_12

    .line 1254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1252
    :goto_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_12

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 1254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw p0
.end method

.method public doCallbackLocked(ZLjava/lang/String;)V
    .registers 8

    .line 1260
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_2a

    .line 1261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCallback of : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " v:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1266
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    .line 1267
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleStartedLocked(Z)V

    return-void

    :cond_36
    const/4 v3, 0x2

    if-eq v2, v3, :cond_56

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3d

    goto :goto_56

    :cond_3d
    if-eqz v0, :cond_55

    .line 1273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognised callback: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-void

    .line 1270
    :cond_56
    :goto_56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    return-void
.end method

.method public final doCancelLocked(IILjava/lang/String;)V
    .registers 8

    .line 1281
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_41

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_41

    .line 1288
    :cond_9
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_29

    const/16 v0, 0xa

    if-ne p1, v0, :cond_29

    .line 1291
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    .line 1293
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_29

    .line 1295
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 1296
    iput p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 1297
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    return-void

    .line 1301
    :cond_29
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3d

    .line 1304
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    goto :goto_3b

    :cond_3a
    const/4 p1, -0x1

    :goto_3b
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 1306
    :cond_3d
    invoke-virtual {p0, p3}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    return-void

    .line 1282
    :cond_41
    :goto_41
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_62

    .line 1283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too late to process cancel for context (verb="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), ignoring."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobServiceContext"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return-void
.end method

.method public doCompleteWork(Lcom/android/server/job/JobServiceContext$JobCallback;II)Z
    .registers 7

    .line 930
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 932
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_33

    .line 933
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_15

    .line 936
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 945
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_13
    move-exception p0

    goto :goto_31

    .line 938
    :cond_15
    :try_start_15
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1, p3}, Lcom/android/server/job/controllers/JobStatus;->completeWorkLocked(I)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 939
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1, p0}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 940
    monitor-exit p2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_13

    .line 945
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 942
    :cond_2b
    :try_start_2b
    monitor-exit p2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_13

    .line 945
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 943
    :goto_31
    :try_start_31
    monitor-exit p2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_13

    :try_start_32
    throw p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    .line 945
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 946
    throw p0
.end method

.method public doDequeueWork(Lcom/android/server/job/JobServiceContext$JobCallback;I)Landroid/app/job/JobWorkItem;
    .registers 9

    .line 899
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 901
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_55

    .line 902
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_15

    .line 903
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 925
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_13
    move-exception p0

    goto :goto_53

    .line 905
    :cond_15
    :try_start_15
    iget p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4e

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1e

    goto :goto_4e

    .line 911
    :cond_1e
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->dequeueWorkLocked()Landroid/app/job/JobWorkItem;

    move-result-object p1

    if-nez p1, :cond_3e

    .line 912
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasExecutingWorkLocked()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 913
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string v3, "last work dequeued"

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v2, v4, v5, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 917
    const-string v2, "last work dequeued"

    invoke-virtual {p0, v4, v2}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    goto :goto_49

    :cond_3e
    if-eqz p1, :cond_49

    .line 920
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2, p0}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 922
    :cond_49
    :goto_49
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_15 .. :try_end_4a} :catchall_13

    .line 925
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 909
    :cond_4e
    :goto_4e
    :try_start_4e
    monitor-exit p2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_13

    .line 925
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 923
    :goto_53
    :try_start_53
    monitor-exit p2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_13

    :try_start_54
    throw p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p0

    .line 925
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 926
    throw p0
.end method

.method public doHandleAbandonedJob(Lcom/android/server/job/JobServiceContext$JobCallback;I)V
    .registers 7

    .line 839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 842
    :try_start_4
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_57

    .line 844
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 845
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    .line 864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    goto :goto_5d

    .line 847
    :cond_14
    :try_start_14
    iget p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1e

    .line 850
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_12

    .line 864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 852
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object p0

    .line 853
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_12

    if-eqz p0, :cond_59

    .line 854
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    if-ne p2, p1, :cond_59

    const/4 p1, 0x1

    .line 855
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->setAbandoned(Z)V

    .line 856
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    const-string p2, "abandonedJob:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/32 p1, 0x20000

    invoke-static {p1, p2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V
    :try_end_56
    .catchall {:try_start_25 .. :try_end_56} :catchall_57

    goto :goto_59

    :catchall_57
    move-exception p0

    goto :goto_5f

    .line 864
    :cond_59
    :goto_59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 853
    :goto_5d
    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_12

    :try_start_5e
    throw p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_57

    .line 864
    :goto_5f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    throw p0
.end method

.method public doJobFinished(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 9

    .line 818
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 820
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2a

    .line 821
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 822
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    .line 830
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    goto :goto_28

    .line 824
    :cond_14
    :try_start_14
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string v2, "app called jobFinished"

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {p1, v3, v4, v2}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 827
    const-string p1, "app called jobFinished"

    invoke-virtual {p0, p3, p1}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 828
    monitor-exit p2
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_12

    .line 830
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 828
    :goto_28
    :try_start_28
    monitor-exit p2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_12

    :try_start_29
    throw p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 830
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    throw p0
.end method

.method public doServiceBoundLocked()V
    .registers 1

    .line 1240
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1241
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->handleServiceBoundLocked()V

    return-void
.end method

.method public final doSetNotification(Lcom/android/server/job/JobServiceContext$JobCallback;IILandroid/app/Notification;I)V
    .registers 16

    .line 1045
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1046
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1047
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1049
    :try_start_c
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_5d

    .line 1050
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 1051
    monitor-exit p2
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1a

    .line 1069
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception v0

    move-object p0, v0

    goto :goto_5b

    .line 1053
    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    if-ne v4, p1, :cond_4c

    .line 1057
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1058
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    move-object v1, p0

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobNotificationCoordinator;->enqueueNotification(Lcom/android/server/job/JobServiceContext;Ljava/lang/String;IIILandroid/app/Notification;I)V

    .line 1061
    iget-boolean p0, v1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    if-eqz p0, :cond_47

    const/4 p0, 0x0

    .line 1062
    iput-boolean p0, v1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    .line 1063
    iget p0, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_47

    .line 1064
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 1067
    :cond_47
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_1a

    .line 1069
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1054
    :cond_4c
    :try_start_4c
    const-string p0, "JobServiceContext"

    const-string p1, "Calling UID isn\'t the same as running job\'s UID..."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can\'t post notification on behalf of another app"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1067
    :goto_5b
    monitor-exit p2
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_1a

    :try_start_5c
    throw p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v0

    move-object p0, v0

    .line 1069
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    throw p0
.end method

.method public final doUpdateEstimatedNetworkBytes(Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V
    .registers 12

    .line 952
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 953
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 954
    monitor-exit p2

    return-void

    :catchall_b
    move-exception p0

    goto/16 :goto_87

    .line 956
    :cond_e
    const-string p1, "job_scheduler.value_cntr_w_uid_estimated_network_bytes_updated"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 958
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 956
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 959
    sget-object p1, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 960
    invoke-static {p4, p5}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result p3

    int-to-float p3, p3

    .line 959
    invoke-virtual {p1, p3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 961
    sget-object p1, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 962
    invoke-static {p6, p7}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result p3

    int-to-float p3, p3

    .line 961
    invoke-virtual {p1, p3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 963
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_58

    cmp-long p1, p4, v2

    if-eqz p1, :cond_58

    cmp-long p1, v0, p4

    if-gez p1, :cond_49

    .line 966
    const-string p1, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_increased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 969
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 966
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_58

    :cond_49
    cmp-long p1, v0, p4

    if-lez p1, :cond_58

    .line 971
    const-string p1, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_decreased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 974
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 971
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 977
    :cond_58
    :goto_58
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_81

    cmp-long p1, p6, v2

    if-eqz p1, :cond_81

    cmp-long p1, v0, p6

    if-gez p1, :cond_72

    .line 980
    const-string p1, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_increased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 983
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 980
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_81

    :cond_72
    cmp-long p1, v0, p6

    if-lez p1, :cond_81

    .line 985
    const-string p1, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_decreased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 988
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 985
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 991
    :cond_81
    :goto_81
    iput-wide p4, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    .line 992
    iput-wide p6, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    .line 993
    monitor-exit p2

    return-void

    :goto_87
    monitor-exit p2
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_b

    throw p0
.end method

.method public final doUpdateTransferredNetworkBytes(Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V
    .registers 12

    .line 999
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1000
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 1001
    monitor-exit p2

    return-void

    :catchall_b
    move-exception p0

    goto/16 :goto_87

    .line 1003
    :cond_e
    const-string p1, "job_scheduler.value_cntr_w_uid_transferred_network_bytes_updated"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1005
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 1003
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1006
    sget-object p1, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1007
    invoke-static {p4, p5}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result p3

    int-to-float p3, p3

    .line 1006
    invoke-virtual {p1, p3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 1008
    sget-object p1, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1009
    invoke-static {p6, p7}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result p3

    int-to-float p3, p3

    .line 1008
    invoke-virtual {p1, p3}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 1010
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_58

    cmp-long p1, p4, v2

    if-eqz p1, :cond_58

    cmp-long p1, v0, p4

    if-gez p1, :cond_49

    .line 1013
    const-string p1, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_increased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1016
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 1013
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_58

    :cond_49
    cmp-long p1, v0, p4

    if-lez p1, :cond_58

    .line 1018
    const-string p1, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_decreased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1021
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 1018
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1024
    :cond_58
    :goto_58
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_81

    cmp-long p1, p6, v2

    if-eqz p1, :cond_81

    cmp-long p1, v0, p6

    if-gez p1, :cond_72

    .line 1027
    const-string p1, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_increased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1030
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 1027
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_81

    :cond_72
    cmp-long p1, v0, p6

    if-lez p1, :cond_81

    .line 1032
    const-string p1, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_decreased"

    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1035
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    .line 1032
    invoke-static {p1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1038
    :cond_81
    :goto_81
    iput-wide p4, p0, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    .line 1039
    iput-wide p6, p0, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    .line 1040
    monitor-exit p2

    return-void

    :goto_87
    monitor-exit p2
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_b

    throw p0
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;J)V
    .registers 8

    .line 1864
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v0, :cond_23

    .line 1865
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1866
    const-string v0, "inactive since "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1867
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1868
    const-string p2, ", stopped because: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1869
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1871
    :cond_1d
    const-string p0, "inactive"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1874
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1877
    const-string v0, "Running for: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1878
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long v0, p2, v0

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1879
    const-string v0, ", timeout at: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1880
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1881
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1882
    const-string v0, "Remaining execution limits: ["

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1883
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1885
    const-string v0, ", "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1886
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1888
    const-string p2, "]"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1889
    iget p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    if-eqz p2, :cond_88

    .line 1890
    const-string p2, " Pending stop because "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1891
    iget p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1892
    const-string p2, "/"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1893
    iget p3, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1894
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1895
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1897
    :cond_88
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1898
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z
    .registers 82

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 387
    iget-object v3, v1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 388
    :try_start_7
    iget-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 v4, 0x0

    if-nez v0, :cond_18

    .line 389
    const-string v0, "JobServiceContext"

    const-string v1, "Starting new runnable but context is unavailable > Error."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    monitor-exit v3

    return v4

    :catchall_15
    move-exception v0

    goto/16 :goto_429

    :cond_18
    const/4 v0, -0x1

    .line 393
    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 395
    iput-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    move/from16 v0, p2

    .line 396
    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 397
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobServiceContext$JobCallback;-><init>(Lcom/android/server/job/JobServiceContext;)V

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    const/4 v5, 0x0

    .line 398
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 400
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_42

    .line 401
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v7

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_42

    move v15, v6

    goto :goto_43

    :cond_42
    move v15, v4

    .line 403
    :goto_43
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_55

    .line 404
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    .line 405
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v18, v0

    goto :goto_57

    :cond_55
    move-object/from16 v18, v5

    .line 408
    :goto_57
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_69

    .line 409
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 410
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v19, v0

    goto :goto_6b

    :cond_69
    move-object/from16 v19, v5

    .line 412
    :goto_6b
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 413
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/job/JobServiceContext;->canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    if-eqz v7, :cond_7a

    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    move-object/from16 v20, v7

    goto :goto_7c

    :cond_7a
    move-object/from16 v20, v5

    .line 414
    :goto_7c
    new-instance v7, Landroid/app/job/JobParameters;

    iget-object v8, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v10

    .line 415
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v11

    .line 416
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v13

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v14

    .line 417
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v16

    .line 418
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v17

    invoke-direct/range {v7 .. v20}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZZZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V

    iput-object v7, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 420
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 421
    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    .line 422
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 423
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 424
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    .line 425
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    .line 426
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    const-wide/16 v7, 0x0

    .line 427
    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    .line 428
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    .line 430
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-lez v0, :cond_115

    .line 432
    iget-wide v11, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long/2addr v11, v9

    const/16 v0, 0x1f40

    .line 433
    invoke-static {v0, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 434
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_115

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 436
    const-string v9, "Starting job deferred for standby by "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-static {v11, v12, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 438
    const-string v9, " ms : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v9, "JobServiceContext"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_115
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->clearPersistedUtcTimes()V

    .line 448
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    .line 449
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v9

    .line 448
    invoke-virtual {v0, v6, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 450
    iget-object v9, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(I)Landroid/os/WorkSource;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 451
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 452
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 454
    iput v4, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 455
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/4 v9, 0x4

    .line 458
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_152
    .catchall {:try_start_7 .. :try_end_152} :catchall_15

    .line 463
    :try_start_152
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v10

    if-eqz v10, :cond_172

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isUserBgRestricted()Z

    move-result v10

    if-nez v10, :cond_172

    .line 469
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v10

    if-eqz v10, :cond_16a

    const-wide v10, 0x100038001L

    goto :goto_16d

    :cond_16a
    const-wide/32 v10, 0x18001

    :goto_16d
    move v12, v6

    goto :goto_192

    :catch_16f
    move-exception v0

    move v12, v4

    goto :goto_1a6

    .line 475
    :cond_172
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v10

    if-nez v10, :cond_184

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v10

    if-eqz v10, :cond_17f

    goto :goto_184

    :cond_17f
    const-wide/32 v10, 0x8105

    :goto_182
    move v12, v4

    goto :goto_192

    .line 477
    :cond_184
    :goto_184
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v10
    :try_end_188
    .catch Ljava/lang/SecurityException; {:try_start_152 .. :try_end_188} :catch_16f
    .catchall {:try_start_152 .. :try_end_188} :catchall_15

    if-eqz v10, :cond_18e

    const-wide/32 v10, 0x38005

    goto :goto_182

    :cond_18e
    const-wide/32 v10, 0x18005

    goto :goto_182

    .line 484
    :goto_192
    :try_start_192
    iget-object v13, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 485
    invoke-static {v10, v11}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    move-result-object v10

    .line 486
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 484
    invoke-virtual {v13, v0, v1, v10, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_1a4
    .catch Ljava/lang/SecurityException; {:try_start_192 .. :try_end_1a4} :catch_1a5
    .catchall {:try_start_192 .. :try_end_1a4} :catchall_15

    goto :goto_1d1

    :catch_1a5
    move-exception v0

    .line 491
    :goto_1a6
    :try_start_1a6
    const-string v10, "JobServiceContext"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Job service "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " cannot be executed: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :goto_1d1
    if-nez v0, :cond_210

    .line 496
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_1f5

    .line 497
    const-string v0, "JobServiceContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unavailable."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1f5
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 501
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 502
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 503
    iput v4, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 504
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 505
    iput-object v5, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 506
    iput-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 507
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 508
    iput v9, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 509
    monitor-exit v3

    return v4

    .line 511
    :cond_210
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobPackageTracker;->noteActive(Lcom/android/server/job/controllers/JobStatus;)V

    .line 512
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 515
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromSource:J

    .line 516
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromSource:J

    .line 518
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromCalling:J

    .line 519
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromCalling:J

    .line 521
    iget-object v10, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    move-result v10

    const/16 v11, 0x8

    if-le v10, v11, :cond_251

    .line 525
    iget-object v10, v1, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v10

    .line 529
    :cond_251
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v13

    if-eqz v13, :cond_260

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v13

    filled-new-array {v0, v13}, [I

    move-result-object v0

    goto :goto_264

    :cond_260
    filled-new-array {v0}, [I

    move-result-object v0

    .line 532
    :goto_264
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v13

    if-eqz v13, :cond_274

    .line 533
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v5, v13}, [Ljava/lang/String;

    move-result-object v13

    :goto_272
    move v14, v10

    goto :goto_27d

    .line 534
    :cond_274
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    goto :goto_272

    .line 535
    :goto_27d
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v13

    .line 538
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v13

    move/from16 v17, v14

    move/from16 v33, v15

    .line 539
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLoggingJobId()J

    move-result-wide v14

    move-object/from16 v18, v16

    .line 540
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v16

    move/from16 v19, v17

    .line 541
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v17

    move-object/from16 v20, v18

    .line 542
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v18

    move/from16 v21, v19

    .line 543
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v19

    move-object/from16 v22, v20

    .line 544
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v20

    move/from16 v23, v21

    .line 545
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v21

    move-object/from16 v24, v22

    .line 546
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v22

    move/from16 v25, v23

    .line 547
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v23

    move-object/from16 v26, v24

    .line 548
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v24

    move/from16 v27, v25

    .line 549
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v25

    .line 551
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v28

    .line 552
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v29

    move/from16 v30, v27

    move/from16 v27, v28

    move/from16 v28, v29

    .line 553
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v29

    move/from16 v31, v30

    .line 554
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v30

    .line 555
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v34

    move-wide/from16 v77, v34

    move/from16 v35, v31

    move-wide/from16 v31, v77

    .line 557
    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v34

    move/from16 p2, v6

    const/4 v6, 0x2

    .line 558
    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    .line 559
    invoke-virtual {v2, v11}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v36

    const/high16 v11, -0x80000000

    .line 560
    invoke-virtual {v2, v11}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v37

    .line 561
    invoke-virtual {v2, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v38

    const/high16 v9, 0x10000000

    .line 562
    invoke-virtual {v2, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v39

    const/high16 v9, 0x4000000

    .line 563
    invoke-virtual {v2, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v40

    iget-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    move v9, v6

    iget-wide v5, v2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long/2addr v7, v5

    .line 565
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v43

    .line 566
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v44

    .line 567
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v45

    .line 568
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v46

    .line 569
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v48

    .line 570
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v50

    .line 571
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v52

    .line 572
    invoke-static/range {v35 .. v35}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v53

    .line 573
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNamespaceHash()Ljava/lang/String;

    move-result-object v54

    .line 578
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v63

    .line 579
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v65

    .line 580
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v67

    const/high16 v5, 0x200000

    .line 581
    invoke-virtual {v2, v5}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v68

    .line 582
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->canApplyTransportAffinities()Z

    move-result v69

    .line 583
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result v70

    .line 584
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v71

    .line 585
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v72

    .line 586
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v73

    .line 587
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v74

    .line 589
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v5

    add-int/lit8 v75, v5, 0x1

    iget-object v5, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 591
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v11

    .line 590
    invoke-virtual {v5, v6, v11}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v76

    move-wide/from16 v41, v7

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v11, 0x1

    move v8, v12

    const/4 v12, -0x1

    move/from16 v35, v9

    move-object/from16 v9, v26

    const/16 v26, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    move/from16 v77, v8

    move-object v8, v0

    move/from16 v0, v77

    .line 528
    invoke-static/range {v7 .. v76}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    .line 592
    sget-object v7, Lcom/android/server/job/JobServiceContext;->sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 593
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v8, 0x80000

    .line 594
    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    if-eqz v10, :cond_3e5

    .line 597
    const-string v10, "JobScheduler"

    .line 598
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->computeSystemTraceTag()Ljava/lang/String;

    move-result-object v11

    .line 599
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v12

    .line 597
    invoke-static {v8, v9, v10, v11, v12}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 601
    :cond_3e5
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getAppTraceTag()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3fa

    .line 603
    const-string v8, "JobScheduler"

    .line 604
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getAppTraceTag()Ljava/lang/String;

    move-result-object v9

    .line 605
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v10

    const-wide/16 v11, 0x1000

    .line 603
    invoke-static {v11, v12, v8, v9, v10}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_3fa
    .catchall {:try_start_1a6 .. :try_end_3fa} :catchall_15

    .line 608
    :cond_3fa
    :try_start_3fa
    iget-object v8, v1, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    invoke-interface {v8, v9, v10}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_407
    .catch Landroid/os/RemoteException; {:try_start_3fa .. :try_end_407} :catch_407
    .catchall {:try_start_3fa .. :try_end_407} :catchall_15

    .line 612
    :catch_407
    :try_start_407
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v8

    .line 613
    iget-object v9, v1, Lcom/android/server/job/JobServiceContext;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 614
    invoke-virtual {v9, v7, v8, v10, v11}, Landroid/app/usage/UsageStatsManagerInternal;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 615
    iput-boolean v4, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 v4, 0x0

    .line 616
    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 617
    iput-wide v5, v1, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 620
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 621
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 622
    iput-boolean v0, v2, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    .line 623
    monitor-exit v3

    return p2

    .line 624
    :goto_429
    monitor-exit v3
    :try_end_42a
    .catchall {:try_start_407 .. :try_end_42a} :catchall_15

    throw v0
.end method

.method public getEstimatedNetworkBytes()Landroid/util/Pair;
    .registers 4

    .line 809
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getExecutionStartTimeElapsed()J
    .registers 3

    .line 743
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    return-wide v0
.end method

.method public getId()I
    .registers 1

    .line 739
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public getPreferredUid()I
    .registers 1

    .line 731
    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return p0
.end method

.method public getRemainingGuaranteedTimeMs(J)J
    .registers 7

    .line 751
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;
    .registers 1

    .line 660
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object p0
.end method

.method public final getRunningJobNameLocked()Ljava/lang/String;
    .registers 1

    .line 692
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "<null>"

    return-object p0
.end method

.method public getRunningJobWorkType()I
    .registers 1

    .line 685
    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    return p0
.end method

.method public getTransferredNetworkBytes()Landroid/util/Pair;
    .registers 4

    .line 814
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final handleCancelLocked(Ljava/lang/String;)V
    .registers 6

    .line 1414
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_2e

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling cancel for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_2e
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x1

    if-eqz v0, :cond_56

    if-eq v0, v2, :cond_56

    const/4 v2, 0x2

    if-eq v0, v2, :cond_52

    const/4 p1, 0x3

    if-eq v0, p1, :cond_51

    .line 1431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cancelling a job without a valid verb: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void

    .line 1425
    :cond_52
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    return-void

    .line 1421
    :cond_56
    iput-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 1422
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final handleFinishedLocked(ZLjava/lang/String;)V
    .registers 5

    .line 1391
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    .line 1397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobServiceContext"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1394
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void
.end method

.method public handleOpTimeoutLocked()V
    .registers 11

    .line 1440
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v1, :cond_1b4

    const/4 v2, 0x1

    const-wide/32 v3, 0xf6461b8

    if-eq v1, v2, :cond_19c

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v7, "JobServiceContext"

    if-eq v1, v2, :cond_53

    if-eq v1, v6, :cond_3b

    .line 1566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling timeout for an invalid job state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dropping."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1566
    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mAnrTimer:Lcom/android/server/job/JobServiceContext$JobAnrTimer;

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->discard()Z

    .line 1569
    const-string v1, "invalid timeout"

    invoke-virtual {p0, v5, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void

    .line 1466
    :cond_3b
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1472
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 1471
    invoke-static {v3, v4, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1466
    const-string v3, "job_scheduler.value_cntr_w_uid_slow_app_response_on_stop_job"

    const-string/jumbo v4, "timed out while stopping"

    const-string v5, "No response to onStopJob"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1477
    :cond_53
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    if-eqz v1, :cond_97

    .line 1478
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v2, v5}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1482
    iput v5, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 1483
    iput v5, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    const/4 v1, 0x0

    .line 1484
    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    goto :goto_97

    .line 1486
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JS was waiting to stop this job. Sending onStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1486
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 1490
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mAnrTimer:Lcom/android/server/job/JobServiceContext$JobAnrTimer;

    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->discard()Z

    return-void

    .line 1495
    :cond_97
    :goto_97
    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v3, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v3, v1

    .line 1497
    iget-wide v8, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v1, v8

    .line 1499
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    cmp-long v3, v8, v3

    if-ltz v3, :cond_10d

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client timed out while executing (no jobFinished received). Sending onStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1502
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 1508
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timeout while executing"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1509
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "client timed out"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_f6

    const-wide/32 v4, 0x163457ac

    .line 1514
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    .line 1513
    invoke-static {v4, v5, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v4

    if-nez v4, :cond_f6

    .line 1515
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isAbandoned()Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 1519
    const-string v1, " and maybe abandoned"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x10

    const/16 v1, 0xd

    goto :goto_f7

    :cond_f6
    move v1, v6

    .line 1523
    :goto_f7
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1524
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1523
    invoke-virtual {v4, v6, v1, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 1525
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mAnrTimer:Lcom/android/server/job/JobServiceContext$JobAnrTimer;

    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->discard()Z

    return-void

    :cond_10d
    cmp-long v1, v8, v1

    if-ltz v1, :cond_164

    .line 1530
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v1, p0}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_143

    .line 1532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping client after min execution time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1532
    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v6, v1}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 1539
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    return-void

    .line 1541
    :cond_143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Letting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " continue to run past min execution time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    return-void

    .line 1545
    :cond_164
    iget-boolean v1, p0, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    if-eqz v1, :cond_178

    .line 1546
    const-string/jumbo v5, "required notification not provided"

    const/4 v6, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "job_scheduler.value_cntr_w_uid_slow_app_response_set_notification"

    const-string/jumbo v4, "timed out while stopping"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1553
    :cond_178
    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    sub-long v1, v8, v1

    const-wide/32 v3, 0x493e0

    cmp-long v3, v1, v3

    if-gez v3, :cond_188

    .line 1556
    const-string v3, "Unexpected op timeout while EXECUTING"

    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_188
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->incrementCumulativeExecutionTime(J)V

    .line 1560
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1561
    iput-wide v8, p0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    .line 1562
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    return-void

    .line 1454
    :cond_19c
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1460
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 1459
    invoke-static {v3, v4, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1454
    const-string v3, "job_scheduler.value_cntr_w_uid_slow_app_response_on_start_job"

    const-string/jumbo v4, "timed out while starting"

    const-string v5, "No response to onStartJob"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1443
    :cond_1b4
    const-string v5, "Timed out while trying to bind"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "job_scheduler.value_cntr_w_uid_slow_app_response_binding"

    const-string/jumbo v4, "timed out while binding"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleServiceBoundLocked()V
    .registers 5

    .line 1312
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_1e

    .line 1313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleServiceBound for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_1e
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v2, :cond_44

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onStartJob for a job that isn\'t pending. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1318
    const-string/jumbo v1, "started job not pending"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void

    .line 1321
    :cond_44
    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_67

    if-eqz v0, :cond_61

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job cancelled while waiting for bind to complete. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_61
    const-string v0, "cancelled while waiting for bind"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void

    .line 1330
    :cond_67
    :try_start_67
    iput v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 1331
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 1332
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_73} :catch_74

    return-void

    :catch_74
    move-exception v0

    .line 1337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending onStart message to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1338
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1337
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final handleStartedLocked(Z)V
    .registers 5

    .line 1351
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, "JobServiceContext"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    .line 1377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handling started job but job wasn\'t starting! Was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    const/4 v0, 0x2

    .line 1353
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-nez p1, :cond_34

    const/4 p1, 0x0

    .line 1356
    const-string/jumbo v0, "onStartJob returned false"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    return-void

    .line 1359
    :cond_34
    iget-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    if-eqz p1, :cond_46

    .line 1360
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_41

    .line 1361
    const-string p1, "Job cancelled while waiting for onStartJob to complete."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 p1, 0x0

    .line 1364
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    return-void

    .line 1367
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 1368
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1369
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getNetwork()Landroid/net/Network;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 1370
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->informOfNetworkChangeLocked(Landroid/net/Network;)V

    .line 1372
    :cond_60
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 1373
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1, p0, v0, v2}, Lcom/android/server/job/JobSchedulerService;->informObserversOfUserVisibleJobChange(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;Z)V

    :cond_6f
    return-void
.end method

.method public final hasPermissionForDelivery(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 649
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string/jumbo v6, "network info via JS"

    const/4 v2, -0x1

    move v3, p1

    move-object v4, p2

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public informOfNetworkChangeLocked(Landroid/net/Network;)V
    .registers 6

    .line 755
    const-string v0, "JobServiceContext"

    if-eqz p1, :cond_18

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v1, :cond_18

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 759
    sget-boolean p0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p0, :cond_3b

    .line 760
    const-string p0, "Skipping network change call because of missing permissions"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 764
    :cond_18
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3f

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onNetworkChanged for a job that isn\'t started. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_3c

    if-ne v0, v3, :cond_3b

    goto :goto_3c

    :cond_3b
    return-void

    .line 769
    :cond_3c
    :goto_3c
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    return-void

    .line 774
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1, p1}, Landroid/app/job/JobParameters;->setNetwork(Landroid/net/Network;)V

    const/4 p1, 0x0

    .line 775
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    .line 776
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {p1, v1}, Landroid/app/job/IJobService;->onNetworkChanged(Landroid/app/job/JobParameters;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception p1

    .line 778
    const-string v1, "Error sending onNetworkChanged to client."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    const-string p1, "host crashed when trying to inform of network change"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void
.end method

.method public isWithinExecutionGuaranteeTime()Z
    .registers 7

    .line 786
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public markForProcessDeathLocked(IILjava/lang/String;)V
    .registers 7

    .line 709
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x4

    const-string v2, "JobServiceContext"

    if-ne v0, v1, :cond_27

    .line 710
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_68

    .line 711
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too late to mark for death (verb="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), ignoring."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 715
    :cond_27
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_55

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 717
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for death because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_55
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 721
    iput p2, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    .line 722
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v0

    if-nez v0, :cond_68

    .line 726
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    :cond_68
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 6

    .line 1120
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1121
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v1, :cond_29

    .line 1122
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but no running job on this context"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    :catchall_27
    move-exception p0

    goto :goto_83

    .line 1124
    :cond_29
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1125
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1126
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1125
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 1128
    :cond_5c
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but context is running a different job"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :goto_7b
    const-string p1, "binding died"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 1132
    monitor-exit v0

    return-void

    :goto_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_27

    throw p0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 6

    .line 1137
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v1, :cond_29

    .line 1139
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but no running job on this context"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    :catchall_27
    move-exception p0

    goto :goto_84

    .line 1141
    :cond_29
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1142
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1143
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1142
    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 1145
    :cond_5c
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but context is running a different job"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :goto_7b
    const-string/jumbo p1, "null binding"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 1151
    monitor-exit v0

    return-void

    :goto_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_3 .. :try_end_85} :catchall_27

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 1083
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1087
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v1, :cond_1f

    .line 1089
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_1f

    .line 1094
    :cond_12
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 1095
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->doServiceBoundLocked()V

    .line 1096
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_27

    .line 1090
    :cond_1f
    :goto_1f
    const-string p1, "connected for different component"

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 1092
    monitor-exit v0

    return-void

    .line 1096
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_1d

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    .line 1102
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1103
    :try_start_3
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    if-eqz v0, :cond_13

    .line 1106
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    goto :goto_20

    :catchall_11
    move-exception p0

    goto :goto_29

    .line 1108
    :cond_13
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_20

    .line 1109
    const-string v1, "job_scheduler.value_cntr_w_uid_unexpected_service_disconnects"

    .line 1112
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 1109
    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1114
    :cond_20
    :goto_20
    const-string/jumbo v0, "unexpectedly disconnected"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 1115
    monitor-exit p1

    return-void

    :goto_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_11

    throw p0
.end method

.method public final onSlowAppResponseLocked(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobServiceContext"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {p3, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    if-eqz p2, :cond_30

    .line 1606
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 p3, 0x0

    const/16 v0, 0xc

    invoke-virtual {p2, p3, v0, p4}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    :cond_30
    if-eqz p6, :cond_49

    .line 1612
    invoke-static {p5}, Lcom/android/internal/os/TimeoutRecord;->forJobService(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p2

    .line 1613
    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mAnrTimer:Lcom/android/server/job/JobServiceContext$JobAnrTimer;

    invoke-virtual {p3, p2}, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->accept(Lcom/android/internal/os/TimeoutRecord;)V

    .line 1614
    iget-object p3, p0, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object p5, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object p6, p5, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 1615
    invoke-virtual {p5}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p5

    .line 1614
    invoke-virtual {p3, p6, p5, p2}, Landroid/app/ActivityManagerInternal;->appNotResponding(Ljava/lang/String;ILcom/android/internal/os/TimeoutRecord;)V

    goto :goto_4e

    .line 1617
    :cond_49
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mAnrTimer:Lcom/android/server/job/JobServiceContext$JobAnrTimer;

    invoke-virtual {p2}, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->discard()Z

    .line 1619
    :goto_4e
    invoke-virtual {p0, p1, p4}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void
.end method

.method public final removeOpTimeOutLocked()V
    .registers 1

    .line 1860
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mAnrTimer:Lcom/android/server/job/JobServiceContext$JobAnrTimer;

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->cancel()Z

    return-void
.end method

.method public final scheduleOpTimeOutLocked()V
    .registers 8

    .line 1822
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 1847
    sget-wide v0, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    goto :goto_34

    .line 1825
    :cond_a
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v2, v0

    .line 1827
    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v4

    .line 1829
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_1e

    sub-long/2addr v2, v4

    goto :goto_20

    :cond_1e
    sub-long v2, v0, v4

    .line 1835
    :goto_20
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    if-eqz v0, :cond_2a

    .line 1836
    sget-wide v0, Lcom/android/server/job/JobServiceContext;->NOTIFICATION_TIMEOUT_MILLIS:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_2a
    const-wide/32 v0, 0x493e0

    .line 1838
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_34

    .line 1843
    :cond_32
    sget-wide v0, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    .line 1850
    :goto_34
    sget-boolean v2, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v2, :cond_77

    .line 1851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling time out for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1852
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' jId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1853
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1851
    const-string v3, "JobServiceContext"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_77
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mAnrTimer:Lcom/android/server/job/JobServiceContext$JobAnrTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/job/JobServiceContext$JobAnrTimer;->start(J)V

    .line 1856
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-void
.end method

.method public sendStopMessageLocked(Ljava/lang/String;)V
    .registers 5

    .line 1580
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1581
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    const-string v2, "JobServiceContext"

    if-eq v0, v1, :cond_25

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending onStopJob for a job that isn\'t started. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1583
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void

    .line 1587
    :cond_25
    :try_start_25
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1588
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 1589
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 1590
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {p1, v0}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p1

    .line 1592
    const-string v0, "Error sending onStopJob to client."

    invoke-static {v2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 1594
    const-string v0, "host crashed when trying to stop"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void
.end method

.method public setJobParamsLockedForTest(Landroid/app/job/JobParameters;)V
    .registers 2

    .line 670
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method

.method public setPendingStopReasonLockedForTest(I)V
    .registers 2

    .line 680
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    return-void
.end method

.method public setRunningCallbackLockedForTest(Lcom/android/server/job/JobServiceContext$JobCallback;)V
    .registers 2

    .line 675
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    return-void
.end method

.method public setRunningJobLockedForTest(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    .line 665
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-void
.end method

.method public stopIfExecutingLocked(Ljava/lang/String;ILjava/lang/String;ZIII)Z
    .registers 10

    .line 793
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v1, -0x1

    if-eq p2, v1, :cond_f

    .line 794
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    if-ne p2, v1, :cond_3f

    :cond_f
    if-eqz p1, :cond_1b

    .line 795
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 796
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    if-eqz p4, :cond_2d

    .line 797
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    if-ne p5, p1, :cond_3f

    .line 798
    :cond_2d
    iget p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3f

    .line 799
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string/jumbo p2, "stop from shell"

    invoke-virtual {p1, p6, p7, p2}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 800
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method public final verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .registers 2

    .line 1160
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eq p0, p1, :cond_11

    .line 1161
    sget-boolean p0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p0, :cond_f

    .line 1162
    const-string p0, "JobServiceContext"

    const-string p1, "Stale callback received, ignoring."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method
