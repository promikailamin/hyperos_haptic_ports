.class final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemCompactionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method private constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2

    .line 1503
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1504
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1505
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method

.method private shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 7
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "action"    # I

    .line 1508
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1512
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p2, v1, :cond_8

    const/4 v2, 0x2

    if-ne p2, v2, :cond_39

    :cond_8
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1513
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_39

    .line 1514
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping compaction as process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is now perceptible."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_38
    return v1

    .line 1522
    :cond_39
    const/4 v1, 0x0

    return v1
.end method

.method private shouldRssThrottleCompaction(IILjava/lang/String;[J)Z
    .registers 27
    .param p1, "action"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rssBefore"    # [J

    .line 1620
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x2

    aget-wide v4, p4, v3

    .line 1621
    .local v4, "anonRssBefore":J
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    .line 1623
    .local v6, "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    const/4 v7, 0x0

    aget-wide v8, p4, v7

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const-string v9, "ActivityManager"

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-nez v8, :cond_60

    aget-wide v14, p4, v13

    cmp-long v8, v14, v10

    if-nez v8, :cond_60

    aget-wide v14, p4, v3

    cmp-long v8, v14, v10

    if-nez v8, :cond_60

    aget-wide v14, p4, v12

    cmp-long v8, v14, v10

    if-nez v8, :cond_60

    .line 1625
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping compaction forprocess "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v8, p2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " with no memory usage. Dead?"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 1625
    :cond_5d
    move/from16 v8, p2

    .line 1630
    :goto_5f
    return v13

    .line 1623
    :cond_60
    move/from16 v8, p2

    .line 1633
    if-eq v1, v12, :cond_66

    if-ne v1, v3, :cond_10b

    .line 1634
    :cond_66
    iget-object v14, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v14, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v14, v14, v10

    const-string v15, "KB."

    const-string v7, "Skipping full compaction for process "

    if-lez v14, :cond_a5

    iget-object v14, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v10, v14, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v10, v4, v10

    if-gez v10, :cond_a5

    .line 1635
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 1636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "; anon RSS is too small: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_a4
    return v13

    .line 1643
    :cond_a5
    if-eqz v6, :cond_10b

    iget-object v10, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v10, v10, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-lez v10, :cond_10b

    .line 1644
    invoke-virtual {v6}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v10

    .line 1645
    .local v10, "lastRss":[J
    aget-wide v16, p4, v13

    aget-wide v18, v10, v13

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    aget-wide v18, p4, v3

    aget-wide v20, v10, v3

    sub-long v18, v18, v20

    .line 1646
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    add-long v16, v16, v18

    aget-wide v18, p4, v12

    aget-wide v11, v10, v12

    sub-long v18, v18, v11

    .line 1647
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    add-long v11, v16, v11

    .line 1648
    .local v11, "absDelta":J
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v3, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v3, v11, v13

    if-gtz v3, :cond_10b

    .line 1649
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v3

    if-eqz v3, :cond_109

    .line 1650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "; abs delta is too small: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_109
    const/4 v3, 0x1

    return v3

    .line 1659
    .end local v10    # "lastRss":[J
    .end local v11    # "absDelta":J
    :cond_10b
    const/4 v3, 0x0

    return v3
.end method

.method private shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;II)Z
    .registers 9
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "procState"    # I
    .param p3, "action"    # I

    .line 1597
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1598
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ActivityManager"

    const/4 v3, 0x1

    if-eqz v1, :cond_3c

    .line 1599
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping full compaction for process "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "; proc state is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_3b
    return v3

    .line 1607
    :cond_3c
    if-nez p3, :cond_64

    .line 1608
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping compaction for process "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "since action is None"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_63
    return v3

    .line 1615
    :cond_64
    const/4 v1, 0x0

    return v1
.end method

.method private shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JI)Z
    .registers 23
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "start"    # J
    .param p4, "pendingAction"    # I

    .line 1527
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1528
    .local v3, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1530
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactAction()I

    move-result v5

    .line 1531
    .local v5, "lastCompactAction":I
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v6

    .line 1540
    .local v6, "lastCompactTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_182

    .line 1541
    const-string v8, "/"

    const-string/jumbo v10, "ms ago"

    const-string v11, " last="

    const-string v12, ": too soon. throttle="

    const-string v13, "ActivityManager"

    const/4 v14, 0x1

    if-ne v2, v14, :cond_8c

    .line 1542
    if-ne v5, v14, :cond_35

    sub-long v15, p2, v6

    iget-object v14, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-object/from16 v17, v10

    iget-wide v9, v14, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    cmp-long v9, v15, v9

    if-ltz v9, :cond_44

    goto :goto_37

    :cond_35
    move-object/from16 v17, v10

    :goto_37
    const/4 v9, 0x2

    if-ne v5, v9, :cond_182

    sub-long v9, p2, v6

    iget-object v14, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v14, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_182

    .line 1546
    :cond_44
    iget-object v9, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 1547
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping some compaction for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v10, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, p2, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v9, v17

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_8a
    const/4 v10, 0x1

    return v10

    .line 1555
    :cond_8c
    move-object v9, v10

    move v10, v14

    const/4 v14, 0x2

    if-ne v2, v14, :cond_f0

    .line 1556
    if-ne v5, v10, :cond_9d

    sub-long v14, p2, v6

    iget-object v10, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v1, v10, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    cmp-long v1, v14, v1

    if-ltz v1, :cond_aa

    :cond_9d
    const/4 v1, 0x2

    if-ne v5, v1, :cond_182

    sub-long v1, p2, v6

    iget-object v10, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v10, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    cmp-long v1, v1, v14

    if-gez v1, :cond_182

    .line 1560
    :cond_aa
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping full compaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v10, p2, v6

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_ee
    const/4 v1, 0x1

    return v1

    .line 1569
    :cond_f0
    const/4 v1, 0x3

    move/from16 v2, p4

    if-ne v2, v1, :cond_139

    .line 1570
    sub-long v14, p2, v6

    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long v1, v14, v1

    if-gez v1, :cond_182

    .line 1571
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping persistent compaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v10, p2, v6

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_137
    const/4 v1, 0x1

    return v1

    .line 1579
    :cond_139
    const/4 v1, 0x4

    move/from16 v2, p4

    if-ne v2, v1, :cond_182

    .line 1580
    sub-long v14, p2, v6

    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long v1, v14, v1

    if-gez v1, :cond_182

    .line 1581
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 1582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping bfgs compaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v10, p2, v6

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_180
    const/4 v1, 0x1

    return v1

    .line 1592
    :cond_182
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 74
    .param p1, "msg"    # Landroid/os/Message;

    .line 1664
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const-wide/32 v3, 0x19000

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x40

    const/4 v13, 0x3

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_68e

    :pswitch_12
    goto/16 :goto_68c

    .line 1667
    :pswitch_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1674
    .local v16, "start":J
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/Runnable;

    .line 1676
    .local v8, "CompactFinshCallback":Ljava/lang/Runnable;
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v18

    monitor-enter v18

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1677
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2ac

    if-eqz v0, :cond_47

    .line 1678
    :try_start_33
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_3e

    .line 1679
    const-string v0, "MFZ"

    const-string v3, "No processes pending compaction, bail out"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_3e
    monitor-exit v18
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1691
    :catchall_43
    move-exception v0

    move-object v3, v8

    goto/16 :goto_2ae

    .line 1683
    :cond_47
    :try_start_47
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v9, v0

    .line 1684
    .local v9, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move-object/from16 v19, v0

    .line 1685
    .local v19, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    move-object/from16 v5, v19

    .end local v19    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v5, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v5, v15}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceCompact(Z)V

    .line 1687
    invoke-virtual {v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactAction()I

    move-result v19

    move/from16 v20, v19

    .line 1688
    .local v20, "requestedAction":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v19

    move/from16 v21, v19

    .line 1689
    .local v21, "pid":I
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1690
    .local v22, "name":Ljava/lang/String;
    invoke-virtual {v5, v15}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 1691
    monitor-exit v18
    :try_end_71
    .catchall {:try_start_47 .. :try_end_71} :catchall_2ac

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1694
    const-wide/16 v23, 0x0

    .line 1696
    .local v23, "pssBefore":J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    move/from16 v6, v21

    .end local v21    # "pid":I
    .local v6, "pid":I
    invoke-interface {v0, v6}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v18

    .line 1697
    .local v18, "rssBefore":[J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getPss(I)J

    move-result-wide v23

    .line 1698
    const-wide/16 v26, 0x400

    div-long v23, v23, v26

    .line 1699
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_af

    .line 1700
    const-string v0, "MFZ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Forcing compaction for "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v14, v22

    .end local v22    # "name":Ljava/lang/String;
    .local v14, "name":Ljava/lang/String;
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 1699
    .end local v14    # "name":Ljava/lang/String;
    .restart local v22    # "name":Ljava/lang/String;
    :cond_af
    move-object/from16 v14, v22

    .line 1703
    .end local v22    # "name":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    :goto_b1
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move/from16 v12, v20

    .end local v20    # "requestedAction":I
    .local v12, "requestedAction":I
    invoke-virtual {v0, v12}, Lcom/android/server/am/CachedAppOptimizer;->resolveCompactionAction(I)I

    move-result v20

    .line 1704
    .local v20, "resolvedAction":I
    invoke-static/range {v20 .. v20}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1705
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$sfgetCOMPACT_ACTION_STRING()[Ljava/lang/String;

    move-result-object v22

    aget-object v15, v22, v13

    .line 1707
    .end local v0    # "action":Ljava/lang/String;
    .local v15, "action":Ljava/lang/String;
    move-object/from16 v22, v8

    .end local v8    # "CompactFinshCallback":Ljava/lang/Runnable;
    .local v22, "CompactFinshCallback":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v7

    .line 1708
    .local v7, "zramFreeKb":J
    cmp-long v0, v7, v3

    if-gez v0, :cond_fa

    .line 1709
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_f9

    .line 1710
    const-string v0, "MFZ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping compaction for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": zramFree too small. zramFree="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_f9
    return-void

    .line 1717
    :cond_fa
    :try_start_fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compact "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1719
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v3

    .line 1721
    .local v3, "zramFreeKbBefore":J
    const-string v0, "MFZ"

    const-string v10, "Before[%s, %s, %s, %s, %s, %s]"

    const/4 v11, 0x6

    new-array v13, v11, [Ljava/lang/Object;

    .line 1723
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v29, 0x0

    aput-object v11, v13, v29

    aget-wide v31, v18, v29

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v28, 0x1

    aput-object v11, v13, v28

    aget-wide v31, v18, v28

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v21, 0x2

    aput-object v11, v13, v21

    aget-wide v31, v18, v21

    .line 1724
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v30, 0x3

    aput-object v11, v13, v30

    aget-wide v31, v18, v30

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v25, 0x4

    aput-object v11, v13, v25

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v19, 0x5

    aput-object v11, v13, v19

    move-object v11, v0

    .line 1721
    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    const-string v10, "MFZ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "start process reclaim "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    iget-object v10, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v10}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v10

    invoke-interface {v10, v15, v6}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Ljava/lang/String;I)V

    .line 1728
    const-string v10, "MFZ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "process reclaim finished "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v10, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v10}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v10

    invoke-interface {v10, v6}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v10

    .line 1730
    .local v10, "rssAfter":[J
    iget-object v11, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v11

    invoke-interface {v11, v6}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getPss(I)J

    move-result-wide v31

    .line 1731
    .local v31, "pssAfter":J
    div-long v26, v31, v26

    .line 1732
    .end local v31    # "pssAfter":J
    .local v26, "pssAfter":J
    sub-long v31, v26, v23

    .line 1733
    .local v31, "deltaPss":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v33

    .line 1734
    .local v33, "end":J
    sub-long v35, v33, v16

    .line 1735
    .local v35, "time":J
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v37

    .line 1736
    .local v37, "zramFreeKbAfter":J
    const/4 v11, 0x0

    aget-wide v39, v10, v11

    aget-wide v41, v18, v11

    sub-long v39, v39, v41

    .line 1737
    .local v39, "deltaTotalRss":J
    const/4 v11, 0x1

    aget-wide v41, v10, v11

    aget-wide v43, v18, v11

    sub-long v41, v41, v43

    .line 1738
    .local v41, "deltaFileRss":J
    const/4 v11, 0x2

    aget-wide v43, v10, v11

    aget-wide v45, v18, v11

    sub-long v43, v43, v45

    .line 1739
    .local v43, "deltaAnonRss":J
    const/4 v11, 0x3

    aget-wide v45, v10, v11

    aget-wide v47, v18, v11

    sub-long v45, v45, v47

    .line 1741
    .local v45, "deltaSwapRss":J
    const-string v11, "MFZ"

    const-string v13, "After[%s, %s, %s, %s, %s, %s]"

    move-wide/from16 v47, v3

    const/4 v0, 0x6

    .end local v3    # "zramFreeKbBefore":J
    .local v47, "zramFreeKbBefore":J
    new-array v3, v0, [Ljava/lang/Object;

    .line 1743
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aget-wide v49, v10, v4

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    aget-wide v49, v10, v4

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    aget-wide v49, v10, v4

    .line 1744
    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v3, v4

    aget-wide v49, v10, v4

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v3, v4

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x5

    aput-object v0, v3, v4

    .line 1741
    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const-string v3, "MFZ"

    const-string v4, "Delta[%s, %s, %s, %s, %s, %s]"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    .line 1748
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v19, 0x0

    aput-object v13, v11, v19

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v19, 0x1

    aput-object v13, v11, v19

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v19, 0x2

    aput-object v13, v11, v19

    .line 1749
    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v19, 0x3

    aput-object v13, v11, v19

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v19, 0x4

    aput-object v13, v11, v19

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v0, 0x5

    aput-object v13, v11, v0

    .line 1746
    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    if-eqz v22, :cond_26b

    .line 1751
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_263} :catch_274
    .catchall {:try_start_fa .. :try_end_263} :catchall_270

    move-object/from16 v3, v22

    .end local v22    # "CompactFinshCallback":Ljava/lang/Runnable;
    .local v3, "CompactFinshCallback":Ljava/lang/Runnable;
    :try_start_265
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_268} :catch_269
    .catchall {:try_start_265 .. :try_end_268} :catchall_2a5

    goto :goto_26d

    .line 1753
    .end local v10    # "rssAfter":[J
    .end local v26    # "pssAfter":J
    .end local v31    # "deltaPss":J
    .end local v33    # "end":J
    .end local v35    # "time":J
    .end local v37    # "zramFreeKbAfter":J
    .end local v39    # "deltaTotalRss":J
    .end local v41    # "deltaFileRss":J
    .end local v43    # "deltaAnonRss":J
    .end local v45    # "deltaSwapRss":J
    .end local v47    # "zramFreeKbBefore":J
    :catch_269
    move-exception v0

    goto :goto_277

    .line 1750
    .end local v3    # "CompactFinshCallback":Ljava/lang/Runnable;
    .restart local v10    # "rssAfter":[J
    .restart local v22    # "CompactFinshCallback":Ljava/lang/Runnable;
    .restart local v26    # "pssAfter":J
    .restart local v31    # "deltaPss":J
    .restart local v33    # "end":J
    .restart local v35    # "time":J
    .restart local v37    # "zramFreeKbAfter":J
    .restart local v39    # "deltaTotalRss":J
    .restart local v41    # "deltaFileRss":J
    .restart local v43    # "deltaAnonRss":J
    .restart local v45    # "deltaSwapRss":J
    .restart local v47    # "zramFreeKbBefore":J
    :cond_26b
    move-object/from16 v3, v22

    .line 1759
    .end local v10    # "rssAfter":[J
    .end local v22    # "CompactFinshCallback":Ljava/lang/Runnable;
    .end local v26    # "pssAfter":J
    .end local v31    # "deltaPss":J
    .end local v33    # "end":J
    .end local v35    # "time":J
    .end local v37    # "zramFreeKbAfter":J
    .end local v39    # "deltaTotalRss":J
    .end local v41    # "deltaFileRss":J
    .end local v43    # "deltaAnonRss":J
    .end local v45    # "deltaSwapRss":J
    .end local v47    # "zramFreeKbBefore":J
    .restart local v3    # "CompactFinshCallback":Ljava/lang/Runnable;
    :goto_26d
    const-wide/16 v10, 0x40

    goto :goto_29f

    .end local v3    # "CompactFinshCallback":Ljava/lang/Runnable;
    .restart local v22    # "CompactFinshCallback":Ljava/lang/Runnable;
    :catchall_270
    move-exception v0

    move-object/from16 v3, v22

    .end local v22    # "CompactFinshCallback":Ljava/lang/Runnable;
    .restart local v3    # "CompactFinshCallback":Ljava/lang/Runnable;
    goto :goto_2a6

    .line 1753
    .end local v3    # "CompactFinshCallback":Ljava/lang/Runnable;
    .restart local v22    # "CompactFinshCallback":Ljava/lang/Runnable;
    :catch_274
    move-exception v0

    move-object/from16 v3, v22

    .line 1755
    .end local v22    # "CompactFinshCallback":Ljava/lang/Runnable;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "CompactFinshCallback":Ljava/lang/Runnable;
    :goto_277
    :try_start_277
    const-string v4, "MFZ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception occurred while compacting pid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1757
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1755
    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29d
    .catchall {:try_start_277 .. :try_end_29d} :catchall_2a5

    .line 1759
    const-wide/16 v10, 0x40

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_29f
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1760
    nop

    .line 1761
    goto/16 :goto_68c

    .line 1759
    :catchall_2a5
    move-exception v0

    :goto_2a6
    const-wide/16 v10, 0x40

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1760
    throw v0

    .line 1691
    .end local v3    # "CompactFinshCallback":Ljava/lang/Runnable;
    .end local v5    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v6    # "pid":I
    .end local v7    # "zramFreeKb":J
    .end local v9    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "requestedAction":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "action":Ljava/lang/String;
    .end local v18    # "rssBefore":[J
    .end local v20    # "resolvedAction":I
    .end local v23    # "pssBefore":J
    .restart local v8    # "CompactFinshCallback":Ljava/lang/Runnable;
    :catchall_2ac
    move-exception v0

    move-object v3, v8

    .end local v8    # "CompactFinshCallback":Ljava/lang/Runnable;
    .restart local v3    # "CompactFinshCallback":Ljava/lang/Runnable;
    :goto_2ae
    :try_start_2ae
    monitor-exit v18
    :try_end_2af
    .catchall {:try_start_2ae .. :try_end_2af} :catchall_2b3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_2b3
    move-exception v0

    goto :goto_2ae

    .line 1922
    .end local v3    # "CompactFinshCallback":Ljava/lang/Runnable;
    .end local v16    # "start":J
    :pswitch_2b5
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmSystemCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v3

    add-long/2addr v3, v8

    invoke-static {v0, v3, v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmSystemCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;J)V

    .line 1923
    const-string v0, "compactSystem"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1924
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mcompactSystem(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 1925
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_68c

    .line 1765
    :pswitch_2d0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1773
    .local v5, "start":J
    iget v7, v2, Landroid/os/Message;->arg1:I

    .line 1774
    .local v7, "lastOomAdj":I
    iget v10, v2, Landroid/os/Message;->arg2:I

    .line 1776
    .local v10, "procState":I
    iget-object v11, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v11

    monitor-enter v11

    :try_start_2df
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1777
    iget-object v12, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v12}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12
    :try_end_2ec
    .catchall {:try_start_2df .. :try_end_2ec} :catchall_682

    if-eqz v12, :cond_307

    .line 1778
    :try_start_2ee
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v0

    if-eqz v0, :cond_2fd

    .line 1779
    const-string v0, "ActivityManager"

    const-string v3, "No processes pending compaction, bail out"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_2fd
    monitor-exit v11
    :try_end_2fe
    .catchall {:try_start_2ee .. :try_end_2fe} :catchall_302

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1794
    :catchall_302
    move-exception v0

    move-wide/from16 v70, v5

    goto/16 :goto_685

    .line 1783
    :cond_307
    :try_start_307
    iget-object v12, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v12}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 1784
    .local v12, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1785
    .local v13, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isForceCompact()Z

    move-result v14

    .line 1786
    .local v14, "forceCompaction":Z
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceCompact(Z)V

    .line 1788
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactAction()I

    move-result v15

    .line 1789
    .local v15, "requestedAction":I
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v16

    move/from16 v17, v16

    .line 1790
    .local v17, "pid":I
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1791
    .local v16, "name":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 1792
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactAction()I

    move-result v53

    .line 1793
    .local v53, "lastCompactAction":I
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v54

    .line 1794
    .local v54, "lastCompactTime":J
    monitor-exit v11
    :try_end_339
    .catchall {:try_start_307 .. :try_end_339} :catchall_682

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1796
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsRequested(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v22

    add-long v3, v22, v8

    invoke-static {v0, v3, v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsRequested(Lcom/android/server/am/CachedAppOptimizer;J)V

    .line 1798
    move/from16 v3, v17

    .end local v17    # "pid":I
    .local v3, "pid":I
    if-nez v3, :cond_366

    .line 1800
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v0

    if-eqz v0, :cond_35a

    .line 1801
    const-string v0, "ActivityManager"

    const-string v4, "Compaction failed, pid is 0"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_35a
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsNoPidThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v17

    add-long v8, v17, v8

    invoke-static {v0, v8, v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsNoPidThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    .line 1804
    return-void

    .line 1807
    :cond_366
    if-nez v14, :cond_3be

    .line 1808
    invoke-direct {v1, v12, v15}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0

    if-eqz v0, :cond_37a

    .line 1809
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsOomAdjThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v17

    add-long v8, v17, v8

    invoke-static {v0, v8, v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsOomAdjThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    .line 1810
    return-void

    .line 1812
    :cond_37a
    invoke-direct {v1, v12, v5, v6, v15}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JI)Z

    move-result v0

    if-eqz v0, :cond_38c

    .line 1813
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsTimeThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v17

    add-long v8, v17, v8

    invoke-static {v0, v8, v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsTimeThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    .line 1814
    return-void

    .line 1816
    :cond_38c
    invoke-direct {v1, v12, v10, v15}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v0

    if-eqz v0, :cond_39e

    .line 1817
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsMiscThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v17

    add-long v8, v17, v8

    invoke-static {v0, v8, v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsMiscThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    .line 1818
    return-void

    .line 1820
    :cond_39e
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v0

    .line 1821
    .local v0, "rssBefore":[J
    move-object/from16 v4, v16

    .end local v16    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    invoke-direct {v1, v15, v3, v4, v0}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldRssThrottleCompaction(IILjava/lang/String;[J)Z

    move-result v11

    if-eqz v11, :cond_3bc

    .line 1822
    iget-object v11, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsRSSThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v16

    add-long v8, v16, v8

    invoke-static {v11, v8, v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsRSSThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    .line 1823
    return-void

    .line 1821
    :cond_3bc
    move-object v8, v0

    goto :goto_3eb

    .line 1826
    .end local v0    # "rssBefore":[J
    .end local v4    # "name":Ljava/lang/String;
    .restart local v16    # "name":Ljava/lang/String;
    :cond_3be
    move-object/from16 v4, v16

    .end local v16    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v0

    .line 1827
    .restart local v0    # "rssBefore":[J
    iget-object v11, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v11

    if-eqz v11, :cond_3ea

    .line 1828
    const-string v11, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Forcing compaction for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :cond_3ea
    move-object v8, v0

    .end local v0    # "rssBefore":[J
    .local v8, "rssBefore":[J
    :goto_3eb
    packed-switch v15, :pswitch_data_69c

    goto :goto_41f

    .line 1845
    :pswitch_3ef
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmBfgsCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v9

    const/4 v11, 0x1

    add-int/2addr v9, v11

    invoke-static {v0, v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmBfgsCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    .line 1846
    goto :goto_41f

    .line 1842
    :pswitch_3fb
    const/4 v11, 0x1

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPersistentCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v9

    add-int/2addr v9, v11

    invoke-static {v0, v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmPersistentCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    .line 1843
    goto :goto_41f

    .line 1839
    :pswitch_407
    const/4 v11, 0x1

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFullCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v9

    add-int/2addr v9, v11

    invoke-static {v0, v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmFullCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    .line 1840
    goto :goto_41f

    .line 1836
    :pswitch_413
    const/4 v11, 0x1

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmSomeCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v9

    add-int/2addr v9, v11

    invoke-static {v0, v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmSomeCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    .line 1837
    nop

    .line 1851
    :goto_41f
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v15}, Lcom/android/server/am/CachedAppOptimizer;->resolveCompactionAction(I)I

    move-result v9

    .line 1852
    .local v9, "resolvedAction":I
    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v11

    .line 1855
    .local v11, "action":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47d

    .line 1856
    move-object v2, v12

    move-object/from16 v18, v13

    .end local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    .local v18, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v12

    .line 1857
    .local v12, "zramFreeKb":J
    const-wide/32 v22, 0x19000

    cmp-long v0, v12, v22

    if-gez v0, :cond_478

    .line 1858
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_473

    .line 1859
    const-string v0, "ActivityManager"

    move-object/from16 v20, v2

    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v20, "proc":Lcom/android/server/am/ProcessRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v14

    .end local v14    # "forceCompaction":Z
    .local v22, "forceCompaction":Z
    const-string v14, "Skipping compaction for "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ": zramFree too small. zramFree="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "KB"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_477

    .line 1858
    .end local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v22    # "forceCompaction":Z
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "forceCompaction":Z
    :cond_473
    move-object/from16 v20, v2

    move/from16 v22, v14

    .line 1862
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "forceCompaction":Z
    .restart local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v22    # "forceCompaction":Z
    :goto_477
    return-void

    .line 1857
    .end local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v22    # "forceCompaction":Z
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "forceCompaction":Z
    :cond_478
    move-object/from16 v20, v2

    move/from16 v22, v14

    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "forceCompaction":Z
    .restart local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v22    # "forceCompaction":Z
    goto :goto_483

    .line 1855
    .end local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v22    # "forceCompaction":Z
    .local v12, "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v14    # "forceCompaction":Z
    :cond_47d
    move-object/from16 v20, v12

    move-object/from16 v18, v13

    move/from16 v22, v14

    .line 1868
    .end local v12    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v14    # "forceCompaction":Z
    .restart local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v22    # "forceCompaction":Z
    :goto_483
    :try_start_483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compact "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v12, 0x40

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1870
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v12

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    invoke-static {v0, v12, v13}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;J)V

    .line 1871
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v12

    .line 1872
    .local v12, "zramFreeKbBefore":J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v11, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Ljava/lang/String;I)V

    .line 1873
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v0

    move-object v2, v0

    .line 1874
    .local v2, "rssAfter":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16
    :try_end_4ce
    .catch Ljava/lang/Exception; {:try_start_483 .. :try_end_4ce} :catch_647
    .catchall {:try_start_483 .. :try_end_4ce} :catchall_63f

    move-wide/from16 v23, v16

    .line 1875
    .local v23, "end":J
    move/from16 v16, v15

    move-wide/from16 v14, v23

    .end local v15    # "requestedAction":I
    .end local v23    # "end":J
    .local v14, "end":J
    .local v16, "requestedAction":I
    sub-long v23, v14, v5

    .line 1876
    .local v23, "time":J
    :try_start_4d6
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v26

    .line 1877
    .local v26, "zramFreeKbAfter":J
    const/4 v0, 0x0

    aget-wide v31, v2, v0

    aget-wide v33, v8, v0

    sub-long v62, v31, v33

    .line 1878
    .local v62, "deltaTotalRss":J
    const/4 v0, 0x1

    aget-wide v31, v2, v0

    aget-wide v33, v8, v0

    sub-long v64, v31, v33

    .line 1879
    .local v64, "deltaFileRss":J
    const/4 v0, 0x2

    aget-wide v31, v2, v0

    aget-wide v33, v8, v0

    sub-long v66, v31, v33

    .line 1880
    .local v66, "deltaAnonRss":J
    const/4 v0, 0x3

    aget-wide v31, v2, v0

    aget-wide v33, v8, v0

    sub-long v68, v31, v33

    .line 1881
    .local v68, "deltaSwapRss":J
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v29, 0x0

    aput-object v31, v0, v29

    const/16 v28, 0x1

    aput-object v4, v0, v28

    const/16 v21, 0x2

    aput-object v11, v0, v21

    aget-wide v31, v8, v29

    .line 1882
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    const/16 v30, 0x3

    aput-object v31, v0, v30

    const/16 v28, 0x1

    aget-wide v31, v8, v28

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    const/16 v25, 0x4

    aput-object v31, v0, v25

    const/16 v21, 0x2

    aget-wide v31, v8, v21

    .line 1883
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const/16 v19, 0x5

    aput-object v25, v0, v19

    const/16 v19, 0x3

    aget-wide v31, v8, v19

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v25, 0x6

    aput-object v19, v0, v25

    const/16 v19, 0x7

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v0, v19

    const/16 v19, 0x8

    .line 1884
    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v0, v19

    const/16 v19, 0x9

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v0, v19

    const/16 v19, 0xa

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v0, v19

    const/16 v19, 0xb

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v0, v19

    const/16 v19, 0xc

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v0, v19

    const/16 v19, 0xd

    .line 1885
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v0, v19

    const/16 v19, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v0, v19

    const/16 v19, 0xf

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v0, v19

    const/16 v19, 0x10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v0, v19

    const/16 v19, 0x11

    sub-long v31, v26, v12

    .line 1886
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v0, v19
    :try_end_592
    .catch Ljava/lang/Exception; {:try_start_4d6 .. :try_end_592} :catch_639
    .catchall {:try_start_4d6 .. :try_end_592} :catchall_633

    .line 1881
    move-wide/from16 v70, v5

    const/16 v5, 0x756f

    .end local v5    # "start":J
    .local v70, "start":J
    :try_start_596
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1890
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v5, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v5, v5, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F
    :try_end_5a7
    .catch Ljava/lang/Exception; {:try_start_596 .. :try_end_5a7} :catch_62f
    .catchall {:try_start_596 .. :try_end_5a7} :catchall_62b

    cmpg-float v0, v0, v5

    if-gez v0, :cond_5e5

    .line 1891
    const/16 v31, 0x73

    const/4 v0, 0x0

    :try_start_5ae
    aget-wide v35, v8, v0

    const/4 v0, 0x1

    aget-wide v37, v8, v0

    const/4 v0, 0x2

    aget-wide v39, v8, v0

    const/4 v0, 0x3

    aget-wide v41, v8, v0

    const/4 v0, 0x0

    aget-wide v43, v2, v0

    const/4 v0, 0x1

    aget-wide v45, v2, v0

    const/4 v0, 0x2

    aget-wide v47, v2, v0

    const/4 v0, 0x3

    aget-wide v49, v2, v0

    .line 1898
    invoke-static {v10}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v57

    .line 1891
    move/from16 v32, v3

    move-object/from16 v33, v4

    move/from16 v34, v16

    move-wide/from16 v51, v23

    move/from16 v56, v7

    move-wide/from16 v58, v12

    move-wide/from16 v60, v26

    invoke-static/range {v31 .. v61}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJJJJIJIIJJ)V
    :try_end_5da
    .catch Ljava/lang/Exception; {:try_start_5ae .. :try_end_5da} :catch_5e0
    .catchall {:try_start_5ae .. :try_end_5da} :catchall_5db

    goto :goto_5e5

    .line 1917
    .end local v2    # "rssAfter":[J
    .end local v12    # "zramFreeKbBefore":J
    .end local v14    # "end":J
    .end local v23    # "time":J
    .end local v26    # "zramFreeKbAfter":J
    .end local v62    # "deltaTotalRss":J
    .end local v64    # "deltaFileRss":J
    .end local v66    # "deltaAnonRss":J
    .end local v68    # "deltaSwapRss":J
    :catchall_5db
    move-exception v0

    move-object/from16 v6, v18

    goto/16 :goto_67c

    .line 1911
    :catch_5e0
    move-exception v0

    move-object/from16 v6, v18

    goto/16 :goto_64e

    .line 1901
    .restart local v2    # "rssAfter":[J
    .restart local v12    # "zramFreeKbBefore":J
    .restart local v14    # "end":J
    .restart local v23    # "time":J
    .restart local v26    # "zramFreeKbAfter":J
    .restart local v62    # "deltaTotalRss":J
    .restart local v64    # "deltaFileRss":J
    .restart local v66    # "deltaAnonRss":J
    .restart local v68    # "deltaSwapRss":J
    :cond_5e5
    :goto_5e5
    :try_start_5e5
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v5

    monitor-enter v5
    :try_end_5ec
    .catch Ljava/lang/Exception; {:try_start_5e5 .. :try_end_5ec} :catch_62f
    .catchall {:try_start_5e5 .. :try_end_5ec} :catchall_62b

    :try_start_5ec
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V
    :try_end_5ef
    .catchall {:try_start_5ec .. :try_end_5ef} :catchall_621

    .line 1902
    move-object/from16 v6, v18

    .end local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v6, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :try_start_5f1
    invoke-virtual {v6, v14, v15}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactTime(J)V

    .line 1903
    invoke-virtual {v6, v9}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactAction(I)V

    .line 1904
    monitor-exit v5
    :try_end_5f8
    .catchall {:try_start_5f1 .. :try_end_5f8} :catchall_61f

    :try_start_5f8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1905
    const/4 v0, 0x3

    if-eq v9, v0, :cond_601

    const/4 v0, 0x2

    if-ne v9, v0, :cond_61c

    .line 1908
    :cond_601
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    invoke-direct {v1, v2}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;-><init>([J)V

    invoke-virtual {v0, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61c
    .catch Ljava/lang/Exception; {:try_start_5f8 .. :try_end_61c} :catch_629
    .catchall {:try_start_5f8 .. :try_end_61c} :catchall_67b

    .line 1917
    .end local v2    # "rssAfter":[J
    .end local v12    # "zramFreeKbBefore":J
    .end local v14    # "end":J
    .end local v23    # "time":J
    .end local v26    # "zramFreeKbAfter":J
    .end local v62    # "deltaTotalRss":J
    .end local v64    # "deltaFileRss":J
    .end local v66    # "deltaAnonRss":J
    .end local v68    # "deltaSwapRss":J
    :cond_61c
    const-wide/16 v1, 0x40

    goto :goto_676

    .line 1904
    .restart local v2    # "rssAfter":[J
    .restart local v12    # "zramFreeKbBefore":J
    .restart local v14    # "end":J
    .restart local v23    # "time":J
    .restart local v26    # "zramFreeKbAfter":J
    .restart local v62    # "deltaTotalRss":J
    .restart local v64    # "deltaFileRss":J
    .restart local v66    # "deltaAnonRss":J
    .restart local v68    # "deltaSwapRss":J
    :catchall_61f
    move-exception v0

    goto :goto_624

    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :catchall_621
    move-exception v0

    move-object/from16 v6, v18

    .end local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :goto_624
    :try_start_624
    monitor-exit v5
    :try_end_625
    .catchall {:try_start_624 .. :try_end_625} :catchall_61f

    :try_start_625
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v3    # "pid":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v7    # "lastOomAdj":I
    .end local v8    # "rssBefore":[J
    .end local v9    # "resolvedAction":I
    .end local v10    # "procState":I
    .end local v11    # "action":Ljava/lang/String;
    .end local v16    # "requestedAction":I
    .end local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v22    # "forceCompaction":Z
    .end local v53    # "lastCompactAction":I
    .end local v54    # "lastCompactTime":J
    .end local v70    # "start":J
    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v0
    :try_end_629
    .catch Ljava/lang/Exception; {:try_start_625 .. :try_end_629} :catch_629
    .catchall {:try_start_625 .. :try_end_629} :catchall_67b

    .line 1911
    .end local v2    # "rssAfter":[J
    .end local v12    # "zramFreeKbBefore":J
    .end local v14    # "end":J
    .end local v23    # "time":J
    .end local v26    # "zramFreeKbAfter":J
    .end local v62    # "deltaTotalRss":J
    .end local v64    # "deltaFileRss":J
    .end local v66    # "deltaAnonRss":J
    .end local v68    # "deltaSwapRss":J
    .restart local v3    # "pid":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v7    # "lastOomAdj":I
    .restart local v8    # "rssBefore":[J
    .restart local v9    # "resolvedAction":I
    .restart local v10    # "procState":I
    .restart local v11    # "action":Ljava/lang/String;
    .restart local v16    # "requestedAction":I
    .restart local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v22    # "forceCompaction":Z
    .restart local v53    # "lastCompactAction":I
    .restart local v54    # "lastCompactTime":J
    .restart local v70    # "start":J
    .restart local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_629
    move-exception v0

    goto :goto_64e

    .line 1917
    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :catchall_62b
    move-exception v0

    move-object/from16 v6, v18

    .end local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    goto :goto_67c

    .line 1911
    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :catch_62f
    move-exception v0

    move-object/from16 v6, v18

    .end local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    goto :goto_64e

    .line 1917
    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v70    # "start":J
    .restart local v5    # "start":J
    .restart local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :catchall_633
    move-exception v0

    move-wide/from16 v70, v5

    move-object/from16 v6, v18

    .end local v5    # "start":J
    .end local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v70    # "start":J
    goto :goto_67c

    .line 1911
    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v70    # "start":J
    .restart local v5    # "start":J
    .restart local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :catch_639
    move-exception v0

    move-wide/from16 v70, v5

    move-object/from16 v6, v18

    .end local v5    # "start":J
    .end local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v70    # "start":J
    goto :goto_64e

    .line 1917
    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v16    # "requestedAction":I
    .end local v70    # "start":J
    .restart local v5    # "start":J
    .restart local v15    # "requestedAction":I
    .restart local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :catchall_63f
    move-exception v0

    move-wide/from16 v70, v5

    move/from16 v16, v15

    move-object/from16 v6, v18

    .end local v5    # "start":J
    .end local v15    # "requestedAction":I
    .end local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v16    # "requestedAction":I
    .restart local v70    # "start":J
    goto :goto_67c

    .line 1911
    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v16    # "requestedAction":I
    .end local v70    # "start":J
    .restart local v5    # "start":J
    .restart local v15    # "requestedAction":I
    .restart local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :catch_647
    move-exception v0

    move-wide/from16 v70, v5

    move/from16 v16, v15

    move-object/from16 v6, v18

    .line 1913
    .end local v5    # "start":J
    .end local v15    # "requestedAction":I
    .end local v18    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v16    # "requestedAction":I
    .restart local v70    # "start":J
    :goto_64e
    :try_start_64e
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while compacting pid: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ". Exception:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1915
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1913
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_674
    .catchall {:try_start_64e .. :try_end_674} :catchall_67b

    .line 1917
    const-wide/16 v1, 0x40

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_676
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1918
    nop

    .line 1919
    goto :goto_68c

    .line 1917
    :catchall_67b
    move-exception v0

    :goto_67c
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1918
    throw v0

    .line 1794
    .end local v3    # "pid":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v8    # "rssBefore":[J
    .end local v9    # "resolvedAction":I
    .end local v11    # "action":Ljava/lang/String;
    .end local v16    # "requestedAction":I
    .end local v20    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v22    # "forceCompaction":Z
    .end local v53    # "lastCompactAction":I
    .end local v54    # "lastCompactTime":J
    .end local v70    # "start":J
    .restart local v5    # "start":J
    :catchall_682
    move-exception v0

    move-wide/from16 v70, v5

    .end local v5    # "start":J
    .restart local v70    # "start":J
    :goto_685
    :try_start_685
    monitor-exit v11
    :try_end_686
    .catchall {:try_start_685 .. :try_end_686} :catchall_68a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_68a
    move-exception v0

    goto :goto_685

    .line 1929
    .end local v7    # "lastOomAdj":I
    .end local v10    # "procState":I
    .end local v70    # "start":J
    :goto_68c
    return-void

    nop

    :pswitch_data_68e
    .packed-switch 0x1
        :pswitch_2d0
        :pswitch_2b5
        :pswitch_12
        :pswitch_12
        :pswitch_14
    .end packed-switch

    :pswitch_data_69c
    .packed-switch 0x1
        :pswitch_413
        :pswitch_407
        :pswitch_3fb
        :pswitch_3ef
    .end packed-switch
.end method
