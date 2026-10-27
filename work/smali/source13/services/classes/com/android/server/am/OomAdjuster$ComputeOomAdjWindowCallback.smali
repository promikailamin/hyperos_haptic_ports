.class final Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
.super Ljava/lang/Object;
.source "OomAdjuster.java"

# interfaces
.implements Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ComputeOomAdjWindowCallback"
.end annotation


# instance fields
.field adj:I

.field app:Lcom/android/server/am/ProcessRecord;

.field appUid:I

.field foregroundActivities:Z

.field logUid:I

.field mHasVisibleActivities:Z

.field mState:Lcom/android/server/am/ProcessStateRecord;

.field procState:I

.field processStateCurTop:I

.field schedGroup:I

.field final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OomAdjuster;

    .line 1423
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method initialize(Lcom/android/server/am/ProcessRecord;IZZIIIII)V
    .registers 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "adj"    # I
    .param p3, "foregroundActivities"    # Z
    .param p4, "hasVisibleActivities"    # Z
    .param p5, "procState"    # I
    .param p6, "schedGroup"    # I
    .param p7, "appUid"    # I
    .param p8, "logUid"    # I
    .param p9, "processStateCurTop"    # I

    .line 1440
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    .line 1441
    iput p2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1442
    iput-boolean p3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1443
    iput-boolean p4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    .line 1444
    iput p5, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1445
    iput p6, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1446
    iput p7, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    .line 1447
    iput p8, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    .line 1448
    iput p9, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    .line 1449
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1450
    return-void
.end method

.method public onOtherActivity()V
    .registers 4

    .line 1540
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_35

    .line 1541
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1542
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    const-string v1, "cch-act"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1543
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v1, :cond_35

    .line 1544
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to cached activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v0, v2, v1}, Lcom/android/server/am/OomAdjuster;->-$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    :cond_35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    .line 1549
    return-void
.end method

.method public onPausedActivity()V
    .registers 6

    .line 1481
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "pause-activity"

    const/16 v3, 0xc8

    if-le v0, v3, :cond_36

    .line 1482
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1483
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1484
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_36

    .line 1485
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to pause-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->-$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_36
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v0, v3, :cond_67

    .line 1489
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1490
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1491
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_4d

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_67

    .line 1492
    :cond_4d
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to pause-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->-$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    :cond_67
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6e

    .line 1497
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1499
    :cond_6e
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1500
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    .line 1501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1502
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    .line 1503
    return-void
.end method

.method public onStoppingActivity(Z)V
    .registers 7
    .param p1, "finishing"    # Z

    .line 1507
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "stop-activity"

    const/16 v3, 0xc8

    if-le v0, v3, :cond_36

    .line 1508
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1509
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1510
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_36

    .line 1511
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to stop-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->-$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :cond_36
    if-nez p1, :cond_69

    .line 1523
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v3, 0xf

    if-le v0, v3, :cond_69

    .line 1524
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1525
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1526
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_4f

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_69

    .line 1527
    :cond_4f
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to stop-activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->-$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    :cond_69
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1533
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    .line 1534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1535
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    .line 1536
    return-void
.end method

.method public onVisibleActivity()V
    .registers 6

    .line 1455
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "vis-activity"

    const/16 v3, 0x64

    if-le v0, v3, :cond_36

    .line 1456
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1457
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1458
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_36

    .line 1459
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to vis-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->-$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    :cond_36
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v0, v3, :cond_67

    .line 1463
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1464
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1465
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_4d

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_67

    .line 1466
    :cond_4d
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to vis-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->-$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :cond_67
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6e

    .line 1471
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1473
    :cond_6e
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1474
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    .line 1475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1476
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    .line 1477
    return-void
.end method
