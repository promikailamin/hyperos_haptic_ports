.class final Lcom/android/server/job/controllers/QuotaController$Timer;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Timer"
.end annotation


# instance fields
.field private mBgJobCount:I

.field private mDebitAdjustment:J

.field private final mPkg:Lcom/android/server/job/controllers/Package;

.field private final mRegularJobTimer:Z

.field private final mRunningBgJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimeElapsed:J

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPkg(Lcom/android/server/job/controllers/QuotaController$Timer;)Lcom/android/server/job/controllers/Package;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;Z)V
    .registers 6
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "regularJobTimer"    # Z

    .line 2113
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2108
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 2114
    new-instance p1, Lcom/android/server/job/controllers/Package;

    invoke-direct {p1, p3, p4}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    .line 2115
    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 2116
    iput-boolean p5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    .line 2117
    return-void
.end method

.method private cancelCutoff()V
    .registers 4

    .line 2311
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v0

    .line 2312
    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    const/4 v1, 0x4

    :goto_d
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    .line 2311
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2313
    return-void
.end method

.method private emitSessionLocked(J)V
    .registers 16
    .param p1, "nowElapsed"    # J

    .line 2192
    iget v5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    if-gtz v5, :cond_5

    .line 2194
    return-void

    .line 2196
    :cond_5
    new-instance v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    move-object v0, v9

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController$TimingSession;-><init>(JJI)V

    .line 2197
    .local v9, "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v7, v0, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v8, v0, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    xor-int/lit8 v10, v0, 0x1

    iget-wide v11, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    invoke-static/range {v6 .. v12}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$msaveTimingSession(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    .line 2199
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 2203
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 2204
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_38

    .line 2205
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v1, v1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mincrementTimingSessionCountLocked(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    .line 2207
    :cond_38
    return-void
.end method

.method private scheduleCutoff()V
    .registers 8

    .line 2290
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2291
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2292
    monitor-exit v0

    return-void

    .line 2294
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v1

    .line 2295
    iget-boolean v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    goto :goto_1a

    :cond_19
    const/4 v2, 0x4

    :goto_1a
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    .line 2294
    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2296
    .local v1, "msg":Landroid/os/Message;
    iget-boolean v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v2, :cond_33

    .line 2297
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v3, v3, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v4, v4, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    goto :goto_41

    .line 2298
    :cond_33
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v3, v3, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v4, v4, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    :goto_41
    nop

    .line 2299
    .local v2, "timeRemainingMs":J
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 2300
    const-string v4, "JobScheduler.Quota"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2301
    iget-boolean v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v6, :cond_56

    const-string v6, "Regular job"

    goto :goto_58

    :cond_56
    const-string v6, "EJ"

    :goto_58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms left."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2300
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    :cond_80
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2307
    nop

    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "timeRemainingMs":J
    monitor-exit v0

    .line 2308
    return-void

    .line 2307
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_5 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method private shouldTrackLocked()Z
    .registers 13

    .line 2237
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 2238
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v3, v3, Lcom/android/server/job/controllers/Package;->userId:I

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v2

    .line 2240
    .local v2, "standbyBucket":I
    iget-boolean v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_24

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 2241
    invoke-static {v3, v6, v2, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mhasTempAllowlistExemptionLocked(Lcom/android/server/job/controllers/QuotaController;IIJ)Z

    move-result v3

    if-eqz v3, :cond_24

    move v3, v4

    goto :goto_25

    :cond_24
    move v3, v5

    .line 2242
    .local v3, "hasTempAllowlistExemption":Z
    :goto_25
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v6

    iget v7, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    .line 2243
    .local v6, "topAppGracePeriodEndElapsed":J
    iget-boolean v8, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-nez v8, :cond_49

    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v8

    iget v9, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 2244
    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_47

    cmp-long v8, v0, v6

    if-gez v8, :cond_49

    :cond_47
    move v8, v4

    goto :goto_4a

    :cond_49
    move v8, v5

    .line 2245
    .local v8, "hasTopAppExemption":Z
    :goto_4a
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v9

    if-eqz v9, :cond_99

    .line 2246
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "quotaFree="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$misQuotaFreeLocked(Lcom/android/server/job/controllers/QuotaController;I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isFG="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    iget v11, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 2247
    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tempEx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " topEx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2246
    const-string v10, "JobScheduler.Quota"

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    :cond_99
    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9, v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$misQuotaFreeLocked(Lcom/android/server/job/controllers/QuotaController;I)Z

    move-result v9

    if-nez v9, :cond_b4

    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    iget v10, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 2252
    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_b4

    if-nez v3, :cond_b4

    if-nez v8, :cond_b4

    goto :goto_b5

    :cond_b4
    move v4, v5

    .line 2251
    :goto_b5
    return v4
.end method


# virtual methods
.method dropEverythingLocked()V
    .registers 2

    .line 2186
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2187
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 2188
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 2316
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    const-string v0, "Timer<"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2317
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_c

    const-string v0, "REG"

    goto :goto_e

    :cond_c
    const-string v0, "EJ"

    :goto_e
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2318
    const-string v0, ">{"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2319
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 2320
    const-string/jumbo v0, "} "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2322
    const-string/jumbo v0, "started at "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2323
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2324
    const-string v0, " ("

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2325
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2326
    const-string/jumbo v0, "ms ago)"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4f

    .line 2328
    :cond_4a
    const-string v0, "NOT active"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2330
    :goto_4f
    const-string v0, ", "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2331
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2332
    const-string v0, " running bg jobs"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2333
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-nez v0, :cond_71

    .line 2334
    const-string v0, " (debit adj="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2335
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2336
    const-string v0, ")"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2338
    :cond_71
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2339
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_78
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_98

    .line 2341
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2342
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 2343
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2340
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 2346
    .end local v0    # "i":I
    :cond_98
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2347
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 2350
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2352
    .local v0, "token":J
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2353
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2355
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2356
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 2357
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 2358
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p4, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2359
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2356
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2364
    .end local v2    # "i":I
    :cond_46
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2365
    return-void
.end method

.method getBgJobCount()I
    .registers 3

    .line 2230
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2231
    :try_start_5
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    monitor-exit v0

    return v1

    .line 2232
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method

.method getCurrentDuration(J)J
    .registers 8
    .param p1, "nowElapsed"    # J

    .line 2224
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2225
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_e

    const-wide/16 v1, 0x0

    goto :goto_15

    :cond_e
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long v1, p1, v1

    iget-wide v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    add-long/2addr v1, v3

    :goto_15
    monitor-exit v0

    return-wide v1

    .line 2226
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isActive()Z
    .registers 3

    .line 2214
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2215
    :try_start_5
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 2216
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method isRunning(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2220
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method onStateChangedLocked(JZ)V
    .registers 8
    .param p1, "nowElapsed"    # J
    .param p3, "isQuotaFree"    # Z

    .line 2257
    if-eqz p3, :cond_6

    .line 2258
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->emitSessionLocked(J)V

    goto :goto_4b

    .line 2259
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2261
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_4b

    .line 2262
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    .line 2263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 2267
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 2269
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_48

    .line 2270
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v1, v1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCountLocked(ILjava/lang/String;I)V

    .line 2273
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v1, v1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 2276
    :cond_48
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 2279
    :cond_4b
    :goto_4b
    return-void
.end method

.method rescheduleCutoff()V
    .registers 1

    .line 2282
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 2283
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 2284
    return-void
.end method

.method startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2120
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$misTopStartedJobLocked(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_31

    .line 2123
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer ignoring "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2125
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " because isTop"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2124
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_30
    return-void

    .line 2129
    :cond_31
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting to track "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    :cond_51
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 2134
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 2135
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_76

    .line 2136
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v2, v2, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v3, v3, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCountLocked(ILjava/lang/String;I)V

    .line 2138
    :cond_76
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ne v0, v1, :cond_9e

    .line 2140
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    .line 2141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 2142
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_9b

    .line 2145
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v1, v1, Lcom/android/server/job/controllers/Package;->userId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 2147
    :cond_9b
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 2150
    :cond_9e
    return-void
.end method

.method stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2153
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2154
    const-string v0, "JobScheduler.Quota"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping tracking of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_22
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2157
    :try_start_27
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_3e

    .line 2160
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2161
    const-string v1, "JobScheduler.Quota"

    const-string v2, "Timer isn\'t tracking any jobs but still told to stop"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_3c
    monitor-exit v0

    return-void

    .line 2165
    :cond_3e
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 2166
    .local v1, "nowElapsed":J
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget-object v3, v3, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/Package;

    iget v4, v4, Lcom/android/server/job/controllers/Package;->userId:I

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v3

    .line 2168
    .local v3, "standbyBucket":I
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_6e

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2169
    invoke-static {v4, v3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$misQuotaFreeLocked(Lcom/android/server/job/controllers/QuotaController;I)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 2170
    invoke-direct {p0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->emitSessionLocked(J)V

    .line 2171
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 2173
    .end local v1    # "nowElapsed":J
    .end local v3    # "standbyBucket":I
    :cond_6e
    monitor-exit v0

    .line 2174
    return-void

    .line 2173
    :catchall_70
    move-exception v1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_27 .. :try_end_72} :catchall_70

    throw v1
.end method

.method updateDebitAdjustment(JJ)V
    .registers 9
    .param p1, "nowElapsed"    # J
    .param p3, "debit"    # J

    .line 2178
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    add-long/2addr v0, p3

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    .line 2179
    return-void
.end method
