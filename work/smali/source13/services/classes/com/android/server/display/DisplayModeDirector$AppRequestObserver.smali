.class final Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppRequestObserver"
.end annotation


# instance fields
.field private final mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppRequestedModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 1499
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1500
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    .line 1501
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    .line 1502
    return-void
.end method

.method private findModeByIdLocked(II)Landroid/view/Display$Mode;
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 1572
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 1573
    .local v0, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1574
    return-object v1

    .line 1576
    :cond_10
    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_20

    aget-object v4, v0, v3

    .line 1577
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    if-ne v5, p2, :cond_1d

    .line 1578
    return-object v4

    .line 1576
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1581
    :cond_20
    return-object v1
.end method

.method private setAppPreferredRefreshRateRangeLocked(IFF)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "requestedMinRefreshRateRange"    # F
    .param p3, "requestedMaxRefreshRateRange"    # F

    .line 1542
    const/4 v0, 0x0

    .line 1543
    .local v0, "refreshRateRange":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-gtz v2, :cond_a

    cmpl-float v2, p3, v1

    if-lez v2, :cond_26

    .line 1544
    :cond_a
    move v2, p2

    .line 1545
    .local v2, "min":F
    cmpl-float v3, p3, v1

    if-lez v3, :cond_11

    .line 1546
    move v3, p3

    goto :goto_13

    :cond_11
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1547
    .local v3, "max":F
    :goto_13
    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v4, v2, v3}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    move-object v0, v4

    .line 1548
    iget v4, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_26

    iget v4, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_26

    .line 1550
    const/4 v0, 0x0

    .line 1554
    .end local v2    # "min":F
    .end local v3    # "max":F
    :cond_26
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    .line 1555
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1554
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1556
    return-void

    .line 1559
    :cond_33
    if-eqz v0, :cond_43

    .line 1560
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1561
    iget v1, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v2, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .local v1, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_49

    .line 1563
    .end local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_43
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1564
    const/4 v1, 0x0

    .line 1566
    .restart local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_49
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1567
    :try_start_50
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x4

    invoke-static {v3, p1, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1568
    monitor-exit v2

    .line 1569
    return-void

    .line 1568
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_58

    throw v3
.end method

.method private setAppRequestedModeLocked(II)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 1514
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->findModeByIdLocked(II)Landroid/view/Display$Mode;

    move-result-object v0

    .line 1515
    .local v0, "requestedMode":Landroid/view/Display$Mode;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1516
    return-void

    .line 1521
    :cond_11
    if-eqz v0, :cond_2e

    .line 1522
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1523
    nop

    .line 1524
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forBaseModeRefreshRate(F)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 1525
    .local v1, "baseModeRefreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    .line 1526
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    .line 1525
    invoke-static {v2, v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    .local v2, "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_35

    .line 1528
    .end local v1    # "baseModeRefreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    .end local v2    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_2e
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1529
    const/4 v1, 0x0

    .line 1530
    .restart local v1    # "baseModeRefreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    const/4 v2, 0x0

    .line 1533
    .restart local v2    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_35
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x5

    invoke-static {v3, p1, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1535
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x6

    invoke-static {v3, p1, v4, v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1536
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1585
    const-string v0, "  AppRequestObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    const-string v0, "    mAppRequestedModeByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string v2, " -> "

    const-string v3, "    "

    if-ge v0, v1, :cond_44

    .line 1588
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1589
    .local v1, "id":I
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    .line 1590
    .local v4, "mode":Landroid/view/Display$Mode;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    .end local v1    # "id":I
    .end local v4    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1592
    .end local v0    # "i":I
    :cond_44
    const-string v0, "    mAppPreferredRefreshRateRangeByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1593
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4a
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 1594
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1595
    .restart local v1    # "id":I
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    .line 1596
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 1597
    .local v4, "refreshRateRange":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1593
    .end local v1    # "id":I
    .end local v4    # "refreshRateRange":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 1599
    .end local v0    # "i":I
    :cond_7f
    return-void
.end method

.method public setAppRequest(IIFF)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I
    .param p3, "requestedMinRefreshRateRange"    # F
    .param p4, "requestedMaxRefreshRateRange"    # F

    .line 1506
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1507
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequestedModeLocked(II)V

    .line 1508
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppPreferredRefreshRateRangeLocked(IFF)V

    .line 1510
    monitor-exit v0

    .line 1511
    return-void

    .line 1510
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
