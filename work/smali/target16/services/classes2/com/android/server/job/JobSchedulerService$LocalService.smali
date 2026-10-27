.class public final Lcom/android/server/job/JobSchedulerService$LocalService;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/JobSchedulerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public static synthetic $r8$lambda$8dEW4zqTPOecQlZk_ZT8qUk48Xw(Ljava/lang/String;Ljava/util/List;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 4543
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_25

    .line 4544
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const-string p0, "android"

    .line 4545
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 4546
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 4536
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addBackingUpUid(I)V
    .registers 4

    .line 4562
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4566
    :try_start_5
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4567
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public cancelJobsForUid(IZIILjava/lang/String;)V
    .registers 6

    .line 4556
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZIILjava/lang/String;)Z

    return-void
.end method

.method public clearAllBackingUpUids()V
    .registers 3

    .line 4584
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4585
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_29

    .line 4586
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4587
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_2b

    .line 4589
    :cond_29
    :goto_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_27

    throw p0
.end method

.method public getCloudMediaProviderPackage(I)Ljava/lang/String;
    .registers 2

    .line 4594
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmCloudMediaProviderPackages(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .registers 3

    .line 4635
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4636
    :try_start_5
    new-instance v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>(Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;)V

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    .line 4637
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getSystemScheduledOwnJobs(Ljava/lang/String;)Ljava/util/List;
    .registers 5

    .line 4540
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4541
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4542
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/android/server/job/JobSchedulerService$LocalService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/JobStore;->forEachJob(ILjava/util/function/Consumer;)V

    .line 4549
    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception p0

    .line 4550
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public isAppConsideredBuggy(ILjava/lang/String;ILjava/lang/String;)Z
    .registers 7

    .line 4605
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmQuotaTracker(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/utils/quota/CountQuotaTracker;

    move-result-object v0

    const-string v1, "anr"

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmQuotaTracker(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/utils/quota/CountQuotaTracker;

    move-result-object v0

    const-string v1, ".schedulePersisted()"

    .line 4607
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmQuotaTracker(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/utils/quota/CountQuotaTracker;

    move-result-object p0

    const-string/jumbo p1, "timeout-total"

    .line 4609
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 p0, 0x0

    return p0

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    return p0
.end method

.method public isNotificationAssociatedWithAnyUserInitiatedJobs(IILjava/lang/String;)Z
    .registers 4

    if-nez p3, :cond_4

    const/4 p0, 0x0

    return p0

    .line 4619
    :cond_4
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobConcurrencyManager;->isNotificationAssociatedWithAnyUserInitiatedJobs(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isNotificationChannelAssociatedWithAnyUserInitiatedJobs(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 4

    if-eqz p3, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 4629
    :cond_5
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobConcurrencyManager;->isNotificationChannelAssociatedWithAnyUserInitiatedJobs(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public removeBackingUpUid(I)V
    .registers 4

    .line 4572
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4573
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4576
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result p1

    if-lez p1, :cond_27

    .line 4577
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_29

    .line 4579
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_25

    throw p0
.end method

.method public reportAppUsage(Ljava/lang/String;I)V
    .registers 3

    .line 4599
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->reportAppUsage(Ljava/lang/String;I)V

    return-void
.end method
