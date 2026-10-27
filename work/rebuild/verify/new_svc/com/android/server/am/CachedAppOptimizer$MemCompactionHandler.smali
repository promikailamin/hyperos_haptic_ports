.class public final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# instance fields
.field public mProfileValidForMemcgMap:Ljava/util/EnumMap;

.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 3

    .line 1556
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1557
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1687
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->mProfileValidForMemcgMap:Ljava/util/EnumMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 57

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1704
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    const-wide/16 v7, 0x40

    const/4 v9, 0x1

    if-eq v2, v9, :cond_87

    if-eq v2, v6, :cond_69

    const/4 v3, 0x5

    if-eq v2, v3, :cond_13

    goto/16 :goto_2fb

    .line 1879
    :cond_13
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1880
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->values()[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v3

    iget v1, v1, Landroid/os/Message;->arg2:I

    aget-object v1, v3, v1

    .line 1881
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Performing native compaction for pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1881
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const-string v3, "compactNative"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1889
    :try_start_44
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_64

    .line 1892
    :catch_4e
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed compacting native pid= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :goto_64
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_2fb

    .line 1869
    :cond_69
    const-string v1, "compactSystem"

    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1870
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetMemoryFreedCompaction()J

    move-result-wide v1

    .line 1871
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mcompactSystem(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 1872
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetMemoryFreedCompaction()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 1874
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/compaction/CompactionStatsManager;->logSystemCompactionPerformed(J)V

    .line 1875
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1706
    :cond_87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1714
    iget v10, v1, Landroid/os/Message;->arg1:I

    .line 1715
    iget v11, v1, Landroid/os/Message;->arg2:I

    .line 1720
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1721
    :try_start_99
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 1725
    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_aa

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_aa
    move-exception v0

    goto/16 :goto_300

    .line 1727
    :cond_ad
    :try_start_ad
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1728
    iget-object v13, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1729
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isForceCompact()Z

    move-result v14

    .line 1730
    invoke-virtual {v13, v12}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceCompact(Z)V

    .line 1732
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v15

    .line 1733
    iget-object v5, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 1734
    invoke-virtual {v13, v12}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 1735
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactSource()Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    move-result-object v7

    .line 1736
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v8

    .line 1737
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v30

    .line 1738
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v31

    .line 1739
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastOomAdjChangeReason()I

    move-result v6

    .line 1740
    monitor-exit v1
    :try_end_e1
    .catchall {:try_start_ad .. :try_end_e1} :catchall_aa

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-nez v15, :cond_ee

    .line 1748
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v12, v7, v5}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_ee
    const/4 v1, 0x3

    if-nez v14, :cond_143

    .line 1755
    invoke-virtual {v0, v4}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;)Z

    move-result v16

    if-eqz v16, :cond_ff

    .line 1756
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v9, v7, v5}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_ff
    move-object/from16 v54, v7

    move v7, v1

    move-object v1, v4

    move-object v4, v8

    move v8, v12

    move-object v12, v5

    move-object/from16 v5, v54

    .line 1761
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Z

    move-result v16

    if-eqz v16, :cond_117

    .line 1763
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    .line 1768
    :cond_117
    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v16

    if-eqz v16, :cond_125

    .line 1769
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v7, v5, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_125
    move/from16 p1, v8

    .line 1774
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v8}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v8

    invoke-interface {v8, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v8

    .line 1775
    invoke-virtual {v0, v4, v15, v12, v8}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldRssThrottleCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;ILjava/lang/String;[J)Z

    move-result v16

    if-eqz v16, :cond_140

    .line 1776
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_140
    :goto_140
    move/from16 v36, v7

    goto :goto_155

    :cond_143
    move/from16 p1, v12

    move-object v12, v5

    move-object v5, v7

    move v7, v1

    move-object v1, v4

    move-object v4, v8

    .line 1782
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v8}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v8

    invoke-interface {v8, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v8

    goto :goto_140

    .line 1788
    :goto_155
    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1789
    invoke-virtual {v7, v4}, Lcom/android/server/am/CachedAppOptimizer;->resolveCompactionProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v7

    move/from16 v37, v9

    .line 1790
    sget-object v9, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v7, v9, :cond_163

    goto/16 :goto_2fb

    .line 1800
    :cond_163
    :try_start_163
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v2

    const-string v2, "Compact "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lastOomAdjReason: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " source: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v5

    move/from16 v26, v6

    const-wide/16 v5, 0x40

    .line 1800
    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1804
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    move-result-wide v5

    .line 1805
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    move-result-wide v18

    .line 1811
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v2

    invoke-interface {v2, v7, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V

    .line 1814
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    move-result-wide v20

    .line 1815
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v2

    invoke-interface {v2, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v23

    move-object v9, v3

    .line 1816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v38, v2, v16

    sub-long v20, v20, v18

    .line 1819
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    move-result-wide v40

    .line 1820
    aget-wide v16, v23, p1

    aget-wide v18, v8, p1

    sub-long v42, v16, v18

    .line 1821
    aget-wide v16, v23, v37

    aget-wide v18, v8, v37

    sub-long v44, v16, v18

    const/16 v33, 0x2

    .line 1822
    aget-wide v16, v23, v33

    aget-wide v18, v8, v33

    move-wide/from16 v46, v5

    sub-long v5, v16, v18

    .line 1823
    aget-wide v16, v23, v36

    aget-wide v18, v8, v36

    sub-long v48, v16, v18

    .line 1824
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v16

    move-object/from16 v50, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    move-object/from16 v51, v8

    move/from16 v8, v37

    if-eq v7, v8, :cond_23b

    move/from16 v8, v36

    if-eq v7, v8, :cond_20f

    .line 1844
    const-string v0, "ActivityManager"

    const-string v1, "Compaction: Unknown requested action"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_201} :catch_20c
    .catchall {:try_start_163 .. :try_end_201} :catchall_207

    const-wide/16 v34, 0x40

    .line 1864
    invoke-static/range {v34 .. v35}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_207
    move-exception v0

    const-wide/16 v34, 0x40

    goto/16 :goto_2fc

    :catch_20c
    move-exception v0

    goto/16 :goto_2d6

    :cond_20f
    move-object v7, v13

    move v8, v14

    neg-long v13, v5

    move/from16 v28, v15

    sub-long v15, v40, v46

    sub-long v17, v13, v15

    const-wide/32 v24, 0xf4240

    .line 1833
    :try_start_21b
    div-long v21, v20, v24

    const/16 v33, 0x2

    .line 1834
    aget-wide v19, v51, v33

    move-wide/from16 v52, v5

    .line 1835
    iget-object v5, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v5, v5, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    iget v1, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    const/16 v37, 0x1

    xor-int/lit8 v29, v8, 0x1

    move/from16 v8, p1

    move/from16 v27, v1

    move/from16 v25, v10

    move/from16 v24, v11

    move-object v10, v5

    move-object v11, v9

    invoke-virtual/range {v10 .. v29}, Lcom/android/server/am/compaction/CompactionStatsManager;->logFullCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJ[JIIIIIZ)V

    goto :goto_24e

    :cond_23b
    move/from16 v8, p1

    move-wide/from16 v52, v5

    move-object v5, v9

    move/from16 v25, v10

    move/from16 v24, v11

    move-object v7, v13

    move/from16 v28, v15

    .line 1826
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v1, v5, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->logSomeCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    .line 1847
    :goto_24e
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1848
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v18

    aget-wide v5, v51, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v37, 0x1

    aget-wide v5, v51, v37

    .line 1849
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v33, 0x2

    aget-wide v5, v51, v33

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v36, 0x3

    aget-wide v5, v51, v36

    .line 1850
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1851
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v28

    .line 1852
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    sub-long v8, v46, v40

    .line 1853
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_2a2} :catch_20c
    .catchall {:try_start_21b .. :try_end_2a2} :catchall_207

    move-object/from16 v24, v1

    move-object/from16 v25, v5

    move-object/from16 v17, v12

    :try_start_2a8
    filled-new-array/range {v16 .. v33}, [Ljava/lang/Object;

    move-result-object v1
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_2a8 .. :try_end_2ac} :catch_2d3
    .catchall {:try_start_2a8 .. :try_end_2ac} :catchall_207

    move-object/from16 v12, v17

    const/16 v5, 0x756f

    .line 1847
    :try_start_2b0
    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1854
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_2bd
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2bd} :catch_20c
    .catchall {:try_start_2b0 .. :try_end_2bd} :catchall_207

    .line 1855
    :try_start_2bd
    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactTime(J)V

    .line 1856
    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V

    .line 1857
    monitor-exit v1
    :try_end_2c4
    .catchall {:try_start_2bd .. :try_end_2c4} :catchall_2cd

    :try_start_2c4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_2c4 .. :try_end_2c7} :catch_20c
    .catchall {:try_start_2c4 .. :try_end_2c7} :catchall_207

    const-wide/16 v34, 0x40

    .line 1864
    :goto_2c9
    invoke-static/range {v34 .. v35}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2fb

    :catchall_2cd
    move-exception v0

    .line 1857
    :try_start_2ce
    monitor-exit v1
    :try_end_2cf
    .catchall {:try_start_2ce .. :try_end_2cf} :catchall_2cd

    :try_start_2cf
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
    :try_end_2d3
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_2d3} :catch_20c
    .catchall {:try_start_2cf .. :try_end_2d3} :catchall_207

    :catch_2d3
    move-exception v0

    move-object/from16 v12, v17

    .line 1860
    :goto_2d6
    :try_start_2d6
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred while compacting pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1860
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f8
    .catchall {:try_start_2d6 .. :try_end_2f8} :catchall_207

    const-wide/16 v34, 0x40

    goto :goto_2c9

    :goto_2fb
    return-void

    .line 1864
    :goto_2fc
    invoke-static/range {v34 .. v35}, Landroid/os/Trace;->traceEnd(J)V

    .line 1865
    throw v0

    .line 1740
    :goto_300
    :try_start_300
    monitor-exit v1
    :try_end_301
    .catchall {:try_start_300 .. :try_end_301} :catchall_aa

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public final shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;)Z
    .registers 2

    .line 1561
    iget-object p0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 1565
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result p0

    const/16 p1, 0xc8

    if-gt p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldRssThrottleCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;ILjava/lang/String;[J)Z
    .registers 15

    const/4 p3, 0x2

    .line 1644
    aget-wide v0, p4, p3

    .line 1645
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    .line 1646
    invoke-virtual {v2, p2}, Lcom/android/server/am/compaction/CompactionStatsManager;->getLastCompactionStats(I)Lcom/android/server/am/compaction/SingleCompactionStats;

    move-result-object p2

    const/4 v2, 0x0

    .line 1648
    aget-wide v3, p4, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x3

    const/4 v7, 0x1

    if-nez v3, :cond_29

    aget-wide v8, p4, v7

    cmp-long v3, v8, v5

    if-nez v3, :cond_29

    aget-wide v8, p4, p3

    cmp-long v3, v8, v5

    if-nez v3, :cond_29

    aget-wide v8, p4, v4

    cmp-long v3, v8, v5

    if-nez v3, :cond_29

    return v7

    .line 1658
    :cond_29
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p1, v3, :cond_72

    .line 1659
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v8, p1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long p1, v8, v5

    if-lez p1, :cond_3e

    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v8, p1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long p1, v0, v8

    if-gez p1, :cond_3e

    return v7

    :cond_3e
    if-eqz p2, :cond_72

    .line 1668
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, p1, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long p1, v0, v5

    if-lez p1, :cond_72

    .line 1669
    invoke-virtual {p2}, Lcom/android/server/am/compaction/SingleCompactionStats;->getRssAfterCompaction()[J

    move-result-object p1

    .line 1670
    aget-wide v0, p4, v7

    aget-wide v5, p1, v7

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    aget-wide v5, p4, p3

    aget-wide p2, p1, p3

    sub-long/2addr v5, p2

    .line 1671
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    add-long/2addr v0, p2

    aget-wide p2, p4, v4

    aget-wide v3, p1, v4

    sub-long/2addr p2, v3

    .line 1672
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 1673
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long p0, v0, p0

    if-gtz p0, :cond_72

    return v7

    :cond_72
    return v2
.end method

.method public final shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 3

    .line 1629
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Z
    .registers 14

    .line 1579
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1582
    invoke-virtual {p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v0

    .line 1583
    invoke-virtual {p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4f

    .line 1592
    sget-object p1, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->APP:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    if-ne p5, p1, :cond_4f

    .line 1593
    sget-object p1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const/4 p5, 0x1

    if-ne p4, p1, :cond_33

    if-ne v0, p1, :cond_25

    sub-long v3, p2, v1

    .line 1594
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v5, p1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    cmp-long p1, v3, v5

    if-ltz p1, :cond_32

    :cond_25
    sget-object p1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v0, p1, :cond_4f

    sub-long/2addr p2, v1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    cmp-long p0, p2, p0

    if-gez p0, :cond_4f

    :cond_32
    return p5

    .line 1607
    :cond_33
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne p4, v3, :cond_4f

    if-ne v0, p1, :cond_43

    sub-long v4, p2, v1

    .line 1608
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v6, p1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    cmp-long p1, v4, v6

    if-ltz p1, :cond_4e

    :cond_43
    if-ne v0, v3, :cond_4f

    sub-long/2addr p2, v1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    cmp-long p0, p2, p0

    if-gez p0, :cond_4f

    :cond_4e
    return p5

    :cond_4f
    const/4 p0, 0x0

    return p0
.end method
