.class public final Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .registers 3

    .line 3410
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 3411
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 3416
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3417
    :try_start_5
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v0, v2, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v0, :cond_11

    .line 3418
    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1b5

    .line 3420
    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_1b8

    goto/16 :goto_1ae

    .line 3549
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3550
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/JobServiceContext;

    .line 3551
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 3552
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUserVisibleJobSummary()Landroid/app/job/UserVisibleJobSummary;

    move-result-object v0

    .line 3553
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v2, v3, :cond_2f

    move v8, v3

    .line 3554
    :cond_2f
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUserVisibleJobObservers(Lcom/android/server/job/JobSchedulerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_d

    sub-int/2addr v2, v3

    :goto_3a
    if-ltz v2, :cond_4e

    .line 3556
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUserVisibleJobObservers(Lcom/android/server/job/JobSchedulerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/job/IUserVisibleJobObserver;

    .line 3557
    invoke-interface {v3, v0, v8}, Landroid/app/job/IUserVisibleJobObserver;->onUserVisibleJobStateChanged(Landroid/app/job/UserVisibleJobSummary;Z)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4b} :catch_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_d

    :catch_4b
    add-int/lit8 v2, v2, -0x1

    goto :goto_3a

    .line 3563
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUserVisibleJobObservers(Lcom/android/server/job/JobSchedulerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3564
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_1ae

    .line 3523
    :pswitch_5c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/job/IUserVisibleJobObserver;

    .line 3525
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_d

    .line 3526
    :try_start_63
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_6e
    if-ltz v0, :cond_96

    .line 3528
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object v4, v4, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 3529
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobServiceContext;

    .line 3530
    invoke-virtual {v4}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    if-eqz v4, :cond_93

    .line 3531
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result v5
    :try_end_86
    .catchall {:try_start_63 .. :try_end_86} :catchall_90

    if-eqz v5, :cond_93

    .line 3534
    :try_start_88
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUserVisibleJobSummary()Landroid/app/job/UserVisibleJobSummary;

    move-result-object v4

    .line 3533
    invoke-interface {p1, v4, v3}, Landroid/app/job/IUserVisibleJobObserver;->onUserVisibleJobStateChanged(Landroid/app/job/UserVisibleJobSummary;Z)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_8f} :catch_96
    .catchall {:try_start_88 .. :try_end_8f} :catchall_90

    goto :goto_93

    :catchall_90
    move-exception v0

    move-object p0, v0

    goto :goto_99

    :cond_93
    :goto_93
    add-int/lit8 v0, v0, -0x1

    goto :goto_6e

    .line 3544
    :catch_96
    :cond_96
    :try_start_96
    monitor-exit v2

    goto/16 :goto_1ae

    :goto_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_90

    :try_start_9a
    throw p0

    .line 3513
    :pswitch_9b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3514
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_d

    .line 3515
    :try_start_a2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mupdateMediaBackupExemptionLocked(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;Ljava/lang/String;)V

    .line 3517
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_a2 .. :try_end_b2} :catchall_b7

    .line 3518
    :try_start_b2
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_d

    goto/16 :goto_1ae

    :catchall_b7
    move-exception v0

    move-object p0, v0

    .line 3517
    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b7

    :try_start_ba
    throw p0

    .line 3452
    :pswitch_bb
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_c6

    .line 3453
    const-string p1, "JobScheduler"

    const-string v0, "MSG_CHECK_CHANGED_JOB_LIST"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    :cond_c6
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcheckChangedJobListLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto/16 :goto_1ae

    .line 3497
    :pswitch_cd
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3498
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_dc

    .line 3500
    const-string v7, "app uid idle"

    const/4 v4, 0x1

    const/16 v5, 0xb

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZIILjava/lang/String;)Z

    .line 3506
    :cond_dc
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_e1
    .catchall {:try_start_ba .. :try_end_e1} :catchall_d

    .line 3507
    :try_start_e1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v0

    invoke-virtual {v0, v3, v8}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 3508
    monitor-exit p1

    goto/16 :goto_1ae

    :catchall_ed
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_f0
    .catchall {:try_start_e1 .. :try_end_f0} :catchall_ed

    :try_start_f0
    throw p0

    .line 3490
    :pswitch_f1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3491
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f6
    .catchall {:try_start_f0 .. :try_end_f6} :catchall_d

    .line 3492
    :try_start_f6
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 3493
    monitor-exit v2

    goto/16 :goto_1ae

    :catchall_102
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_105
    .catchall {:try_start_f6 .. :try_end_105} :catchall_102

    :try_start_105
    throw p0

    :pswitch_106
    move v0, v3

    .line 3473
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3474
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_10e

    goto :goto_10f

    :cond_10e
    move v0, v8

    :goto_10f
    const/16 p1, 0x13

    .line 3475
    invoke-virtual {v2, v3, p1, v8}, Lcom/android/server/job/JobSchedulerService;->updateUidState(III)V

    if-eqz v0, :cond_122

    .line 3478
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v7, "uid gone"

    const/4 v4, 0x1

    const/16 v5, 0xb

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZIILjava/lang/String;)Z

    .line 3484
    :cond_122
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_127
    .catchall {:try_start_105 .. :try_end_127} :catchall_d

    .line 3485
    :try_start_127
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v0

    invoke-virtual {v0, v3, v8}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 3486
    monitor-exit p1

    goto/16 :goto_1ae

    :catchall_133
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_136
    .catchall {:try_start_127 .. :try_end_136} :catchall_133

    :try_start_136
    throw p0

    .line 3464
    :pswitch_137
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3465
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3466
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3467
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 3468
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/job/JobSchedulerService;->updateUidState(III)V

    .line 3469
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_1ae

    .line 3446
    :pswitch_148
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_153

    .line 3447
    const-string p1, "JobScheduler"

    const-string v0, "MSG_CHECK_JOB_GREEDY"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    :cond_153
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_1ae

    .line 3458
    :pswitch_159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    iget v5, p1, Landroid/os/Message;->arg1:I

    const-string v7, "app no longer allowed to run"

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobImplLocked(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_1ae

    .line 3434
    :pswitch_168
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_173

    .line 3435
    const-string p1, "JobScheduler"

    const-string v0, "MSG_CHECK_JOB"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    :cond_173
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v0, p1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eqz v0, :cond_17d

    .line 3439
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_1ae

    .line 3442
    :cond_17d
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mmaybeQueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_1ae

    .line 3422
    :pswitch_181
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    if-eqz p1, :cond_1a7

    .line 3424
    invoke-virtual {v2, p1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 3425
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 3426
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 3428
    :cond_19d
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmChangedJobList(Lcom/android/server/job/JobSchedulerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1ae

    .line 3430
    :cond_1a7
    const-string p1, "JobScheduler"

    const-string v0, "Given null job to check individually"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    :goto_1ae
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 3569
    monitor-exit v1

    return-void

    :goto_1b5
    monitor-exit v1
    :try_end_1b6
    .catchall {:try_start_136 .. :try_end_1b6} :catchall_d

    throw p0

    nop

    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_181
        :pswitch_168
        :pswitch_159
        :pswitch_148
        :pswitch_137
        :pswitch_106
        :pswitch_f1
        :pswitch_cd
        :pswitch_bb
        :pswitch_9b
        :pswitch_5c
        :pswitch_1a
    .end packed-switch
.end method
