.class public final Lcom/android/server/job/JobSchedulerService$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "JobSchedulerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 4644
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 6

    .line 0
    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 12

    .line 4656
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    if-gez v4, :cond_d

    goto :goto_3c

    .line 4663
    :cond_d
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide p1

    const-wide/32 v0, 0xa4cb800

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_1e

    move-wide v7, v1

    goto :goto_1f

    :cond_1e
    move-wide v7, p1

    .line 4668
    :goto_1f
    new-instance p1, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;

    invoke-direct {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;-><init>()V

    .line 4669
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 4670
    :try_start_29
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, v4, p1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 4671
    monitor-exit p2
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_55

    .line 4672
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result p2

    if-gtz p2, :cond_3d

    cmp-long p2, v7, v1

    if-lez p2, :cond_3c

    goto :goto_3d

    :cond_3c
    :goto_3c
    return-void

    .line 4673
    :cond_3d
    :goto_3d
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmBatteryStatsInternal(Lcom/android/server/job/JobSchedulerService;)Landroid/os/BatteryStatsInternal;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result p2

    invoke-virtual {p0, v4, p2, v7, v8}, Landroid/os/BatteryStatsInternal;->noteJobsDeferred(IIJ)V

    const/4 v5, 0x0

    .line 4676
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v6

    const/16 v3, 0x55

    .line 4674
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V

    return-void

    :catchall_55
    move-exception v0

    move-object p0, v0

    .line 4671
    :try_start_57
    monitor-exit p2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_55

    throw p0
.end method
