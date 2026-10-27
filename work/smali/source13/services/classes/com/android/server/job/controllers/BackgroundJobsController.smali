.class public final Lcom/android/server/job/controllers/BackgroundJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "BackgroundJobsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KNOWN_ACTIVE:I = 0x1

.field static final KNOWN_INACTIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Background"

.field static final UNKNOWN:I


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field private final mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

.field private final mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;


# direct methods
.method static bridge synthetic -$$Nest$mupdateAllJobRestrictionsLocked(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateAllJobRestrictionsLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateJobRestrictionsForUidLocked(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsForUidLocked(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 56
    const-string v1, "JobScheduler.Background"

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
    sput-boolean v0, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 66
    new-instance v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor-IA;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    .line 254
    new-instance v0, Lcom/android/server/job/controllers/BackgroundJobsController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 71
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 72
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 71
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 73
    const-class v1, Lcom/android/server/AppStateTracker;

    .line 74
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTracker;

    .line 73
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTrackerImpl;

    iput-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 75
    invoke-virtual {v1, v0}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 76
    return-void
.end method

.method private updateAllJobRestrictionsLocked()V
    .registers 3

    .line 170
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    .line 171
    return-void
.end method

.method private updateJobRestrictionsForUidLocked(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "isActive"    # Z

    .line 174
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    invoke-direct {p0, p1, v0}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    .line 175
    return-void
.end method

.method private updateJobRestrictionsLocked(II)V
    .registers 12
    .param p1, "filterUid"    # I
    .param p2, "newActiveState"    # I

    .line 178
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-virtual {v0, p2}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->prepare(I)V

    .line 180
    sget-boolean v0, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    goto :goto_11

    :cond_10
    move-wide v3, v1

    .line 182
    .local v3, "start":J
    :goto_11
    iget-object v5, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v5

    .line 183
    .local v5, "store":Lcom/android/server/job/JobStore;
    if-lez p1, :cond_1f

    .line 184
    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    goto :goto_24

    .line 186
    :cond_1f
    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-virtual {v5, v6}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 189
    :goto_24
    if-eqz v0, :cond_2b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    sub-long/2addr v1, v3

    .line 190
    .local v1, "time":J
    :cond_2b
    if-eqz v0, :cond_5c

    .line 191
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget v7, v7, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 193
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget v7, v7, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 194
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-wide/16 v7, 0x3e8

    div-long v7, v1, v7

    .line 195
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v0, v6

    .line 191
    const-string v6, "Job status updated: %d/%d checked/total jobs, %d us"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "JobScheduler.Background"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_5c
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_6f

    .line 200
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iget-object v6, v6, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-interface {v0, v6}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 202
    :cond_6f
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 5
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

    .line 100
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 101
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 103
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 129
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 135
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 137
    .local v4, "mToken":J
    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v6, p1, v2, v3}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 140
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v2

    new-instance v3, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, p4, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 165
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 167
    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 90
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 93
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    .line 95
    :cond_10
    return-void
.end method

.method synthetic lambda$dumpControllerStateLocked$0$com-android-server-job-controllers-BackgroundJobsController(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 104
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 105
    .local v0, "uid":I
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "sourcePkg":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 108
    const-string v2, " from "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 109
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 110
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, " active"

    goto :goto_25

    :cond_23
    const-string v2, " idle"

    :goto_25
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidPowerSaveExempt(I)Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 112
    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidTempPowerSaveExempt(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 113
    :cond_38
    const-string v2, ", exempted"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 115
    :cond_3d
    const-string v2, ": "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 118
    const-string v2, " [RUN_ANY_IN_BACKGROUND "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 120
    const-string v2, "allowed]"

    goto :goto_57

    :cond_55
    const-string v2, "disallowed]"

    .line 119
    :goto_57
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 122
    iget v2, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_67

    .line 124
    const-string v2, " RUNNABLE"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6c

    .line 126
    :cond_67
    const-string v2, " WAITING"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    :goto_6c
    return-void
.end method

.method synthetic lambda$dumpControllerStateLocked$1$com-android-server-job-controllers-BackgroundJobsController(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 141
    nop

    .line 142
    const-wide v0, 0x20b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 144
    .local v0, "jsToken":J
    const-wide v2, 0x10b00000001L

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 145
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 146
    .local v2, "sourceUid":I
    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 147
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "sourcePkg":Ljava/lang/String;
    const-wide v4, 0x10900000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 150
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v4

    const-wide v5, 0x10800000004L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 151
    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 152
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->isUidPowerSaveExempt(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 153
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->isUidTempPowerSaveExempt(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    goto :goto_4d

    :cond_4b
    move v4, v5

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v4, v6

    .line 151
    :goto_4e
    const-wide v7, 0x10800000005L

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 155
    const-wide v7, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 156
    invoke-virtual {v4, v2, v3}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v4

    .line 155
    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 158
    const-wide v7, 0x10800000007L

    iget v4, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v9, 0x400000

    and-int/2addr v4, v9

    if-eqz v4, :cond_71

    move v5, v6

    :cond_71
    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 162
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 163
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 80
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    .line 81
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 86
    return-void
.end method

.method updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z
    .registers 13
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsed"    # J
    .param p4, "activeState"    # I

    .line 206
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 207
    .local v0, "uid":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 210
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->canRunInBatterySaver()Z

    move-result v3

    .line 209
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AppStateTrackerImpl;->areJobsRestricted(ILjava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 213
    .local v2, "canRun":Z
    const/4 v4, 0x0

    if-nez p4, :cond_1e

    .line 214
    iget-object v5, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v5, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v5

    .local v5, "isActive":Z
    goto :goto_23

    .line 216
    .end local v5    # "isActive":Z
    :cond_1e
    if-ne p4, v3, :cond_22

    move v5, v3

    goto :goto_23

    :cond_22
    move v5, v4

    .line 218
    .restart local v5    # "isActive":Z
    :goto_23
    if-eqz v5, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2f

    .line 219
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->maybeLogBucketMismatch()V

    .line 221
    :cond_2f
    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 223
    invoke-virtual {v6}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v6

    if-nez v6, :cond_40

    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 224
    invoke-virtual {v6, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40

    goto :goto_41

    :cond_40
    move v3, v4

    .line 222
    :goto_41
    invoke-virtual {p1, p2, p3, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->setBackgroundNotRestrictedConstraintSatisfied(JZZ)Z

    move-result v3

    .line 225
    .local v3, "didChange":Z
    invoke-virtual {p1, v5}, Lcom/android/server/job/controllers/JobStatus;->setUidActive(Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 226
    return v3
.end method
