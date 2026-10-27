.class final Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2070
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2071
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2072
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .line 2076
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2077
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v1, :cond_d

    .line 2078
    monitor-exit v0

    return-void

    .line 2080
    :cond_d
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_13a

    goto/16 :goto_12f

    .line 2167
    :pswitch_18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2168
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_136

    .line 2169
    :try_start_21
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mupdateMediaBackupExemptionLocked(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;Ljava/lang/String;)V

    .line 2171
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_36

    .line 2172
    :try_start_31
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_136

    .line 2173
    goto/16 :goto_12f

    .line 2171
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_38
    throw v3

    .line 2112
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :pswitch_39
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_44

    .line 2113
    const-string v1, "JobScheduler"

    const-string v2, "MSG_CHECK_CHANGED_JOB_LIST"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :cond_44
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcheckChangedJobListLocked(Lcom/android/server/job/JobSchedulerService;)V

    .line 2116
    goto/16 :goto_12f

    .line 2152
    :pswitch_4b
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2153
    .local v1, "uid":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_53

    move v5, v4

    goto :goto_54

    :cond_53
    move v5, v3

    .line 2154
    .local v5, "disabled":Z
    :goto_54
    if-eqz v5, :cond_5d

    .line 2155
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v7, "app uid idle"

    invoke-virtual {v6, v1, v2, v4, v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIILjava/lang/String;)Z

    .line 2160
    :cond_5d
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_136

    .line 2161
    :try_start_62
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v4}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 2162
    monitor-exit v2

    .line 2163
    goto/16 :goto_12f

    .line 2162
    :catchall_6e
    move-exception v3

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_6e

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_70
    throw v3

    .line 2145
    .end local v1    # "uid":I
    .end local v5    # "disabled":Z
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :pswitch_71
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2146
    .restart local v1    # "uid":I
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_136

    .line 2147
    :try_start_78
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 2148
    monitor-exit v2

    .line 2149
    goto/16 :goto_12f

    .line 2148
    :catchall_84
    move-exception v3

    monitor-exit v2
    :try_end_86
    .catchall {:try_start_78 .. :try_end_86} :catchall_84

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_86
    throw v3

    .line 2130
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :pswitch_87
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2131
    .restart local v1    # "uid":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_8f

    move v5, v4

    goto :goto_90

    :cond_8f
    move v5, v3

    .line 2132
    .restart local v5    # "disabled":Z
    :goto_90
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v7, 0x13

    invoke-virtual {v6, v1, v7}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 2133
    if-eqz v5, :cond_a1

    .line 2134
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v7, "uid gone"

    invoke-virtual {v6, v1, v2, v4, v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIILjava/lang/String;)Z

    .line 2139
    :cond_a1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a6
    .catchall {:try_start_86 .. :try_end_a6} :catchall_136

    .line 2140
    :try_start_a6
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v4}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 2141
    monitor-exit v2

    .line 2142
    goto/16 :goto_12f

    .line 2141
    :catchall_b2
    move-exception v3

    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_b2

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_b4
    throw v3

    .line 2124
    .end local v1    # "uid":I
    .end local v5    # "disabled":Z
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :pswitch_b5
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2125
    .restart local v1    # "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2126
    .local v2, "procState":I
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 2127
    goto/16 :goto_12f

    .line 2106
    .end local v1    # "uid":I
    .end local v2    # "procState":I
    :pswitch_c0
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_cb

    .line 2107
    const-string v1, "JobScheduler"

    const-string v2, "MSG_CHECK_JOB_GREEDY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_cb
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    .line 2110
    goto :goto_12f

    .line 2118
    :pswitch_d1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    const/4 v4, 0x0

    iget v5, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    const-string v7, "app no longer allowed to run"

    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobImplLocked(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 2121
    goto :goto_12f

    .line 2094
    :pswitch_e2
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_ed

    .line 2095
    const-string v1, "JobScheduler"

    const-string v2, "MSG_CHECK_JOB"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_ed
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eqz v1, :cond_f9

    .line 2099
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_12f

    .line 2102
    :cond_f9
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mmaybeQueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    .line 2104
    goto :goto_12f

    .line 2082
    :pswitch_ff
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2083
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_127

    .line 2084
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 2085
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2086
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/job/PendingJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2088
    :cond_11d
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmChangedJobList(Lcom/android/server/job/JobSchedulerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_12e

    .line 2090
    :cond_127
    const-string v2, "JobScheduler"

    const-string v3, "Given null job to check individually"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_12e
    nop

    .line 2176
    :goto_12f
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 2177
    monitor-exit v0

    .line 2178
    return-void

    .line 2177
    :catchall_136
    move-exception v1

    monitor-exit v0
    :try_end_138
    .catchall {:try_start_b4 .. :try_end_138} :catchall_136

    throw v1

    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_ff
        :pswitch_e2
        :pswitch_d1
        :pswitch_c0
        :pswitch_b5
        :pswitch_87
        :pswitch_71
        :pswitch_4b
        :pswitch_39
        :pswitch_18
    .end packed-switch
.end method
