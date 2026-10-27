.class public Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;
.super Ljava/lang/Object;
.source "AppOpsUidStateTrackerImpl.java"


# instance fields
.field public mCommitUidStateLog:[[I

.field public mCommitUidStateLogHead:I

.field public mCommitUidStateLogSize:I

.field public mCommitUidStateLogTimestamps:[J

.field public mEvalForegroundModeLog:[[I

.field public mEvalForegroundModeLogHead:I

.field public mEvalForegroundModeLogSize:I

.field public mEvalForegroundModeLogTimestamps:[J

.field public final mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

.field public final mExecutorThread:Ljava/lang/Thread;

.field public mUpdateUidProcStateLog:[[I

.field public mUpdateUidProcStateLogHead:I

.field public mUpdateUidProcStateLogSize:I

.field public mUpdateUidProcStateLogTimestamps:[J


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Ljava/lang/Thread;)V
    .registers 10

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 422
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v3, 0x0

    const/16 v4, 0xc8

    aput v4, v1, v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    .line 423
    new-array v1, v4, [J

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    .line 425
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    .line 426
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    .line 428
    new-array v1, v0, [I

    const/4 v6, 0x4

    aput v6, v1, v2

    aput v4, v1, v3

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    .line 429
    new-array v1, v4, [J

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    .line 430
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    .line 431
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    .line 433
    new-array v0, v0, [I

    const/4 v1, 0x5

    aput v1, v0, v2

    aput v4, v0, v3

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    .line 434
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    .line 435
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    .line 436
    iput v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    .line 439
    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 440
    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutorThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public dumpCommitUidState(Ljava/io/PrintWriter;I)V
    .registers 11

    .line 595
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    aget-wide v0, v0, p2

    .line 596
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    aget-object p0, p0, p2

    const/4 p2, 0x0

    aget v2, p0, p2

    const/4 v3, 0x1

    .line 597
    aget v4, p0, v3

    const/4 v5, 0x2

    .line 598
    aget v6, p0, v5

    const/4 v7, 0x3

    .line 599
    aget p0, p0, v7

    and-int/lit8 v7, p0, 0x1

    if-eqz v7, :cond_1a

    move v7, v3

    goto :goto_1b

    :cond_1a
    move v7, p2

    :goto_1b
    and-int/2addr p0, v5

    if-eqz p0, :cond_1f

    move p2, v3

    .line 603
    :cond_1f
    invoke-static {p1, v0, v1}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 605
    const-string p0, " COMMIT_UID_STATE     "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    const-string p0, " uid="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%-8d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    const-string p0, " uidState="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 611
    invoke-static {v4}, Landroid/app/AppOpsManager;->uidStateToString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%-30s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 613
    const-string p0, " capability="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    const-string p0, " appWidgetVisible="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    if-eqz p2, :cond_7f

    .line 620
    const-string p0, " (changed)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    :cond_7f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpEvalForegroundMode(Ljava/io/PrintWriter;I)V
    .registers 9

    .line 627
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    aget-wide v0, v0, p2

    .line 628
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    aget-object p0, p0, p2

    const/4 p2, 0x0

    aget p2, p0, p2

    const/4 v2, 0x1

    .line 629
    aget v2, p0, v2

    const/4 v3, 0x2

    .line 630
    aget v3, p0, v3

    const/4 v4, 0x3

    .line 631
    aget v4, p0, v4

    const/4 v5, 0x4

    .line 632
    aget p0, p0, v5

    .line 634
    invoke-static {p1, v0, v1}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 636
    const-string v0, " EVAL_FOREGROUND_MODE "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    const-string v0, " uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 639
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%-8d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    const-string p2, " uidState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    invoke-static {v2}, Landroid/app/AppOpsManager;->uidStateToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%-30s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    const-string p2, " capability="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    const-string p2, " code="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%-20s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    const-string p2, " result="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    invoke-static {p0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .registers 15

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 533
    :goto_3
    iget v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    if-lt v0, v3, :cond_11

    iget v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    if-lt v1, v4, :cond_11

    iget v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    if-ge v2, v4, :cond_10

    goto :goto_11

    :cond_10
    return-void

    .line 540
    :cond_11
    :goto_11
    iget v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    add-int/2addr v4, v0

    rem-int/lit16 v4, v4, 0xc8

    .line 544
    iget v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    add-int/2addr v5, v1

    rem-int/lit16 v5, v5, 0xc8

    .line 548
    iget v6, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    add-int/2addr v6, v2

    rem-int/lit16 v6, v6, 0xc8

    const-wide v7, 0x7fffffffffffffffL

    if-ge v0, v3, :cond_2c

    .line 553
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    aget-wide v9, v3, v4

    goto :goto_2d

    :cond_2c
    move-wide v9, v7

    .line 554
    :goto_2d
    iget v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    if-ge v1, v3, :cond_36

    .line 555
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    aget-wide v11, v3, v5

    goto :goto_37

    :cond_36
    move-wide v11, v7

    .line 556
    :goto_37
    iget v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    if-ge v2, v3, :cond_3f

    .line 557
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    aget-wide v7, v3, v6

    :cond_3f
    cmp-long v3, v9, v11

    if-gtz v3, :cond_4d

    cmp-long v3, v9, v7

    if-gtz v3, :cond_4d

    .line 560
    invoke-virtual {p0, p1, v4}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->dumpUpdateUidProcState(Ljava/io/PrintWriter;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4d
    cmp-long v3, v11, v7

    if-gtz v3, :cond_57

    .line 563
    invoke-virtual {p0, p1, v5}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->dumpCommitUidState(Ljava/io/PrintWriter;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 566
    :cond_57
    invoke-virtual {p0, p1, v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->dumpEvalForegroundMode(Ljava/io/PrintWriter;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public dumpUpdateUidProcState(Ljava/io/PrintWriter;I)V
    .registers 7

    .line 573
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    aget-wide v0, v0, p2

    .line 574
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    aget-object p0, p0, p2

    const/4 p2, 0x0

    aget p2, p0, p2

    const/4 v2, 0x1

    .line 575
    aget v2, p0, v2

    const/4 v3, 0x2

    .line 576
    aget p0, p0, v3

    .line 578
    invoke-static {p1, v0, v1}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 580
    const-string v0, " UPDATE_UID_PROC_STATE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    const-string v0, " uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%-8d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    const-string p2, " procState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 586
    invoke-static {v2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%-30s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    const-string p2, " capability="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 589
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public logCommitUidState(IIIZZ)V
    .registers 15

    .line 472
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda1;-><init>()V

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 474
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v2, p0

    .line 472
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logCommitUidStateAsync(JIIIZZ)V
    .registers 13

    .line 479
    iget v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    iget v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    add-int v2, v0, v1

    const/16 v3, 0xc8

    rem-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_11

    add-int/2addr v0, v4

    .line 482
    rem-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    goto :goto_14

    :cond_11
    add-int/2addr v1, v4

    .line 485
    iput v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    .line 488
    :goto_14
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    aget-object v0, v0, v2

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 489
    aput p4, v0, v4

    const/4 p3, 0x2

    .line 490
    aput p5, v0, p3

    const/4 p4, 0x3

    .line 491
    aput v1, v0, p4

    if-eqz p6, :cond_27

    .line 493
    aput v4, v0, p4

    :cond_27
    if-eqz p7, :cond_2e

    .line 496
    aget p5, v0, p4

    add-int/2addr p5, p3

    aput p5, v0, p4

    .line 498
    :cond_2e
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    aput-wide p1, p0, v2

    return-void
.end method

.method public logEvalForegroundMode(IIIII)V
    .registers 15

    .line 505
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;-><init>()V

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v2, p0

    .line 505
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logEvalForegroundModeAsync(JIIIII)V
    .registers 13

    .line 511
    iget v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    iget v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    add-int v2, v0, v1

    const/16 v3, 0xc8

    rem-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_11

    add-int/2addr v0, v4

    .line 514
    rem-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    goto :goto_14

    :cond_11
    add-int/2addr v1, v4

    .line 517
    iput v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    .line 520
    :goto_14
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    aget-object v0, v0, v2

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 521
    aput p4, v0, v4

    const/4 p3, 0x2

    .line 522
    aput p5, v0, p3

    const/4 p3, 0x3

    .line 523
    aput p6, v0, p3

    const/4 p3, 0x4

    .line 524
    aput p7, v0, p3

    .line 525
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    aput-wide p1, p0, v2

    return-void
.end method

.method public logUpdateUidProcState(III)V
    .registers 11

    .line 447
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda2;-><init>()V

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, p0

    .line 447
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logUpdateUidProcStateAsync(JIII)V
    .registers 11

    .line 452
    iget v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    iget v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    add-int v2, v0, v1

    const/16 v3, 0xc8

    rem-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_11

    add-int/2addr v0, v4

    .line 455
    rem-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    goto :goto_14

    :cond_11
    add-int/2addr v1, v4

    .line 458
    iput v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    .line 461
    :goto_14
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    aget-object v0, v0, v2

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 462
    aput p4, v0, v4

    const/4 p3, 0x2

    .line 463
    aput p5, v0, p3

    .line 464
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    aput-wide p1, p0, v2

    return-void
.end method
