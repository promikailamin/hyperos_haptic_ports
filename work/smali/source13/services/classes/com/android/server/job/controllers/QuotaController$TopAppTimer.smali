.class final Lcom/android/server/job/controllers/QuotaController$TopAppTimer;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TopAppTimer"
.end annotation


# instance fields
.field private final mActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkg:Lcom/android/server/job/controllers/Package;

.field private mStartTimeElapsed:J

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .registers 4
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2376
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2373
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 2377
    new-instance p1, Lcom/android/server/job/controllers/Package;

    invoke-direct {p1, p2, p3}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Lcom/android/server/job/controllers/Package;

    .line 2378
    return-void
.end method

.method private calculateTimeChunks(J)I
    .registers 10
    .param p1, "nowElapsed"    # J

    .line 2381
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    sub-long v0, p1, v0

    .line 2382
    .local v0, "totalTopTimeMs":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    div-long v2, v0, v2

    long-to-int v2, v2

    .line 2383
    .local v2, "numTimeChunks":I
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    rem-long v3, v0, v3

    .line 2384
    .local v3, "remainderMs":J
    const-wide/16 v5, 0x3e8

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1d

    .line 2386
    add-int/lit8 v2, v2, 0x1

    .line 2388
    :cond_1d
    return v2
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 2435
    const-string v0, "TopAppTimer{"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2436
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Lcom/android/server/job/controllers/Package;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 2437
    const-string/jumbo v0, "} "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2439
    const-string/jumbo v0, "started at "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2440
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2441
    const-string v0, " ("

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2442
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2443
    const-string/jumbo v0, "ms ago)"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3e

    .line 2445
    :cond_39
    const-string v0, "NOT active"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2447
    :goto_3e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2448
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_45
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 2450
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 2451
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2449
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 2453
    .end local v0    # "i":I
    :cond_5f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2454
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2457
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2459
    .local v0, "token":J
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->isActive()Z

    move-result v2

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2460
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2462
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    .line 2463
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2462
    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2466
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2467
    return-void
.end method

.method getPendingReward(J)J
    .registers 7
    .param p1, "nowElapsed"    # J

    .line 2392
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->calculateTimeChunks(J)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method isActive()Z
    .registers 3

    .line 2429
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2430
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 2431
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method processEventLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 16
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 2396
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 2397
    .local v9, "nowElapsed":J
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_b0

    goto/16 :goto_af

    .line 2407
    :sswitch_f
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 2408
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 2409
    .local v0, "existingEvent":Landroid/app/usage/UsageEvents$Event;
    if-eqz v0, :cond_af

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_af

    .line 2410
    invoke-virtual {p0, v9, v10}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->getPendingReward(J)J

    move-result-wide v11

    .line 2411
    .local v11, "pendingReward":J
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 2412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crediting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Lcom/android/server/job/controllers/Package;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2413
    invoke-direct {p0, v9, v10}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->calculateTimeChunks(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time chunks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2412
    const-string v2, "JobScheduler.Quota"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_66
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v2, v2, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v3, v3, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    .line 2416
    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v13

    .line 2417
    .local v13, "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v2, v2, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v3, v3, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    move-wide v4, v9

    move-object v6, v13

    move-wide v7, v11

    invoke-static/range {v1 .. v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mtransactQuotaLocked(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2419
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v3, v3, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v4, v4, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    .line 2420
    invoke-static {v2, v9, v10, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    .line 2419
    invoke-interface {v1, v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto :goto_af

    .line 2399
    .end local v0    # "existingEvent":Landroid/app/usage/UsageEvents$Event;
    .end local v11    # "pendingReward":J
    .end local v13    # "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    :sswitch_9d
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a7

    .line 2400
    iput-wide v9, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    .line 2402
    :cond_a7
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2403
    nop

    .line 2426
    :cond_af
    :goto_af
    return-void

    :sswitch_data_b0
    .sparse-switch
        0x1 -> :sswitch_9d
        0x2 -> :sswitch_f
        0x17 -> :sswitch_f
        0x18 -> :sswitch_f
    .end sparse-switch
.end method
