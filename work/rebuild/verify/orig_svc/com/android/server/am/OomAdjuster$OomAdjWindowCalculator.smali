.class public final Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# instance fields
.field public mAdj:I

.field public mAdjType:Ljava/lang/String;

.field public mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

.field public mForegroundActivities:Z

.field public mHasVisibleActivities:Z

.field public mProcState:I

.field public mProcessStateCurTop:I

.field public mReportDebugMsgs:Z

.field public mSchedGroup:I

.field public final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .registers 2

    .line 1481
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/psc/ProcessRecordInternal;IZZIIIZ)V
    .registers 11

    .line 1501
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCachedAdj()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    return-void

    .line 1504
    :cond_9
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->initialize(Lcom/android/server/am/psc/ProcessRecordInternal;IZZIIIZ)V

    .line 1509
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getActivityStateFlags()I

    move-result p1

    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-eqz p2, :cond_1b

    .line 1515
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->onVisibleActivity(I)V

    goto :goto_3e

    :cond_1b
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-eqz p2, :cond_24

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->onPausedActivity()V

    goto :goto_3e

    :cond_24
    const/high16 p2, 0x40000

    and-int/2addr p2, p1

    if-eqz p2, :cond_35

    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    if-eqz p2, :cond_30

    const/4 p2, 0x1

    goto :goto_31

    :cond_30
    const/4 p2, 0x0

    .line 1519
    :goto_31
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->onStoppingActivity(Z)V

    goto :goto_3e

    .line 1523
    :cond_35
    iget-object p2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPerceptibleTaskStoppedTimeMillis()J

    move-result-wide p2

    .line 1527
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->onOtherActivity(J)V

    .line 1539
    :goto_3e
    iget p2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdj:I

    const/16 p3, 0x64

    if-ne p2, p3, :cond_53

    const p2, 0xffff

    and-int/2addr p1, p2

    const/16 p2, 0x63

    .line 1541
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1542
    iget p2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdj:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdj:I

    .line 1546
    :cond_53
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    iget p2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdj:I

    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCachedAdj(I)V

    .line 1547
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    iget-boolean p2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mForegroundActivities:Z

    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCachedForegroundActivities(Z)V

    .line 1548
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    iget-boolean p2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mHasVisibleActivities:Z

    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCachedHasVisibleActivities(Z)V

    .line 1549
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    iget p2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcState:I

    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCachedProcState(I)V

    .line 1550
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    iget p2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mSchedGroup:I

    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCachedSchedGroup(I)V

    .line 1551
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCachedAdjType(Ljava/lang/String;)V

    return-void
.end method

.method public initialize(Lcom/android/server/am/psc/ProcessRecordInternal;IZZIIIZ)V
    .registers 9

    .line 1557
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 1558
    iput p2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdj:I

    .line 1559
    iput-boolean p3, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mForegroundActivities:Z

    .line 1560
    iput-boolean p4, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mHasVisibleActivities:Z

    .line 1561
    iput p5, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcState:I

    .line 1562
    iput p6, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mSchedGroup:I

    .line 1563
    iput p7, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcessStateCurTop:I

    .line 1564
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    .line 1565
    iput-boolean p8, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mReportDebugMsgs:Z

    return-void
.end method

.method public onOtherActivity(J)V
    .registers 4

    .line 1666
    iget p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcState:I

    const/16 p2, 0x10

    if-le p1, p2, :cond_2a

    .line 1667
    iput p2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcState:I

    .line 1668
    const-string p1, "cch-act"

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    .line 1669
    iget-boolean p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mReportDebugMsgs:Z

    if-eqz p1, :cond_2a

    .line 1670
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Raise procstate to cached activity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityManager"

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const/4 p1, 0x0

    .line 1696
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mHasVisibleActivities:Z

    return-void
.end method

