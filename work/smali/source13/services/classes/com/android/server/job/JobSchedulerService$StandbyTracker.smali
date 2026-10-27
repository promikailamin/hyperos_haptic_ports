.class final Lcom/android/server/job/JobSchedulerService$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 2880
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 2888
    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2892
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 2894
    .local v0, "uid":I
    if-gez v0, :cond_d

    .line 2896
    return-void

    .line 2899
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide v1

    .line 2900
    .local v1, "sinceLast":J
    const-wide/32 v3, 0xa4cb800

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    .line 2902
    const-wide/16 v1, 0x0

    .line 2904
    :cond_1e
    new-instance v3, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;

    invoke-direct {v3}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;-><init>()V

    move-object v9, v3

    .line 2905
    .local v9, "counter":Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2906
    :try_start_29
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, v0, v9}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 2907
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_5a

    .line 2908
    invoke-virtual {v9}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v3

    if-gtz v3, :cond_3d

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_59

    .line 2909
    :cond_3d
    const-class v3, Landroid/os/BatteryStatsInternal;

    .line 2910
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/os/BatteryStatsInternal;

    .line 2911
    .local v10, "mBatteryStatsInternal":Landroid/os/BatteryStatsInternal;
    invoke-virtual {v9}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v3

    invoke-virtual {v10, v0, v3, v1, v2}, Landroid/os/BatteryStatsInternal;->noteJobsDeferred(IIJ)V

    .line 2912
    const/16 v3, 0x55

    const/4 v5, 0x0

    .line 2914
    invoke-virtual {v9}, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->numDeferred()I

    move-result v6

    .line 2912
    move v4, v0

    move-wide v7, v1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V

    .line 2916
    .end local v10    # "mBatteryStatsInternal":Landroid/os/BatteryStatsInternal;
    :cond_59
    return-void

    .line 2907
    :catchall_5a
    move-exception v4

    :try_start_5b
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v4
.end method
