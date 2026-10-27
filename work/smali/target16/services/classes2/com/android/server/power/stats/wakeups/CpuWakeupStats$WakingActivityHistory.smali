.class final Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;
.super Ljava/lang/Object;
.source "CpuWakeupStats.java"


# instance fields
.field public mRetentionSupplier:Ljava/util/function/LongSupplier;

.field final mWakingActivity:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/LongSupplier;)V
    .registers 3

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    .line 412
    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mRetentionSupplier:Ljava/util/function/LongSupplier;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;J)V
    .registers 12

    .line 475
    const-string v0, "Recent waking activity:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 477
    :goto_a
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_a2

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subsystem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    if-nez v2, :cond_40

    goto :goto_9e

    .line 483
    :cond_40
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 484
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_49
    if-ltz v3, :cond_9b

    .line 485
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-static {v4, v5, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 486
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    if-nez v4, :cond_5e

    .line 488
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_98

    .line 491
    :cond_5e
    const-string v5, ": "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v5, v0

    .line 492
    :goto_64
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_95

    .line 493
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {p1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 494
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 495
    const-string v6, "], "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 497
    :cond_95
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_98
    add-int/lit8 v3, v3, -0x1

    goto :goto_49

    .line 499
    :cond_9b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_9e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 501
    :cond_a2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public recordActivity(IJLandroid/util/SparseIntArray;)V
    .registers 9

    if-nez p4, :cond_3

    goto :goto_55

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_17

    .line 421
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 422
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    :cond_17
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseIntArray;

    if-nez p1, :cond_27

    .line 426
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_42

    :cond_27
    const/4 v1, 0x0

    .line 428
    :goto_28
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 429
    invoke-virtual {p4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 432
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3f

    .line 433
    invoke-virtual {p4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 440
    :cond_42
    :goto_42
    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mRetentionSupplier:Ljava/util/function/LongSupplier;

    .line 441
    invoke-interface {p0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide p0

    sub-long/2addr p2, p0

    .line 440
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p0

    :goto_4d
    if-ltz p0, :cond_55

    .line 443
    invoke-virtual {v0, p0}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_4d

    :cond_55
    :goto_55
    return-void
.end method

.method public removeBetween(IJJ)Landroid/util/SparseIntArray;
    .registers 9

    .line 448
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 450
    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    .line 451
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;

    if-eqz p0, :cond_40

    .line 453
    invoke-virtual {p0, p2, p3}, Landroid/util/LongSparseArray;->firstIndexOnOrAfter(J)I

    move-result p1

    .line 454
    invoke-virtual {p0, p4, p5}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p2

    move p3, p2

    :goto_18
    if-lt p3, p1, :cond_38

    .line 456
    invoke-virtual {p0, p3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/SparseIntArray;

    const/4 p5, 0x0

    .line 457
    :goto_21
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge p5, v1, :cond_35

    .line 460
    invoke-virtual {p4, p5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p4, p5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_21

    :cond_35
    add-int/lit8 p3, p3, -0x1

    goto :goto_18

    :cond_38
    :goto_38
    if-lt p2, p1, :cond_40

    .line 465
    invoke-virtual {p0, p2}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_38

    .line 471
    :cond_40
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-lez p0, :cond_47

    return-object v0

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method