.method public onPausedActivity()V
    .registers 6

    .line 1613
    iget v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "pause-activity"

    const/16 v3, 0xc8

    if-le v0, v3, :cond_2b

    .line 1614
    iput v3, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdj:I

    .line 1615
    iput-object v2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    .line 1616
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mReportDebugMsgs:Z

    if-eqz v0, :cond_2b

    .line 1617
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to pause-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    :cond_2b
    iget v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcState:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcessStateCurTop:I

    if-le v0, v3, :cond_51

    .line 1621
    iput v3, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcState:I

    .line 1622
    iput-object v2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    .line 1623
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mReportDebugMsgs:Z

    if-eqz v0, :cond_51

    .line 1624
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to pause-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    :cond_51
    iget v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mSchedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_58

    .line 1629
    iput v1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mSchedGroup:I

    :cond_58
    const/4 v0, 0x1

    .line 1631
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mForegroundActivities:Z

    const/4 v0, 0x0

    .line 1632
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mHasVisibleActivities:Z

    return-void
.end method

.method public onStoppingActivity(Z)V
    .registers 7

    .line 1636
    iget v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "stop-activity"

    const/16 v3, 0xc8

    if-le v0, v3, :cond_2b

    .line 1637
    iput v3, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdj:I

    .line 1638
    iput-object v2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    .line 1639
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mReportDebugMsgs:Z

    if-eqz v0, :cond_2b

    .line 1640
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to stop-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    if-nez p1, :cond_53

    .line 1652
    iget p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcState:I

    const/16 v0, 0xf

    if-le p1, v0, :cond_53

    .line 1653
    iput v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcState:I

    .line 1654
    iput-object v2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    .line 1655
    iget-boolean p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mReportDebugMsgs:Z

    if-eqz p1, :cond_53

    .line 1656
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to stop-activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    const/4 p1, 0x1

    .line 1661
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mForegroundActivities:Z

    const/4 p1, 0x0

    .line 1662
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mHasVisibleActivities:Z

    return-void
.end method

.method public onVisibleActivity(I)V
    .registers 7

    .line 1570
    iget v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "vis-activity"

    const/16 v3, 0x64

    if-le v0, v3, :cond_2b

    .line 1571
    iput v3, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdj:I

    .line 1572
    iput-object v2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    .line 1573
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mReportDebugMsgs:Z

    if-eqz v0, :cond_2b

    .line 1574
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to vis-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    :cond_2b
    iget v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcState:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcessStateCurTop:I

    if-le v0, v3, :cond_51

    .line 1578
    iput v3, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mProcState:I

    .line 1579
    iput-object v2, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    .line 1580
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mReportDebugMsgs:Z

    if-eqz v0, :cond_51

    .line 1581
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to vis-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    :cond_51
    iget v0, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mSchedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_58

    .line 1586
    iput v1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mSchedGroup:I

    :cond_58
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    const/4 v1, 0x3

    if-eqz v0, :cond_66

    .line 1591
    iput v1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mSchedGroup:I

    .line 1592
    const-string/jumbo p1, "resumed-split-screen-activity"

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    goto :goto_8e

    :cond_66
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_73

    .line 1596
    iput v1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mSchedGroup:I

    .line 1597
    const-string/jumbo p1, "perceptible-freeform-activity"

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    goto :goto_8e

    :cond_73
    const/high16 v0, 0x2000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_81

    const/4 p1, 0x5

    .line 1601
    iput p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mSchedGroup:I

    .line 1602
    const-string/jumbo p1, "vis-multi-window-activity"

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    goto :goto_8e

    :cond_81
    const/high16 v0, 0x4000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_8e

    const/4 p1, 0x0

    .line 1605
    iput p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mSchedGroup:I

    .line 1606
    const-string/jumbo p1, "occluded-freeform-activity"

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mAdjType:Ljava/lang/String;

    :cond_8e
    :goto_8e
    const/4 p1, 0x1

    .line 1608
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mForegroundActivities:Z

    .line 1609
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->mHasVisibleActivities:Z

    return-void
.end method
