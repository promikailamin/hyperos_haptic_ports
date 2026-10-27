.class public Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# instance fields
.field public mCurrentSessionCount:I

.field public mGraphicsPipelineSessionCount:I

.field public mMaxConcurrentSession:I

.field public mMaxThreadCount:I

.field public mPowerEfficientSessionCount:I

.field public mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

.field public final mTargetDurationNsCountPQSize:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .registers 3

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x64

    .line 457
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQSize:I

    const/4 p1, 0x0

    .line 509
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    .line 510
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    .line 511
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    .line 512
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    .line 513
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mGraphicsPipelineSessionCount:I

    .line 514
    new-instance p1, Ljava/util/PriorityQueue;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public getGraphicsPipelineSessionCount()I
    .registers 1

    .line 567
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mGraphicsPipelineSessionCount:I

    return p0
.end method

.method public getMaxConcurrentSession()I
    .registers 1

    .line 555
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    return p0
.end method

.method public getMaxThreadCount()I
    .registers 1

    .line 559
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    return p0
.end method

.method public getPowerEfficientSessionCount()I
    .registers 1

    .line 563
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    return p0
.end method

.method public logGraphicsPipelineSession()V
    .registers 2

    .line 533
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mGraphicsPipelineSessionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mGraphicsPipelineSessionCount:I

    return-void
.end method

.method public logPowerEfficientSession()V
    .registers 2

    .line 529
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    return-void
.end method

.method public targetDurationNsList()[J
    .registers 6

    const/4 v0, 0x5

    .line 572
    new-array v1, v0, [J

    .line 573
    :goto_3
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-le v2, v0, :cond_11

    .line 574
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_3

    :cond_11
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_2d

    .line 576
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 577
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getTargetDurationNs()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2d
    return-object v1
.end method

.method public updateTargetDurationNs(J)V
    .registers 7

    .line 541
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    .line 542
    invoke-virtual {v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getTargetDurationNs()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_6

    .line 543
    invoke-virtual {v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->setCount(I)V

    .line 544
    invoke-virtual {v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->setTimestamp()V

    return-void

    .line 548
    :cond_27
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_36

    .line 549
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 551
    :cond_36
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;-><init>(Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;J)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateThreadCount(I)V
    .registers 3

    .line 537
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    return-void
.end method

.method public updateUponSessionClose()V
    .registers 2

    .line 525
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    return-void
.end method

.method public updateUponSessionCreation(IJ)V
    .registers 6

    .line 518
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    .line 519
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    .line 520
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    .line 521
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateTargetDurationNs(J)V

    return-void
.end method
