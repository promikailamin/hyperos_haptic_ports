.class public final Lcom/android/server/job/JobServiceContext;
.super Ljava/lang/Object;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobServiceContext$JobServiceHandler;,
        Lcom/android/server/job/JobServiceContext$JobCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_STANDBY:Z

.field private static final MSG_TIMEOUT:I = 0x0

.field public static final NO_PREFERRED_UID:I = -0x1

.field private static final OP_BIND_TIMEOUT_MILLIS:J

.field private static final OP_TIMEOUT_MILLIS:J

.field private static final TAG:Ljava/lang/String; = "JobServiceContext"

.field static final VERB_BINDING:I = 0x0

.field static final VERB_EXECUTING:I = 0x2

.field static final VERB_FINISHED:I = 0x4

.field static final VERB_STARTING:I = 0x1

.field static final VERB_STOPPING:I = 0x3

.field private static final VERB_STRINGS:[Ljava/lang/String;


# instance fields
.field private mAvailable:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCancelled:Z

.field private final mCompletedListener:Lcom/android/server/job/JobCompletedListener;

.field private final mContext:Landroid/content/Context;

.field private final mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

.field private mExecutionStartTimeElapsed:J

.field private final mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field private final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field private mLastUnsuccessfulFinishElapsed:J

.field private final mLock:Ljava/lang/Object;

.field private mMaxExecutionTimeMillis:J

.field private mMinExecutionGuaranteeMillis:J

.field private mParams:Landroid/app/job/JobParameters;

.field private mPendingDebugStopReason:Ljava/lang/String;

.field private mPendingInternalStopReason:I

.field private mPendingStopReason:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreferredUid:I

.field private mPreviousJobHadSuccessfulFinish:Z

.field private mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

.field private mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field private mRunningJobWorkType:I

.field private final mService:Lcom/android/server/job/JobSchedulerService;

.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field private mTimeoutElapsed:J

.field mVerb:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field service:Landroid/app/job/IJobService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunningCallback(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleOpTimeoutLocked(Lcom/android/server/job/JobServiceContext;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->handleOpTimeoutLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 80
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 81
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    .line 85
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x4650

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    .line 87
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x1f40

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    .line 89
    const-string v0, "VERB_BINDING"

    const-string v1, "VERB_STARTING"

    const-string v2, "VERB_EXECUTING"

    const-string v3, "VERB_STOPPING"

    const-string v4, "VERB_FINISHED"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V
    .registers 8
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "concurrencyManager"    # Lcom/android/server/job/JobConcurrencyManager;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "tracker"    # Lcom/android/server/job/JobPackageTracker;
    .param p5, "looper"    # Landroid/os/Looper;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 216
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 218
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 219
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 220
    const-class v1, Lcom/android/server/tare/EconomyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomyManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 221
    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 222
    new-instance v1, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {v1, p0, p5}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    .line 223
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 224
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    .line 225
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 227
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 229
    return-void
.end method

.method private applyStoppedReasonLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 1079
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 1080
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 1081
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 1082
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eqz v0, :cond_1e

    .line 1083
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    .line 1084
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    iget-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    iput-wide v1, v0, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    .line 1087
    :cond_1e
    return-void
.end method

.method private assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .registers 8
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 649
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 650
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 651
    .local v0, "nowElapsed":J
    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    if-nez v2, :cond_1c

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_1c

    .line 654
    const/4 v2, 0x0

    return v2

    .line 658
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 659
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Caller no longer running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v3, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    if-eqz v3, :cond_42

    .line 661
    const-string v3, ", last stopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget-wide v3, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    sub-long v3, v0, v3

    invoke-static {v3, v4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 663
    const-string v3, " because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget-object v3, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :cond_42
    new-instance v3, Ljava/lang/SecurityException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 668
    .end local v0    # "nowElapsed":J
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4c
    const/4 v0, 0x1

    return v0
.end method

.method private closeAndCleanupJobLocked(ZLjava/lang/String;)V
    .registers 33
    .param p1, "reschedule"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 1009
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    iget v0, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_c

    .line 1010
    return-void

    .line 1012
    :cond_c
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_42

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " reschedule="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " reason="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "JobServiceContext"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_42
    invoke-direct {v1, v3}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 1017
    iget-object v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1018
    .local v5, "completedJob":Lcom/android/server/job/controllers/JobStatus;
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    move-result v11

    .line 1019
    .local v11, "internalStopReason":I
    const/16 v0, 0xa

    const/4 v15, 0x1

    const/4 v14, 0x0

    if-ne v11, v0, :cond_55

    move v0, v15

    goto :goto_56

    :cond_55
    move v0, v14

    :goto_56
    iput-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    .line 1021
    if-nez v0, :cond_62

    .line 1022
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    .line 1024
    :cond_62
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, v5, v11, v3}, Lcom/android/server/job/JobPackageTracker;->noteInactive(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)V

    .line 1025
    const/16 v6, 0x8

    .line 1026
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 1028
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v12

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v13

    .line 1029
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v0

    move v4, v14

    move v14, v0

    .line 1030
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v0

    move v15, v0

    .line 1031
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v16

    .line 1032
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v17

    .line 1033
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v18

    .line 1034
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v19

    .line 1035
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v20

    .line 1036
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v21

    .line 1037
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v22

    iget-boolean v0, v5, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    move/from16 v23, v0

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1039
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v24

    .line 1040
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v25

    .line 1041
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v26

    .line 1042
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v27

    .line 1043
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v28

    .line 1025
    move/from16 v29, v11

    .end local v11    # "internalStopReason":I
    .local v29, "internalStopReason":I
    invoke-static/range {v6 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIIIZZZZZZZZZZIZIII)V

    .line 1045
    :try_start_c9
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_d7} :catch_df

    move/from16 v8, v29

    .end local v29    # "internalStopReason":I
    .local v8, "internalStopReason":I
    :try_start_d9
    invoke-interface {v0, v6, v7, v8}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;II)V
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_dc} :catch_dd

    .line 1049
    goto :goto_e2

    .line 1047
    :catch_dd
    move-exception v0

    goto :goto_e2

    .end local v8    # "internalStopReason":I
    .restart local v29    # "internalStopReason":I
    :catch_df
    move-exception v0

    move/from16 v8, v29

    .line 1050
    .end local v29    # "internalStopReason":I
    .restart local v8    # "internalStopReason":I
    :goto_e2
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v0

    const/4 v6, 0x3

    if-ne v0, v6, :cond_109

    .line 1051
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget-object v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1052
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    const v9, 0x6000000a

    iget-object v10, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1054
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1051
    invoke-interface {v0, v6, v7, v9, v10}, Lcom/android/server/tare/EconomyManagerInternal;->noteInstantaneousEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 1056
    :cond_109
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_110

    .line 1057
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1059
    :cond_110
    iget v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 1060
    .local v0, "workType":I
    iget-object v6, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1061
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1062
    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1063
    iput v4, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 1064
    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 1065
    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1066
    const/4 v7, 0x4

    iput v7, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 1067
    iput-boolean v4, v1, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 1068
    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 1069
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 1070
    iput v4, v1, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 1071
    iput v4, v1, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 1072
    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    .line 1073
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1074
    iget-object v4, v1, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    invoke-interface {v4, v5, v8, v2}, Lcom/android/server/job/JobCompletedListener;->onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;IZ)V

    .line 1075
    iget-object v4, v1, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v4, v1, v5, v0}, Lcom/android/server/job/JobConcurrencyManager;->onJobCompletedLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    .line 1076
    return-void
