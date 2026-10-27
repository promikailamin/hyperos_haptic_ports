.class final Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MaybeReadyJobQueueFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field forceBatchedCount:I

.field final runnableJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;

.field unbatchedCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 2282
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    .line 2283
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    .line 2284
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 15
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2288
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 2289
    .local v0, "isRunning":Z
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_129

    .line 2290
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    .line 2291
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2290
    invoke-virtual {v1, v4, v5}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 2292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborting job "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2293
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -- package not allowed to start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2292
    const-string v3, "JobScheduler"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    if-eqz v0, :cond_6f

    .line 2295
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v3, 0x2

    const/16 v4, 0xb

    invoke-virtual {v1, v3, v4, v2, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2297
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_80

    .line 2298
    :cond_6f
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 2299
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1, p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mnoteJobNonPending(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V

    .line 2301
    :cond_80
    :goto_80
    return-void

    .line 2305
    :cond_81
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_8d

    .line 2307
    const/4 v1, 0x0

    .local v1, "shouldForceBatchJob":Z
    goto/16 :goto_102

    .line 2308
    .end local v1    # "shouldForceBatchJob":Z
    :cond_8d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v1

    if-ne v1, v3, :cond_96

    .line 2310
    const/4 v1, 0x1

    .restart local v1    # "shouldForceBatchJob":Z
    goto/16 :goto_102

    .line 2311
    .end local v1    # "shouldForceBatchJob":Z
    :cond_96
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v1

    if-eqz v1, :cond_be

    .line 2315
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v1, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    add-long/2addr v7, v9

    .line 2317
    .local v7, "relativelySoonCutoffTime":J
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPrefetchController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/PrefetchController;

    move-result-object v1

    .line 2318
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-lez v1, :cond_bc

    move v2, v6

    :cond_bc
    move v1, v2

    .line 2320
    .end local v7    # "relativelySoonCutoffTime":J
    .restart local v1    # "shouldForceBatchJob":Z
    goto :goto_102

    .end local v1    # "shouldForceBatchJob":Z
    :cond_be
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v1

    if-lez v1, :cond_c6

    .line 2321
    const/4 v1, 0x0

    .restart local v1    # "shouldForceBatchJob":Z
    goto :goto_102

    .line 2323
    .end local v1    # "shouldForceBatchJob":Z
    :cond_c6
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 2324
    .local v7, "nowElapsed":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFirstForceBatchedTimeElapsed()J

    move-result-wide v9

    cmp-long v1, v9, v4

    if-lez v1, :cond_e6

    .line 2325
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFirstForceBatchedTimeElapsed()J

    move-result-wide v9

    sub-long v9, v7, v9

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v11, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    cmp-long v1, v9, v11

    if-ltz v1, :cond_e6

    move v1, v6

    goto :goto_e7

    :cond_e6
    move v1, v2

    .line 2327
    .local v1, "batchDelayExpired":Z
    :goto_e7
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    if-le v3, v6, :cond_100

    .line 2329
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v3

    if-eqz v3, :cond_100

    .line 2330
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v3

    const/4 v9, 0x6

    if-eq v3, v9, :cond_100

    if-nez v1, :cond_100

    move v2, v6

    goto :goto_101

    :cond_100
    nop

    :goto_101
    move v1, v2

    .line 2334
    .end local v7    # "nowElapsed":J
    .local v1, "shouldForceBatchJob":Z
    :goto_102
    if-eqz v1, :cond_11b

    .line 2336
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    .line 2337
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFirstForceBatchedTimeElapsed()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_120

    .line 2338
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->setFirstForceBatchedTimeElapsed(J)V

    goto :goto_120

    .line 2341
    :cond_11b
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    .line 2343
    :cond_120
    :goto_120
    if-nez v0, :cond_127

    .line 2344
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2346
    .end local v1    # "shouldForceBatchJob":Z
    :cond_127
    goto/16 :goto_197

    .line 2347
    :cond_129
    if-eqz v0, :cond_17f

    .line 2350
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v1

    if-nez v1, :cond_147

    .line 2351
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v1

    if-ne v1, v3, :cond_143

    .line 2352
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_143

    .line 2353
    const/4 v1, 0x6

    .line 2355
    .local v1, "internalStopReason":I
    const-string v2, "cancelled due to restricted bucket"

    .local v2, "debugReason":Ljava/lang/String;
    goto :goto_173

    .line 2357
    .end local v1    # "internalStopReason":I
    .end local v2    # "debugReason":Ljava/lang/String;
    :cond_143
    const/4 v1, 0x1

    .line 2359
    .restart local v1    # "internalStopReason":I
    const-string v2, "cancelled due to unsatisfied constraints"

    .restart local v2    # "debugReason":Ljava/lang/String;
    goto :goto_173

    .line 2362
    .end local v1    # "internalStopReason":I
    .end local v2    # "debugReason":Ljava/lang/String;
    :cond_147
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v1

    .line 2363
    .local v1, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    if-eqz v1, :cond_16e

    .line 2364
    invoke-virtual {v1}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v2

    .line 2365
    .local v2, "internalStopReason":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restricted due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2366
    invoke-static {v2}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    move-object v2, v3

    .local v3, "debugReason":Ljava/lang/String;
    goto :goto_173

    .line 2369
    .end local v2    # "internalStopReason":I
    .end local v3    # "debugReason":Ljava/lang/String;
    :cond_16e
    const/4 v2, -0x1

    .line 2370
    .restart local v2    # "internalStopReason":I
    const-string v3, "couldn\'t figure out why the job should stop running"

    move v1, v2

    move-object v2, v3

    .line 2373
    .local v1, "internalStopReason":I
    .local v2, "debugReason":Ljava/lang/String;
    :goto_173
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v4

    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/android/server/job/JobConcurrencyManager;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z

    .end local v1    # "internalStopReason":I
    .end local v2    # "debugReason":Ljava/lang/String;
    goto :goto_191

    .line 2375
    :cond_17f
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_191

    .line 2376
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1, p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mnoteJobNonPending(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_192

    .line 2375
    :cond_191
    :goto_191
    nop

    .line 2378
    :goto_192
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2380
    :goto_197
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 2277
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method postProcessLocked()V
    .registers 4

    .line 2385
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    const-string v1, "JobScheduler"

    if-gtz v0, :cond_1c

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    if-lt v0, v2, :cond_11

    goto :goto_1c

    .line 2393
    :cond_11
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 2394
    const-string/jumbo v0, "maybeQueueReadyJobsForExecutionLocked: Not running anything."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 2387
    :cond_1c
    :goto_1c
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 2388
    const-string/jumbo v0, "maybeQueueReadyJobsForExecutionLocked: Running jobs."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_26
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsPending(Ljava/util/List;)V

    .line 2391
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/job/PendingJobQueue;->addAll(Ljava/util/List;)V

    .line 2399
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    .line 2400
    return-void
.end method

.method reset()V
    .registers 2

    .line 2404
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->forceBatchedCount:I

    .line 2405
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->unbatchedCount:I

    .line 2406
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2407
    return-void
.end method
