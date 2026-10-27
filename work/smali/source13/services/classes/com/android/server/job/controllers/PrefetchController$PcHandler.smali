.class Lcom/android/server/job/controllers/PrefetchController$PcHandler;
.super Landroid/os/Handler;
.source "PrefetchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/PrefetchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PcHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 452
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 453
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 454
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 458
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a4

    goto/16 :goto_a3

    .line 492
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 493
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v1, v0}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mmaybeUpdateConstraintForUid(Lcom/android/server/job/controllers/PrefetchController;I)V

    goto/16 :goto_a3

    .line 486
    .end local v0    # "uid":I
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 487
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-wide v4, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mprocessUpdatedEstimatedLaunchTime(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)V

    .line 488
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 489
    goto/16 :goto_a3

    .line 460
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_26
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 461
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 464
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v2}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/job/controllers/PrefetchController;)Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v2

    .line 465
    invoke-virtual {v2, v1, v0}, Landroid/app/usage/UsageStatsManagerInternal;->getEstimatedPackageLaunchTime(Ljava/lang/String;I)J

    move-result-wide v2

    .line 466
    .local v2, "nextEstimatedLaunchTime":J
    invoke-static {}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 467
    const-string v4, "JobScheduler.Prefetch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieved launch time for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 468
    invoke-static {v0, v1}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 471
    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    sub-long v6, v2, v6

    .line 470
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from now)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 467
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_7e
    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget-object v4, v4, Lcom/android/server/job/controllers/PrefetchController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 475
    :try_start_83
    iget-object v5, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v5}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmEstimatedLaunchTimes(Lcom/android/server/job/controllers/PrefetchController;)Landroid/util/SparseArrayMap;

    move-result-object v5

    .line 476
    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 477
    .local v5, "curEstimatedLaunchTime":Ljava/lang/Long;
    if-eqz v5, :cond_99

    .line 478
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_9e

    .line 479
    :cond_99
    iget-object v6, p0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v6, v0, v1, v2, v3}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$mprocessUpdatedEstimatedLaunchTime(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)V

    .line 482
    .end local v5    # "curEstimatedLaunchTime":Ljava/lang/Long;
    :cond_9e
    monitor-exit v4

    .line 483
    goto :goto_a3

    .line 482
    :catchall_a0
    move-exception v5

    monitor-exit v4
    :try_end_a2
    .catchall {:try_start_83 .. :try_end_a2} :catchall_a0

    throw v5

    .line 496
    .end local v0    # "userId":I
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "nextEstimatedLaunchTime":J
    :goto_a3
    return-void

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_26
        :pswitch_10
        :pswitch_7
    .end packed-switch
.end method
