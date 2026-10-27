.class Lcom/android/server/job/controllers/QuotaController$QcHandler;
.super Landroid/os/Handler;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2651
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2652
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2653
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 2657
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2658
    :try_start_9
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_492

    goto/16 :goto_48c

    .line 2842
    :pswitch_13
    iget v0, v2, Landroid/os/Message;->arg1:I

    move v4, v0

    .line 2843
    .local v4, "uid":I
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_48e

    .line 2844
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_ef

    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_35

    goto/16 :goto_ef

    .line 2852
    :cond_35
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 2853
    .local v8, "nowElapsed":J
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-ltz v0, :cond_ce

    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v0

    .line 2854
    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-gez v0, :cond_59

    goto/16 :goto_ce

    .line 2861
    :cond_59
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 2862
    const-string v0, "JobScheduler.Quota"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is now out of grace period"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :cond_77
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->delete(I)V

    .line 2865
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->delete(I)V

    .line 2866
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v4}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 2867
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_cb

    .line 2868
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2869
    .local v10, "userId":I
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v11

    sub-int/2addr v11, v6

    .local v11, "i":I
    :goto_9c
    if-ltz v11, :cond_b8

    .line 2870
    iget-object v6, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v6

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v10, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 2871
    .local v6, "t":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v6, :cond_b5

    .line 2872
    invoke-virtual {v6, v8, v9, v5}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 2869
    .end local v6    # "t":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_b5
    add-int/lit8 v11, v11, -0x1

    goto :goto_9c

    .line 2875
    .end local v11    # "i":I
    :cond_b8
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2876
    invoke-static {v5, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    move-result-object v5

    .line 2877
    .local v5, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_cb

    .line 2878
    iget-object v6, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v6, v6, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v6, v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 2881
    .end local v0    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v8    # "nowElapsed":J
    .end local v10    # "userId":I
    :cond_cb
    monitor-exit v7

    .line 2883
    goto/16 :goto_48c

    .line 2856
    .restart local v8    # "nowElapsed":J
    :cond_ce
    :goto_ce
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 2857
    const-string v0, "JobScheduler.Quota"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is still in grace period"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :cond_ec
    monitor-exit v7

    goto/16 :goto_48c

    .line 2847
    .end local v8    # "nowElapsed":J
    :cond_ef
    :goto_ef
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 2848
    const-string v0, "JobScheduler.Quota"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is still allowed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    :cond_10d
    monitor-exit v7

    goto/16 :goto_48c

    .line 2881
    :catchall_110
    move-exception v0

    monitor-exit v7
    :try_end_112
    .catchall {:try_start_1b .. :try_end_112} :catchall_110

    .end local p0    # "this":Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_112
    throw v0

    .line 2802
    .end local v4    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_113
    iget v0, v2, Landroid/os/Message;->arg1:I

    move v4, v0

    .line 2803
    .local v4, "userId":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    move-object v5, v0

    .line 2804
    .local v5, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v5}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 2805
    .local v6, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 2806
    const-string v0, "JobScheduler.Quota"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2807
    invoke-static {v4, v6}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2806
    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_150
    invoke-virtual {v5}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_4a4

    goto :goto_198

    .line 2834
    :sswitch_158
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardNotificationSeenMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    invoke-static {v0, v4, v6, v7, v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V

    goto :goto_198

    .line 2828
    :sswitch_162
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardInteractionMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    invoke-static {v0, v4, v6, v7, v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V

    .line 2830
    goto :goto_198

    .line 2814
    :sswitch_16c
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_171
    .catchall {:try_start_112 .. :try_end_171} :catchall_48e

    .line 2815
    :try_start_171
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppTrackers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 2816
    .local v0, "timer":Lcom/android/server/job/controllers/QuotaController$TopAppTimer;
    if-nez v0, :cond_190

    .line 2817
    new-instance v8, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {v8, v9, v4, v6}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;-><init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    move-object v0, v8

    .line 2818
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppTrackers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v8

    invoke-virtual {v8, v4, v6, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2820
    :cond_190
    invoke-virtual {v0, v5}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->processEventLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 2821
    .end local v0    # "timer":Lcom/android/server/job/controllers/QuotaController$TopAppTimer;
    monitor-exit v7

    .line 2822
    goto :goto_198

    .line 2821
    :catchall_195
    move-exception v0

    monitor-exit v7
    :try_end_197
    .catchall {:try_start_171 .. :try_end_197} :catchall_195

    .end local p0    # "this":Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_197
    throw v0

    .line 2839
    .restart local p0    # "this":Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :goto_198
    goto/16 :goto_48c

    .line 2689
    .end local v4    # "userId":I
    .end local v5    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v6    # "pkgName":Ljava/lang/String;
    :pswitch_19a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/controllers/Package;

    .line 2690
    .local v0, "pkg":Lcom/android/server/job/controllers/Package;
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_1c2

    .line 2691
    const-string v5, "JobScheduler.Quota"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking if "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has reached its EJ quota."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    :cond_1c2
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v6, v0, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v7, v0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v5

    .line 2696
    .local v5, "timeRemainingMs":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_209

    .line 2697
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_1f0

    const-string v4, "JobScheduler.Quota"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has reached its EJ quota."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    :cond_1f0
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v4, v4, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2700
    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    iget v10, v0, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v11, v0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    .line 2699
    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v7

    .line 2698
    invoke-interface {v4, v7}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto/16 :goto_48c

    .line 2706
    :cond_209
    invoke-virtual {v1, v4, v0}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2707
    .local v4, "rescheduleMsg":Landroid/os/Message;
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v8, v0, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v9, v0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v7

    move-wide v5, v7

    .line 2709
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_241

    .line 2710
    const-string v7, "JobScheduler.Quota"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms left for EJ"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_241
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2714
    nop

    .end local v4    # "rescheduleMsg":Landroid/os/Message;
    goto/16 :goto_48c

    .line 2736
    .end local v0    # "pkg":Lcom/android/server/job/controllers/Package;
    .end local v5    # "timeRemainingMs":J
    :pswitch_247
    iget v0, v2, Landroid/os/Message;->arg1:I

    move v7, v0

    .line 2737
    .local v7, "uid":I
    iget v0, v2, Landroid/os/Message;->arg2:I

    move v8, v0

    .line 2738
    .local v8, "procState":I
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v9, v0

    .line 2739
    .local v9, "userId":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 2741
    .local v10, "nowElapsed":J
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_25d
    .catchall {:try_start_197 .. :try_end_25d} :catchall_48e

    .line 2743
    const/4 v0, 0x2

    if-gt v8, v0, :cond_293

    .line 2744
    :try_start_260
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2745
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/util/SparseLongArray;->delete(I)V

    .line 2746
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_281

    .line 2749
    monitor-exit v12

    goto/16 :goto_48c

    .line 2751
    :cond_281
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2752
    const/4 v0, 0x1

    move/from16 v16, v7

    .local v0, "isQuotaFree":Z
    goto/16 :goto_30a

    .line 2798
    .end local v0    # "isQuotaFree":Z
    :catchall_28f
    move-exception v0

    move v5, v7

    goto/16 :goto_388

    .line 2755
    :cond_293
    if-gt v8, v4, :cond_2b4

    .line 2756
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_2a3

    move v0, v6

    goto :goto_2a4

    :cond_2a3
    move v0, v5

    .line 2757
    .local v0, "reprocess":Z
    :goto_2a4
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_2ad
    .catchall {:try_start_260 .. :try_end_2ad} :catchall_28f

    .line 2758
    const/4 v4, 0x1

    move/from16 v17, v4

    move v4, v0

    move/from16 v0, v17

    .local v4, "isQuotaFree":Z
    goto :goto_2c4

    .line 2760
    .end local v0    # "reprocess":Z
    .end local v4    # "isQuotaFree":Z
    :cond_2b4
    const/4 v0, 0x1

    .line 2761
    .restart local v0    # "reprocess":Z
    :try_start_2b5
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2762
    const/4 v4, 0x0

    move/from16 v17, v4

    move v4, v0

    move/from16 v0, v17

    .line 2764
    .local v0, "isQuotaFree":Z
    .local v4, "reprocess":Z
    :goto_2c4
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13
    :try_end_2ce
    .catchall {:try_start_2b5 .. :try_end_2ce} :catchall_386

    if-eqz v13, :cond_2fe

    .line 2765
    :try_start_2d0
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    add-long/2addr v13, v10

    .line 2766
    .local v13, "endElapsed":J
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2767
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v15

    invoke-virtual {v15, v7, v13, v14}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2768
    const/4 v15, 0x6

    invoke-virtual {v1, v15, v7, v5}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;
    :try_end_2f0
    .catchall {:try_start_2d0 .. :try_end_2f0} :catchall_2fa

    move/from16 v16, v7

    .end local v7    # "uid":I
    .local v16, "uid":I
    :try_start_2f2
    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_300

    .line 2798
    .end local v0    # "isQuotaFree":Z
    .end local v4    # "reprocess":Z
    .end local v13    # "endElapsed":J
    .end local v16    # "uid":I
    .restart local v7    # "uid":I
    :catchall_2fa
    move-exception v0

    move v5, v7

    .end local v7    # "uid":I
    .restart local v16    # "uid":I
    goto/16 :goto_388

    .line 2764
    .end local v16    # "uid":I
    .restart local v0    # "isQuotaFree":Z
    .restart local v4    # "reprocess":Z
    .restart local v7    # "uid":I
    :cond_2fe
    move/from16 v16, v7

    .line 2771
    .end local v7    # "uid":I
    .restart local v16    # "uid":I
    :goto_300
    if-nez v4, :cond_30a

    .line 2772
    monitor-exit v12
    :try_end_303
    .catchall {:try_start_2f2 .. :try_end_303} :catchall_305

    goto/16 :goto_48c

    .line 2798
    .end local v0    # "isQuotaFree":Z
    .end local v4    # "reprocess":Z
    :catchall_305
    move-exception v0

    move/from16 v5, v16

    goto/16 :goto_388

    .line 2776
    .restart local v0    # "isQuotaFree":Z
    :cond_30a
    :goto_30a
    :try_start_30a
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v4
    :try_end_314
    .catchall {:try_start_30a .. :try_end_314} :catchall_382

    if-gez v4, :cond_326

    :try_start_316
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v4

    .line 2777
    invoke-virtual {v4, v9}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v4
    :try_end_320
    .catchall {:try_start_316 .. :try_end_320} :catchall_305

    if-ltz v4, :cond_323

    goto :goto_326

    :cond_323
    move/from16 v5, v16

    goto :goto_36c

    .line 2778
    :cond_326
    :goto_326
    :try_start_326
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v4, v4, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;
    :try_end_32a
    .catchall {:try_start_326 .. :try_end_32a} :catchall_382

    .line 2779
    move/from16 v5, v16

    .end local v16    # "uid":I
    .local v5, "uid":I
    :try_start_32c
    invoke-virtual {v4, v5}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v4

    .line 2780
    .local v4, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v4, :cond_36c

    .line 2781
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_338
    if-ltz v6, :cond_36c

    .line 2782
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v7

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v9, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 2783
    .local v7, "t":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v7, :cond_351

    .line 2784
    invoke-virtual {v7, v10, v11, v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 2786
    :cond_351
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v13

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v9, v14}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/controllers/QuotaController$Timer;

    move-object v7, v13

    .line 2787
    if-eqz v7, :cond_369

    .line 2788
    invoke-virtual {v7, v10, v11, v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 2781
    .end local v7    # "t":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_369
    add-int/lit8 v6, v6, -0x1

    goto :goto_338

    .line 2793
    .end local v4    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "i":I
    :cond_36c
    :goto_36c
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2794
    invoke-static {v4, v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    move-result-object v4

    .line 2795
    .local v4, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_37f

    .line 2796
    iget-object v6, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v6, v6, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v6, v4}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 2798
    .end local v0    # "isQuotaFree":Z
    .end local v4    # "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_37f
    monitor-exit v12

    .line 2799
    goto/16 :goto_48c

    .line 2798
    .end local v5    # "uid":I
    .restart local v16    # "uid":I
    :catchall_382
    move-exception v0

    move/from16 v5, v16

    .end local v16    # "uid":I
    .restart local v5    # "uid":I
    goto :goto_388

    .end local v5    # "uid":I
    .local v7, "uid":I
    :catchall_386
    move-exception v0

    move v5, v7

    .end local v7    # "uid":I
    .restart local v5    # "uid":I
    :goto_388
    monitor-exit v12
    :try_end_389
    .catchall {:try_start_32c .. :try_end_389} :catchall_38a

    .end local p0    # "this":Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_389
    throw v0

    .restart local p0    # "this":Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_38a
    move-exception v0

    goto :goto_388

    .line 2725
    .end local v5    # "uid":I
    .end local v8    # "procState":I
    .end local v9    # "userId":I
    .end local v10    # "nowElapsed":J
    :pswitch_38c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2726
    .local v0, "packageName":Ljava/lang/String;
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 2727
    .local v4, "userId":I
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_3b4

    .line 2728
    const-string v5, "JobScheduler.Quota"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v0}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    :cond_3b4
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object v6, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2731
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    invoke-static {v6, v7, v8, v4, v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v6

    .line 2730
    invoke-interface {v5, v6}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 2733
    goto/16 :goto_48c

    .line 2717
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v4    # "userId":I
    :pswitch_3c9
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_3d6

    .line 2718
    const-string v0, "JobScheduler.Quota"

    const-string v4, "Cleaning up timing sessions."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    :cond_3d6
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController;->deleteObsoleteSessionsLocked()V

    .line 2721
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 2723
    goto/16 :goto_48c

    .line 2660
    :pswitch_3e2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/controllers/Package;

    .line 2661
    .local v0, "pkg":Lcom/android/server/job/controllers/Package;
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_40a

    .line 2662
    const-string v4, "JobScheduler.Quota"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking if "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has reached its quota."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_40a
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v6, v0, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v7, v0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v6

    .line 2667
    .local v6, "timeRemainingMs":J
    const-wide/16 v8, 0x32

    cmp-long v4, v6, v8

    if-gtz v4, :cond_450

    .line 2669
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_438

    const-string v4, "JobScheduler.Quota"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " has reached its quota."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_438
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v4, v4, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2672
    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    iget v10, v0, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v11, v0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    .line 2671
    invoke-static {v5, v8, v9, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    .line 2670
    invoke-interface {v4, v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto :goto_48c

    .line 2678
    :cond_450
    invoke-virtual {v1, v5, v0}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2679
    .local v4, "rescheduleMsg":Landroid/os/Message;
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v8, v0, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v9, v0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v8

    move-wide v5, v8

    .line 2681
    .end local v6    # "timeRemainingMs":J
    .local v5, "timeRemainingMs":J
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_488

    .line 2682
    const-string v7, "JobScheduler.Quota"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms left."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    :cond_488
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2686
    nop

    .line 2886
    .end local v0    # "pkg":Lcom/android/server/job/controllers/Package;
    .end local v4    # "rescheduleMsg":Landroid/os/Message;
    .end local v5    # "timeRemainingMs":J
    :goto_48c
    monitor-exit v3

    .line 2887
    return-void

    .line 2886
    :catchall_48e
    move-exception v0

    monitor-exit v3
    :try_end_490
    .catchall {:try_start_389 .. :try_end_490} :catchall_48e

    throw v0

    nop

    :pswitch_data_492
    .packed-switch 0x0
        :pswitch_3e2
        :pswitch_3c9
        :pswitch_38c
        :pswitch_247
        :pswitch_19a
        :pswitch_113
        :pswitch_13
    .end packed-switch

    :sswitch_data_4a4
    .sparse-switch
        0x1 -> :sswitch_16c
        0x2 -> :sswitch_16c
        0x7 -> :sswitch_162
        0x9 -> :sswitch_162
        0xa -> :sswitch_158
        0xc -> :sswitch_162
        0x17 -> :sswitch_16c
        0x18 -> :sswitch_16c
    .end sparse-switch
.end method
