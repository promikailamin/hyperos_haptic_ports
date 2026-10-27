.class public abstract Lcom/android/server/job/controllers/StateController;
.super Ljava/lang/Object;
.source "StateController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.SC"


# instance fields
.field protected final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field protected final mContext:Landroid/content/Context;

.field protected final mLock:Ljava/lang/Object;

.field protected final mService:Lcom/android/server/job/JobSchedulerService;

.field protected final mStateChangedListener:Lcom/android/server/job/StateChangedListener;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 51
    iput-object p1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    .line 52
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getConstants()Lcom/android/server/job/JobSchedulerService$Constants;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 55
    return-void
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .registers 2
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 175
    return-void
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 179
    return-void
.end method

.method public abstract dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 5
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

    .line 171
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 126
    return-void
.end method

.method public abstract maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
.end method

.method public abstract maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 111
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .registers 1

    .line 140
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .registers 1

    .line 107
    return-void
.end method

.method public onSystemServicesReady()V
    .registers 1

    .line 62
    return-void
.end method

.method public onUidBiasChangedLocked(III)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "prevBias"    # I
    .param p3, "newBias"    # I

    .line 148
    return-void
.end method

.method public onUserAddedLocked(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 115
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 119
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 76
    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .registers 1

    .line 97
    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 3
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .param p2, "key"    # Ljava/lang/String;

    .line 101
    return-void
.end method

.method public reevaluateStateLocked(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 133
    return-void
.end method

.method public rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "newJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .line 94
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 82
    return-void
.end method

.method protected wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "constraint"    # I

    .line 152
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->wouldBeReadyWithConstraint(I)Z

    move-result v0

    .line 153
    .local v0, "jobWouldBeReady":Z
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_39

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wouldBeReadyWithConstraintLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " constraint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " readyWithConstraint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.SC"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_39
    if-nez v0, :cond_3d

    .line 160
    const/4 v1, 0x0

    return v1

    .line 165
    :cond_3d
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService;->areComponentsInPlaceLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    return v1
.end method
