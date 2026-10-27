.class public Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;
.super Ljava/lang/Object;
.source "WakefulnessSessionObserver.java"


# instance fields
.field public mCurrentScreenPolicy:I

.field public mCurrentScreenPolicyTimestamp:J

.field protected mCurrentUserActivityEvent:I

.field protected mCurrentUserActivityTimestamp:J

.field public mCurrentWakefulness:I

.field public mInteractiveOffTimestamp:J

.field public mInteractiveStateOnStartTimestamp:J

.field protected mIsInteractive:Z

.field protected mPastDimDurationMs:I

.field public mPowerGroupId:I

.field public mPrevScreenPolicy:I

.field public mPrevScreenPolicyDurationMs:I

.field protected mPrevUserActivityEvent:I

.field protected mPrevUserActivityTimestamp:J

.field public mSendOverrideTimeoutLogTimestamp:J

.field public mTimeoutOffTimestamp:J

.field public mTimeoutOverrideReleaseReason:I

.field public mTimeoutOverrideWakeLockCounter:I

.field public final synthetic this$0:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method public static synthetic $r8$lambda$KmXu3QokAZYu-qVjwdvvOaylSoE(Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;IIIII)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->lambda$checkAndLogDimIfQualified$0(IIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V
    .registers 5

    .line 405
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 373
    iput-boolean p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    .line 385
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 406
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    const-wide/16 v0, -0x1

    .line 407
    iput-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    .line 408
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 409
    iput-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    .line 410
    iput p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    const/4 p2, 0x3

    .line 411
    iput p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    iput p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    const-wide/16 v0, 0x0

    .line 412
    iput-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    .line 413
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    .line 414
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    return-void
.end method


# virtual methods
.method public acquireTimeoutOverrideWakeLock()V
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmLock(Lcom/android/server/power/WakefulnessSessionObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 550
    :try_start_7
    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 551
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final checkAndLogDimIfQualified(IJ)V
    .registers 14

    .line 609
    iget v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    if-eqz v0, :cond_5

    goto :goto_57

    .line 613
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v7

    .line 615
    iget v4, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 616
    iget-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    sub-long v0, p2, v0

    long-to-int v5, v0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_83

    if-eq p1, v1, :cond_58

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1f

    goto :goto_57

    .line 689
    :cond_1f
    iget-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveOffTimestamp:J

    sub-long/2addr p2, v0

    .line 690
    iget v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    if-lez v0, :cond_57

    const-wide/16 v0, 0x1388

    cmp-long p2, p2, v0

    if-gez p2, :cond_57

    .line 692
    iget-object p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v1, p2, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    invoke-static {p2}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v2

    iget v6, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logDimEvent(IIIIII)V

    return-void

    :cond_3b
    move v3, p1

    .line 660
    iget p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    if-ne p1, v1, :cond_57

    .line 661
    iget-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long/2addr p2, v0

    long-to-int v6, p2

    .line 673
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {p1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmHandler(Lcom/android/server/power/WakefulnessSessionObserver;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;IIIII)V

    sget-object p0, Lcom/android/server/power/WakefulnessSessionObserver;->HANDLER_TOKEN:Ljava/lang/Object;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, v1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_57
    :goto_57
    return-void

    :cond_58
    move v3, p1

    .line 638
    iget v4, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 639
    iget-wide v5, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    sub-long v5, p2, v5

    long-to-int v5, v5

    .line 643
    iget p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    if-ne p1, v1, :cond_7f

    .line 644
    iget-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long/2addr p2, v0

    long-to-int v6, p2

    .line 645
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v1, p1, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    invoke-static {p1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logDimEvent(IIIIII)V

    .line 652
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {p1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmHandler(Lcom/android/server/power/WakefulnessSessionObserver;)Landroid/os/Handler;

    move-result-object p1

    sget-object p2, Lcom/android/server/power/WakefulnessSessionObserver;->HANDLER_TOKEN:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_80

    :cond_7f
    const/4 v6, 0x0

    .line 655
    :goto_80
    iput v6, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    return-void

    :cond_83
    move v3, p1

    .line 621
    iget-wide v8, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long/2addr p2, v8

    long-to-int p1, p2

    .line 622
    iget p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    if-ne p2, v1, :cond_8e

    .line 623
    iget p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    :cond_8e
    move v6, p1

    .line 625
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v1, p1, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    invoke-static {p1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logDimEvent(IIIIII)V

    .line 632
    iput v6, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 8

    .line 708
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmClock(Lcom/android/server/power/WakefulnessSessionObserver;)Lcom/android/server/power/WakefulnessSessionObserver$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/WakefulnessSessionObserver$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wakefulness Session Power Group powerGroupId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current wakefulness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentWakefulness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current user activity event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 714
    iget-wide v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    sub-long v2, v0, v2

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current user activity duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "previous user activity event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 717
    iget-wide v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    sub-long v2, v0, v2

    .line 718
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "previous user activity duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is in override timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsInteractive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current screen policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 722
    iget-wide v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long/2addr v0, v2

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current screen policy duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "previous screen policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "past screen policy duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public isInOverrideTimeout()Z
    .registers 2

    .line 601
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmLock(Lcom/android/server/power/WakefulnessSessionObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 602
    :try_start_7
    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 603
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final synthetic lambda$checkAndLogDimIfQualified$0(IIIII)V
    .registers 14

    .line 674
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logDimEvent(IIIIII)V

    .line 681
    iput v6, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPastDimDurationMs:I

    return-void
.end method

.method public notifyUserActivity(JI)V
    .registers 6

    .line 419
    iget v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    if-ne p3, v0, :cond_5

    return-void

    .line 422
    :cond_5
    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 423
    iput p3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 424
    iget-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    iput-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    .line 425
    iput-wide p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    return-void
.end method

.method public onScreenPolicyUpdate(JI)V
    .registers 6

    .line 429
    iget v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    if-ne p3, v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x3

    if-ne p3, v0, :cond_b

    .line 434
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    .line 437
    :cond_b
    iget v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    .line 438
    iput p3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    .line 439
    iget-wide v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v0, p1, v0

    long-to-int p3, v0

    iput p3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    .line 440
    iput-wide p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    return-void
.end method

.method public onWakefulnessChangeStarted(IIJ)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-wide/from16 v3, p3

    .line 444
    iput v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentWakefulness:I

    .line 445
    iget-boolean v5, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v6

    if-ne v5, v6, :cond_13

    return-void

    .line 449
    :cond_13
    iget-object v5, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v5}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v5

    .line 450
    invoke-static {v2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eqz v2, :cond_4a

    .line 452
    iput-wide v3, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveStateOnStartTimestamp:J

    .line 456
    iget-wide v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    const-wide/16 v8, -0x1

    cmp-long v10, v1, v8

    if-eqz v10, :cond_46

    sub-long v1, v3, v1

    const-wide/16 v10, 0x1388

    cmp-long v1, v1, v10

    if-gez v1, :cond_44

    .line 459
    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v2, v1, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v10, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    invoke-static {v1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v1

    invoke-virtual {v2, v10, v7, v1, v5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logTimeoutOverrideEvent(IIII)V

    .line 464
    iput-wide v3, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    .line 466
    :cond_44
    iput-wide v8, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    .line 469
    :cond_46
    invoke-virtual {v0, v6, v3, v4}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    return-void

    .line 472
    :cond_4a
    iget v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    .line 473
    iget-wide v8, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    sub-long v10, v3, v8

    .line 476
    iput-wide v3, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveOffTimestamp:J

    const/4 v12, 0x0

    if-ne v1, v6, :cond_81

    .line 483
    iget v2, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    .line 484
    iget-wide v8, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    sub-long v10, v3, v8

    .line 486
    invoke-virtual {v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v1

    const/4 v6, 0x5

    if-nez v1, :cond_66

    iget v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    if-ne v1, v6, :cond_78

    .line 489
    :cond_66
    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v8, v1, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v9, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    invoke-static {v1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v1

    invoke-virtual {v8, v9, v6, v1, v5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logTimeoutOverrideEvent(IIII)V

    .line 494
    iput-wide v3, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    const/4 v1, -0x1

    .line 496
    iput v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    .line 499
    :cond_78
    invoke-virtual {v0, v7, v3, v4}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    :goto_7b
    move/from16 v18, v2

    move v15, v7

    move-wide/from16 v19, v10

    goto :goto_ae

    :cond_81
    if-ne v1, v7, :cond_a9

    sub-long v10, v3, v8

    .line 510
    invoke-virtual {v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_a5

    .line 511
    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v1

    sub-int v12, v5, v1

    .line 513
    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v6, v1, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v8, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    invoke-static {v1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v1

    invoke-virtual {v6, v8, v7, v1, v5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logTimeoutOverrideEvent(IIII)V

    .line 518
    iput-wide v3, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    .line 522
    iput-wide v3, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    .line 525
    :cond_a5
    invoke-virtual {v0, v7, v3, v4}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    goto :goto_7b

    :cond_a9
    move/from16 v18, v2

    move-wide/from16 v19, v10

    move v15, v12

    .line 528
    :goto_ae
    iget-wide v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveStateOnStartTimestamp:J

    sub-long v16, v3, v1

    if-ge v12, v5, :cond_c2

    if-ltz v12, :cond_c2

    .line 533
    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v13, v1, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v14, v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    move/from16 v21, v12

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logSessionEvent(IIJIJI)V

    return-void

    .line 541
    :cond_c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid reducedInteractiveStateOnDurationMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakefulnessSessionObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public releaseTimeoutOverrideWakeLock(I)V
    .registers 6

    .line 556
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmLock(Lcom/android/server/power/WakefulnessSessionObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 557
    :try_start_7
    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    .line 558
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_48

    .line 560
    invoke-virtual {p0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v0

    if-nez v0, :cond_47

    .line 561
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    .line 562
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmClock(Lcom/android/server/power/WakefulnessSessionObserver;)Lcom/android/server/power/WakefulnessSessionObserver$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/WakefulnessSessionObserver$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 567
    iget-wide v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2a

    return-void

    :cond_2a
    packed-switch p1, :pswitch_data_4c

    const/4 p1, 0x0

    goto :goto_34

    :pswitch_2f
    const/4 p1, 0x6

    goto :goto_34

    :pswitch_31
    const/4 p1, 0x4

    goto :goto_34

    :pswitch_33
    const/4 p1, 0x7

    .line 590
    :goto_34
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    invoke-static {v0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 594
    invoke-static {p0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I

    move-result p0

    .line 590
    invoke-virtual {v1, v2, p1, v0, p0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->logTimeoutOverrideEvent(IIII)V

    :cond_47
    return-void

    :catchall_48
    move-exception p0

    .line 558
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_33
        :pswitch_33
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2f
    .end packed-switch
.end method
