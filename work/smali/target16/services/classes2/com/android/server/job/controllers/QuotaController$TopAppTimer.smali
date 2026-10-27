.class public final Lcom/android/server/job/controllers/QuotaController$TopAppTimer;
.super Ljava/lang/Object;
.source "QuotaController.java"


# instance fields
.field public final mActivities:Landroid/util/SparseArray;

.field public final mPkg:Landroid/content/pm/UserPackage;

.field public mStartTimeElapsed:J

.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .registers 4

    .line 2429
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2426
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 2430
    invoke-static {p2, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    return-void
.end method


# virtual methods
.method public final calculateTimeChunks(J)I
    .registers 6

    .line 2434
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    sub-long/2addr p1, v0

    .line 2435
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v0

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 2436
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v1

    rem-long/2addr p1, v1

    const-wide/16 v1, 0x3e8

    cmp-long p0, p1, v1

    if-ltz p0, :cond_1b

    add-int/lit8 v0, v0, 0x1

    :cond_1b
    return v0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 2488
    const-string v0, "TopAppTimer{"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 2490
    const-string/jumbo v0, "} "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2492
    const-string/jumbo v0, "started at "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2493
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2494
    const-string v0, " ("

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2495
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2496
    const-string/jumbo v0, "ms ago)"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3e

    .line 2498
    :cond_39
    const-string v0, "NOT active"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2500
    :goto_3e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2501
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 2502
    :goto_45
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 2503
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 2504
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 2506
    :cond_5f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getPendingReward(J)J
    .registers 5

    .line 2445
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->calculateTimeChunks(J)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public isActive()Z
    .registers 2

    .line 2482
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2483
    :try_start_5
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 2484
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public processEventLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 11

    .line 2449
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 2450
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_96

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1a

    goto/16 :goto_95

    .line 2460
    :cond_1a
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 2461
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    if-eqz p1, :cond_95

    .line 2462
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_95

    .line 2463
    invoke-virtual {p0, v4, v5}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->getPendingReward(J)J

    move-result-wide v7

    .line 2464
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 2465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Crediting "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2466
    invoke-virtual {p0, v4, v5}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->calculateTimeChunks(J)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " time chunks"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2465
    const-string v0, "JobScheduler.Quota"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    :cond_6a
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    iget v1, v0, Landroid/content/pm/UserPackage;->userId:I

    iget-object v0, v0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 2469
    invoke-virtual {p1, v1, v0}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v6

    .line 2470
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    iget v2, p1, Landroid/content/pm/UserPackage;->userId:I

    iget-object v3, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mtransactQuotaLocked(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 2472
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, p1, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    iget v1, p0, Landroid/content/pm/UserPackage;->userId:I

    iget-object p0, p0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 2473
    invoke-static {p1, v4, v5, v1, p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 2472
    invoke-interface {v0, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_95
    :goto_95
    return-void

    .line 2452
    :cond_96
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a0

    .line 2453
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    .line 2455
    :cond_a0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