.end method

.method private doCancelLocked(IILjava/lang/String;)V
    .registers 9
    .param p1, "stopReasonCode"    # I
    .param p2, "internalStopReasonCode"    # I
    .param p3, "debugReason"    # Ljava/lang/String;

    .line 750
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 751
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 752
    const-string v0, "JobServiceContext"

    const-string v1, "Trying to process cancel for torn-down context, ignoring."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_10
    return-void

    .line 757
    :cond_11
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_31

    const/16 v0, 0xa

    if-ne p1, v0, :cond_31

    .line 760
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    .line 762
    .local v0, "earliestStopTimeElapsed":J
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 763
    .local v2, "nowElapsed":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_31

    .line 764
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 765
    iput p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 766
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    .line 767
    return-void

    .line 770
    .end local v0    # "earliestStopTimeElapsed":J
    .end local v2    # "nowElapsed":J
    :cond_31
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 771
    const/4 v0, 0x2

    if-ne p1, v0, :cond_45

    .line 773
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    goto :goto_43

    :cond_42
    const/4 v0, -0x1

    :goto_43
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 775
    :cond_45
    invoke-direct {p0, p3}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method private getRunningJobNameLocked()Ljava/lang/String;
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<null>"

    :goto_b
    return-object v0
.end method

.method private static getStartActionId(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 3
    .param p0, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 401
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    sparse-switch v0, :sswitch_data_3c

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    invoke-static {v1}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobServiceContext"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 403
    :sswitch_28
    const/high16 v0, 0x60000000

    return v0

    .line 405
    :sswitch_2b
    const v0, 0x60000002

    return v0

    .line 407
    :sswitch_2f
    const v0, 0x60000006

    return v0

    .line 409
    :sswitch_33
    const v0, 0x60000008

    return v0

    .line 414
    :goto_37
    :sswitch_37
    const v0, 0x60000004

    return v0

    nop

    :sswitch_data_3c
    .sparse-switch
        0x64 -> :sswitch_33
        0xc8 -> :sswitch_2f
        0x12c -> :sswitch_37
        0x190 -> :sswitch_2b
        0x1f4 -> :sswitch_28
    .end sparse-switch
.end method

.method private handleCancelLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 876
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_32

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling cancel for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_32
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_5e

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling a job without a valid verb: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 891
    :pswitch_50
    goto :goto_5c

    .line 887
    :pswitch_51
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 888
    goto :goto_5c

    .line 883
    :pswitch_55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 884
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 885
    nop

    .line 896
    :goto_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_55
        :pswitch_55
        :pswitch_51
        :pswitch_50
    .end packed-switch
.end method

.method private handleFinishedLocked(ZLjava/lang/String;)V
    .registers 6
    .param p1, "reschedule"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 853
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_30

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobServiceContext"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 856
    :pswitch_2a
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 857
    nop

    .line 862
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method private handleOpTimeoutLocked()V
    .registers 10

    .line 901
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, ", dropping."

    const/4 v2, 0x0

    const-string v3, "JobServiceContext"

    packed-switch v0, :pswitch_data_170

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling timeout for an invalid job state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 971
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const-string/jumbo v0, "invalid timeout"

    invoke-direct {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    goto/16 :goto_16e

    .line 917
    :pswitch_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No response from client for onStopJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 918
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v0, 0x1

    const-string/jumbo v1, "timed out while stopping"

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 920
    goto/16 :goto_16e

    .line 922
    :pswitch_53
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    if-eqz v0, :cond_95

    .line 923
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 927
    iput v2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 928
    iput v2, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    goto :goto_95

    .line 931
    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JS was waiting to stop this job. Sending onStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 932
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 931
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 936
    goto/16 :goto_16e

    .line 939
    :cond_95
    :goto_95
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v4

    .line 941
    .local v0, "latestStopTimeElapsed":J
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 942
    .local v4, "nowElapsed":J
    cmp-long v2, v4, v0

    const/4 v6, 0x3

    if-ltz v2, :cond_ce

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client timed out while executing (no jobFinished received). Sending onStop: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 945
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 944
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string v3, "client timed out"

    invoke-virtual {v2, v6, v6, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 948
    const-string/jumbo v2, "timeout while executing"

    invoke-direct {p0, v2}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    goto/16 :goto_16e

    .line 952
    :cond_ce
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2, p0}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    move-result-object v2

    .line 953
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_104

    .line 954
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stopping client after min execution time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 955
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " because "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 954
    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v7, 0x4

    invoke-virtual {v3, v7, v6, v2}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 961
    invoke-direct {p0, v2}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    goto :goto_127

    .line 963
    :cond_104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Letting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " continue to run past min execution time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 968
    .end local v2    # "reason":Ljava/lang/String;
    :goto_127
    goto :goto_16e

    .line 911
    .end local v0    # "latestStopTimeElapsed":J
    .end local v4    # "nowElapsed":J
    :pswitch_128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No response from client for onStartJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 912
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-string/jumbo v0, "timed out while starting"

    invoke-direct {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 914
    goto :goto_16e

    .line 903
    :pswitch_149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time-out while trying to bind "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string/jumbo v0, "timed out while binding"

    invoke-direct {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 906
    nop

    .line 974
    :goto_16e
    return-void

    nop

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_149
        :pswitch_128
        :pswitch_53
        :pswitch_30
    .end packed-switch
.end method

.method private handleServiceBoundLocked()V
    .registers 5

    .line 781
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_21

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleServiceBound for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_21
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v2, :cond_49

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onStartJob for a job that isn\'t pending. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v0, 0x0

    const-string/jumbo v1, "started job not pending"

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 788
    return-void

    .line 790
    :cond_49
    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_6e

    .line 791
    if-eqz v0, :cond_68

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job cancelled while waiting for bind to complete. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_68
    const-string v0, "cancelled while waiting for bind"

    invoke-direct {p0, v3, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 796
    return-void

    .line 799
    :cond_6e
    :try_start_6e
    iput v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 800
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 801
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7a} :catch_7b

    .line 808
    goto :goto_a2

    .line 802
    :catch_7b
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending onStart message to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 807
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 806
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a2
    return-void
.end method

.method private handleStartedLocked(Z)V
    .registers 6
    .param p1, "workOngoing"    # Z

    .line 820
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, "JobServiceContext"

    packed-switch v0, :pswitch_data_4e

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling started job but job wasn\'t starting! Was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void

    .line 822
    :pswitch_2a
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 823
    if-nez p1, :cond_37

    .line 825
    const/4 v0, 0x0

    const-string/jumbo v1, "onStartJob returned false"

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    .line 826
    return-void

    .line 828
    :cond_37
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    if-eqz v0, :cond_49

    .line 829
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_44

    .line 830
    const-string v0, "Job cancelled while waiting for onStartJob to complete."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    .line 834
    return-void

    .line 836
    :cond_49
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 837
    nop

    .line 843
    return-void

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2a
    .end packed-switch
.end method

.method private removeOpTimeOutLocked()V
    .registers 3

    .line 1131
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1132
    return-void
.end method

.method private scheduleOpTimeOutLocked()V
    .registers 9

    .line 1095
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1098
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_88

    .line 1117
    :pswitch_8
    sget-wide v6, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    .local v6, "timeoutMillis":J
    goto :goto_26

    .line 1100
    .end local v6    # "timeoutMillis":J
    :pswitch_b
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v2, v0

    .line 1102
    .local v2, "earliestStopTimeElapsed":J
    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v4

    .line 1104
    .local v0, "latestStopTimeElapsed":J
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 1105
    .local v4, "nowElapsed":J
    cmp-long v6, v4, v2

    if-gez v6, :cond_20

    .line 1106
    sub-long v6, v2, v4

    .restart local v6    # "timeoutMillis":J
    goto :goto_26

    .line 1108
    .end local v6    # "timeoutMillis":J
    :cond_20
    sub-long v6, v0, v4

    .line 1110
    .restart local v6    # "timeoutMillis":J
    goto :goto_26

    .line 1113
    .end local v0    # "latestStopTimeElapsed":J
    .end local v2    # "earliestStopTimeElapsed":J
    .end local v4    # "nowElapsed":J
    .end local v6    # "timeoutMillis":J
    :pswitch_23
    sget-wide v6, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    .line 1114
    .restart local v6    # "timeoutMillis":J
    nop

    .line 1120
    :goto_26
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_70

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling time out for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1122
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' jId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1123
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    div-long v1, v6, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1121
    const-string v1, "JobServiceContext"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_70
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1126
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1127
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    .line 1128
    return-void

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_23
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private sendStopMessageLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 982
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 983
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, "JobServiceContext"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_27

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onStopJob for a job that isn\'t started. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 986
    return-void

    .line 989
    :cond_27
    :try_start_27
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 990
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 991
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 992
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v2}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_37} :catch_38

    .line 997
    goto :goto_45

    .line 993
    :catch_38
    move-exception v0

    .line 994
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error sending onStopJob to client."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 996
    const/4 v1, 0x1

    const-string/jumbo v2, "host crashed when trying to stop"

    invoke-direct {p0, v1, v2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 998
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method private verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .registers 4
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 632
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eq v0, p1, :cond_11

    .line 633
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 634
    const-string v0, "JobServiceContext"

    const-string v1, "Stale callback received, ignoring."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 638
    :cond_11
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method cancelExecutingJobLocked(IILjava/lang/String;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "internalStopReason"    # I
    .param p3, "debugReason"    # Ljava/lang/String;

    .line 442
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobServiceContext;->doCancelLocked(IILjava/lang/String;)V

    .line 443
    return-void
.end method

.method clearPreferredUid()V
    .registers 2

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 451
    return-void
.end method

.method doAcknowledgeStartMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 5
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "jobId"    # I
    .param p3, "ongoing"    # Z

    .line 509
    const-string v0, "finished start"

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    .line 510
    return-void
.end method

.method doAcknowledgeStopMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 5
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "jobId"    # I
    .param p3, "reschedule"    # Z

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    .line 506
    return-void
.end method

.method doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V
    .registers 8
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "reschedule"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 714
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 716
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1e

    .line 717
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 718
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1b

    .line 723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    return-void

    .line 720
    :cond_12
    :try_start_12
    invoke-virtual {p0, p2, p3}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 721
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1b

    .line 723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    nop

    .line 725
    return-void

    .line 721
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .end local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .end local p2    # "reschedule":Z
    .end local p3    # "reason":Ljava/lang/String;
    :try_start_1d
    throw v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 723
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .restart local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .restart local p2    # "reschedule":Z
    .restart local p3    # "reason":Ljava/lang/String;
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    throw v2
.end method

.method doCallbackLocked(ZLjava/lang/String;)V
    .registers 8
    .param p1, "reschedule"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 729
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_2e

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCallback of : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " v:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 735
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 736
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleStartedLocked(Z)V

    goto :goto_5f

    .line 737
    :cond_3a
    const/4 v3, 0x2

    if-eq v2, v3, :cond_5c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_41

    goto :goto_5c

    .line 741
    :cond_41
    if-eqz v0, :cond_5f

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognised callback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 739
    :cond_5c
    :goto_5c
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    .line 745
    :cond_5f
    :goto_5f
    return-void
.end method

.method doCompleteWork(Lcom/android/server/job/JobServiceContext$JobCallback;II)Z
    .registers 8
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "jobId"    # I
    .param p3, "workId"    # I

    .line 541
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 543
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_21

    .line 544
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 547
    const/4 v3, 0x1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1e

    .line 552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 547
    return v3

    .line 549
    :cond_13
    :try_start_13
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3, p3}, Lcom/android/server/job/controllers/JobStatus;->completeWorkLocked(I)Z

    move-result v3

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1e

    .line 552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    return v3

    .line 550
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .end local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .end local p2    # "jobId":I
    .end local p3    # "workId":I
    :try_start_20
    throw v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    .line 552
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .restart local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .restart local p2    # "jobId":I
    .restart local p3    # "workId":I
    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    throw v2
.end method

.method doDequeueWork(Lcom/android/server/job/JobServiceContext$JobCallback;I)Landroid/app/job/JobWorkItem;
    .registers 11
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "jobId"    # I

    .line 513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 515
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_4a

    .line 516
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_13

    .line 517
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_47

    .line 536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 517
    return-object v4

    .line 519
    :cond_13
    :try_start_13
    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_42

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1c

    goto :goto_42

    .line 525
    :cond_1c
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->dequeueWorkLocked()Landroid/app/job/JobWorkItem;

    move-result-object v3

    .line 526
    .local v3, "work":Landroid/app/job/JobWorkItem;
    if-nez v3, :cond_3d

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->hasExecutingWorkLocked()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 527
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/16 v5, 0xa

    const-string/jumbo v6, "last work dequeued"

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5, v6}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 531
    const-string/jumbo v4, "last work dequeued"

    invoke-virtual {p0, v7, v4}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 533
    :cond_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_13 .. :try_end_3e} :catchall_47

    .line 536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    return-object v3

    .line 523
    .end local v3    # "work":Landroid/app/job/JobWorkItem;
    :cond_42
    :goto_42
    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_47

    .line 536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 523
    return-object v4

    .line 534
    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .end local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .end local p2    # "jobId":I
    :try_start_49
    throw v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    .line 536
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .restart local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .restart local p2    # "jobId":I
    :catchall_4a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    throw v2
.end method

.method doJobFinished(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 11
    .param p1, "cb"    # Lcom/android/server/job/JobServiceContext$JobCallback;
    .param p2, "jobId"    # I
    .param p3, "reschedule"    # Z

    .line 488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 490
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2a

    .line 491
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 492
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_27

    .line 500
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    return-void

    .line 494
    :cond_12
    :try_start_12
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v4, 0x0

    const/16 v5, 0xa

    const-string v6, "app called jobFinished"

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 497
    const-string v3, "app called jobFinished"

    invoke-virtual {p0, p3, v3}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 498
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_27

    .line 500
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    nop

    .line 502
    return-void

    .line 498
    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .end local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .end local p2    # "jobId":I
    .end local p3    # "reschedule":Z
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 500
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/job/JobServiceContext;
    .restart local p1    # "cb":Lcom/android/server/job/JobServiceContext$JobCallback;
    .restart local p2    # "jobId":I
    .restart local p3    # "reschedule":Z
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    throw v2
.end method

.method doServiceBoundLocked()V
    .registers 1

    .line 709
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 710
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->handleServiceBoundLocked()V

    .line 711
    return-void
.end method

.method dumpLocked(Landroid/util/IndentingPrintWriter;J)V
    .registers 8
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "nowElapsed"    # J

    .line 1135
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v0, :cond_25

    .line 1136
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 1137
    const-string/jumbo v0, "inactive since "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1138
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1139
    const-string v0, ", stopped because: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_90

    .line 1142
    :cond_1e
    const-string/jumbo v0, "inactive"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_90

    .line 1145
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1148
    const-string v0, "Running for: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long v0, p2, v0

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1150
    const-string v0, ", timeout at: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1151
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1152
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1153
    const-string v0, "Remaining execution limits: ["

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1156
    const-string v0, ", "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1157
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1159
    const-string v0, "]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    if-eqz v0, :cond_8a

    .line 1161
    const-string v0, " Pending stop because "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1163
    const-string v0, "/"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1165
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1168
    :cond_8a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1169
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1171
    :goto_90
    return-void
.end method

.method executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z
    .registers 54
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "workType"    # I

    .line 240
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 241
    :try_start_7
    iget-boolean v0, v7, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 v10, 0x0

    if-nez v0, :cond_15

    .line 242
    const-string v0, "JobServiceContext"

    const-string v1, "Starting new runnable but context is unavailable > Error."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    monitor-exit v9

    return v10

    .line 246
    :cond_15
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 248
    iput-object v8, v7, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_299

    .line 249
    move/from16 v11, p2

    :try_start_1c
    iput v11, v7, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 250
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-direct {v0, v7}, Lcom/android/server/job/JobServiceContext$JobCallback;-><init>(Lcom/android/server/job/JobServiceContext;)V

    iput-object v0, v7, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 251
    nop

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_3e

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3e

    move/from16 v20, v12

    goto :goto_40

    :cond_3e
    move/from16 v20, v10

    .line 254
    .local v20, "isDeadlineExpired":Z
    :goto_40
    const/4 v0, 0x0

    .line 255
    .local v0, "triggeredUris":[Landroid/net/Uri;
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v1, :cond_56

    .line 256
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    move-object v0, v1

    .line 257
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v25, v0

    goto :goto_58

    .line 255
    :cond_56
    move-object/from16 v25, v0

    .line 259
    .end local v0    # "triggeredUris":[Landroid/net/Uri;
    .local v25, "triggeredUris":[Landroid/net/Uri;
    :goto_58
    const/4 v0, 0x0

    .line 260
    .local v0, "triggeredAuthorities":[Ljava/lang/String;
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v1, :cond_6e

    .line 261
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    move-object v0, v1

    .line 262
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v26, v0

    goto :goto_70

    .line 260
    :cond_6e
    move-object/from16 v26, v0

    .line 264
    .end local v0    # "triggeredAuthorities":[Ljava/lang/String;
    .local v26, "triggeredAuthorities":[Ljava/lang/String;
    :goto_70
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    move-object/from16 v27, v0

    .line 265
    .local v27, "ji":Landroid/app/job/JobInfo;
    new-instance v0, Landroid/app/job/JobParameters;

    iget-object v14, v7, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v15

    invoke-virtual/range {v27 .. v27}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v16

    .line 266
    invoke-virtual/range {v27 .. v27}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v17

    invoke-virtual/range {v27 .. v27}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v18

    invoke-virtual/range {v27 .. v27}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v19

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v21

    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    move-object v13, v0

    move-object/from16 v22, v25

    move-object/from16 v23, v26

    move-object/from16 v24, v1

    invoke-direct/range {v13 .. v24}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V

    iput-object v0, v7, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 269
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 270
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v8}, Lcom/android/server/job/JobSchedulerService;->getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 271
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 272
    invoke-virtual {v0, v8}, Lcom/android/server/job/JobSchedulerService;->getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v0

    iget-wide v2, v7, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v0

    move-wide v13, v0

    .line 275
    .local v13, "whenDeferred":J
    const-wide/16 v5, 0x0

    cmp-long v0, v13, v5

    if-lez v0, :cond_f9

    .line 276
    iget-wide v0, v7, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long/2addr v0, v13

    .line 277
    .local v0, "deferral":J
    const/16 v2, 0x1f40

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 278
    sget-boolean v2, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_f9

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Starting job deferred for standby by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 282
    const-string v3, " ms : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v3, "JobServiceContext"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0    # "deferral":J
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_f9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->clearPersistedUtcTimes()V

    .line 292
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 293
    iget-object v1, v7, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 295
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 296
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 300
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getStartActionId(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/tare/EconomyManagerInternal;->noteInstantaneousEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 303
    iput v10, v7, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0
    :try_end_14e
    .catchall {:try_start_1c .. :try_end_14e} :catchall_29e

    move-object v15, v0

    .line 306
    .local v15, "intent":Landroid/content/Intent;
    const/16 v16, 0x0

    .line 309
    .local v16, "binding":Z
    :try_start_151
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 310
    const v0, 0x3c005

    .local v0, "bindFlags":I
    goto :goto_15e

    .line 316
    .end local v0    # "bindFlags":I
    :cond_15b
    const v0, 0xc105

    .line 324
    .restart local v0    # "bindFlags":I
    :goto_15e
    invoke-static {}, Lcom/android/server/job/JobServiceContextStub;->get()Lcom/android/server/job/JobServiceContextStub;

    move-result-object v1

    iget-object v3, v7, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;
    :try_end_164
    .catch Ljava/lang/SecurityException; {:try_start_151 .. :try_end_164} :catch_186
    .catchall {:try_start_151 .. :try_end_164} :catchall_29e

    move-object/from16 v2, p0

    move-object v4, v15

    move-wide/from16 v18, v13

    move-wide v12, v5

    .end local v13    # "whenDeferred":J
    .local v18, "whenDeferred":J
    move v5, v0

    move-object/from16 v6, p1

    :try_start_16d
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobServiceContextStub;->checkIfCancelJob(Lcom/android/server/job/JobServiceContext;Landroid/content/Context;Landroid/content/Intent;ILcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_183

    .line 326
    iget-object v1, v7, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 326
    invoke-virtual {v1, v15, v7, v0, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1
    :try_end_181
    .catch Ljava/lang/SecurityException; {:try_start_16d .. :try_end_181} :catch_184
    .catchall {:try_start_16d .. :try_end_181} :catchall_29e

    move/from16 v16, v1

    .line 337
    .end local v0    # "bindFlags":I
    :cond_183
    goto :goto_1ba

    .line 330
    :catch_184
    move-exception v0

    goto :goto_18a

    .end local v18    # "whenDeferred":J
    .restart local v13    # "whenDeferred":J
    :catch_186
    move-exception v0

    move-wide/from16 v18, v13

    move-wide v12, v5

    .line 334
    .end local v13    # "whenDeferred":J
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v18    # "whenDeferred":J
    :goto_18a
    :try_start_18a
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be executed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 335
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v16, 0x0

    .line 338
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1ba
    const/4 v1, 0x0

    if-nez v16, :cond_204

    .line 339
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_1e1

    .line 340
    const-string v0, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unavailable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1e1
    iput-object v1, v7, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 343
    iput v10, v7, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 344
    iput-object v1, v7, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 345
    iput-object v1, v7, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 346
    iput-wide v12, v7, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 347
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1f0
    .catchall {:try_start_18a .. :try_end_1f0} :catchall_29e

    .line 351
    :try_start_1f0
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_1f5} :catch_1f6
    .catchall {:try_start_1f0 .. :try_end_1f5} :catchall_29e

    .line 354
    goto :goto_1fc

    .line 352
    :catch_1f6
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1f7
    const-string v1, "JobServiceContext"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1fc
    const/4 v0, 0x4

    iput v0, v7, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 358
    monitor-exit v9

    return v10

    .line 360
    :cond_204
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, v8}, Lcom/android/server/job/JobPackageTracker;->noteActive(Lcom/android/server/job/controllers/JobStatus;)V

    .line 361
    const/16 v28, 0x8

    .line 362
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v29

    const/16 v30, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    const/16 v33, -0x1

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v34

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v35

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v36

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v37

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v38

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v39

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v40

    .line 371
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v41

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v42

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v43

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v44

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v45

    const/16 v46, 0x0

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v47

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v48

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v49

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v50

    .line 361
    invoke-static/range {v28 .. v50}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIIIZZZZZZZZZZIZIII)V
    :try_end_266
    .catchall {:try_start_1f7 .. :try_end_266} :catchall_29e

    .line 382
    :try_start_266
    iget-object v0, v7, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_273
    .catch Landroid/os/RemoteException; {:try_start_266 .. :try_end_273} :catch_274
    .catchall {:try_start_266 .. :try_end_273} :catchall_29e

    .line 385
    goto :goto_275

    .line 383
    :catch_274
    move-exception v0

    .line 386
    :goto_275
    :try_start_275
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "jobPackage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    .line 388
    .local v2, "jobUserId":I
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 389
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 390
    .local v3, "usageStats":Landroid/app/usage/UsageStatsManagerInternal;
    iget-wide v4, v7, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/app/usage/UsageStatsManagerInternal;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 391
    iput-boolean v10, v7, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 392
    iput-object v1, v7, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 393
    iput-wide v12, v7, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    iput-boolean v1, v8, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 395
    monitor-exit v9

    const/4 v1, 0x1

    return v1

    .line 396
    .end local v0    # "jobPackage":Ljava/lang/String;
    .end local v2    # "jobUserId":I
    .end local v3    # "usageStats":Landroid/app/usage/UsageStatsManagerInternal;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "binding":Z
    .end local v18    # "whenDeferred":J
    .end local v20    # "isDeadlineExpired":Z
    .end local v25    # "triggeredUris":[Landroid/net/Uri;
    .end local v26    # "triggeredAuthorities":[Ljava/lang/String;
    .end local v27    # "ji":Landroid/app/job/JobInfo;
    :catchall_299
    move-exception v0

    move/from16 v11, p2

    :goto_29c
    monitor-exit v9
    :try_end_29d
    .catchall {:try_start_275 .. :try_end_29d} :catchall_29e

    throw v0

    :catchall_29e
    move-exception v0

    goto :goto_29c
.end method

.method getExecutionStartTimeElapsed()J
    .registers 3

    .line 458
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    return-wide v0
.end method

.method getId()I
    .registers 2

    .line 454
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method getPreferredUid()I
    .registers 2

    .line 446
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return v0
.end method

.method getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object v0
.end method

.method getRunningJobWorkType()I
    .registers 2

    .line 428
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    return v0
.end method

.method getTimeoutElapsed()J
    .registers 3

    .line 462
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-wide v0
.end method

.method isWithinExecutionGuaranteeTime()Z
    .registers 7

    .line 466
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 592
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v1, :cond_2a

    .line 594
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but no running job on this context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 596
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 597
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 598
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 600
    :cond_61
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but context is running a different job"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_83
    const/4 v1, 0x1

    const-string v2, "binding died"

    invoke-direct {p0, v1, v2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 604
    monitor-exit v0

    .line 605
    return-void

    .line 604
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 609
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v1, :cond_2a

    .line 611
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but no running job on this context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 613
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 614
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 615
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 617
    :cond_61
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but context is running a different job"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :goto_83
    const/4 v1, 0x0

    const-string/jumbo v2, "null binding"

    invoke-direct {p0, v1, v2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 623
    monitor-exit v0

    .line 624
    return-void

    .line 623
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 566
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 572
    .local v1, "runningJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_1d

    .line 577
    :cond_12
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 578
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->doServiceBoundLocked()V

    .line 579
    monitor-exit v0

    .line 580
    return-void

    .line 573
    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    const-string v3, "connected for different component"

    invoke-direct {p0, v2, v3}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 575
    monitor-exit v0

    return-void

    .line 579
    .end local v1    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 585
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    const/4 v1, 0x1

    :try_start_4
    const-string/jumbo v2, "unexpectedly disconnected"

    invoke-direct {p0, v1, v2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 587
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method timeoutIfExecutingLocked(Ljava/lang/String;IZILjava/lang/String;)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "matchJobId"    # Z
    .param p4, "jobId"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 473
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 474
    .local v0, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_35

    const/4 v1, -0x1

    if-eq p2, v1, :cond_f

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    if-ne p2, v1, :cond_35

    :cond_f
    if-eqz p1, :cond_1b

    .line 475
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_1b
    if-eqz p3, :cond_23

    .line 476
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v1

    if-ne p4, v1, :cond_35

    .line 477
    :cond_23
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    .line 478
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v2, p5}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 480
    const-string v1, "force timeout from shell"

    invoke-direct {p0, v1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 481
    const/4 v1, 0x1

    return v1

    .line 484
    :cond_35
    const/4 v1, 0x0

    return v1
.end method
