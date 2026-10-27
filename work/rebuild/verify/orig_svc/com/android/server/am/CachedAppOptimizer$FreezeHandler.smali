.class public final Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"

# interfaces
.implements Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public static synthetic $r8$lambda$IAfIfEcFxcOjA58aDQgnJCZBAt4(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->lambda$freezeProcess$2(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JrdK-GOHWyvTveD-A9PVDkKW66c(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->lambda$freezeProcess$1(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dwqBiMSA3Eh5CYi4YkeM0J8Nh5U(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->lambda$handleBinderFreezerFailure$0(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2

    .line 1931
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1932
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method


# virtual methods
.method public final freezeProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 13

    .line 2057
    iget-object v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 2060
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 2062
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 2064
    :try_start_e
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2065
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_19
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1cd

    :cond_1d
    const/4 v0, 0x0

    .line 2067
    :try_start_1e
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 2068
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    .line 2070
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezerOverride(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_65

    .line 2071
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    .line 2072
    const-string p0, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping freeze for process "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " curAdj = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(override)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2072
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_1e .. :try_end_61} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 2078
    :cond_65
    :try_start_65
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    if-eqz v2, :cond_1c8

    .line 2087
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v4

    if-eqz v4, :cond_72

    goto/16 :goto_1c8

    .line 2097
    :cond_72
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "freezing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_65 .. :try_end_90} :catchall_19

    .line 2102
    :try_start_90
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezer(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/Freezer;

    move-result-object v4

    invoke-virtual {v4, v2, v5, v0}, Lcom/android/server/am/Freezer;->freezeBinder(IZI)I

    move-result v4

    if-eqz v4, :cond_d3

    .line 2103
    const-string/jumbo v4, "outstanding txns"

    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->handleBinderFreezerFailure(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/RuntimeException; {:try_start_90 .. :try_end_a2} :catch_a7
    .catchall {:try_start_90 .. :try_end_a2} :catchall_19

    .line 2104
    :try_start_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 2107
    :catch_a7
    :try_start_a7
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to freeze binder for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezeHandler(Lcom/android/server/am/CachedAppOptimizer;)Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2117
    :cond_d3
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v6
    :try_end_d7
    .catchall {:try_start_a7 .. :try_end_d7} :catchall_19

    .line 2120
    :try_start_d7
    iget-object v4, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-static {v4, v2, v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smtraceAppFreeze(Ljava/lang/String;II)V

    .line 2121
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezer(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/Freezer;

    move-result-object v4

    iget v9, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v4, v2, v9, v5}, Lcom/android/server/am/Freezer;->setProcessFrozen(IIZ)V

    .line 2122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeUnfreezeTime(J)V

    .line 2123
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFrozen(Z)V

    .line 2124
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasCollectedFrozenPSS(Z)V

    .line 2125
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFrozenProcesses(Lcom/android/server/am/CachedAppOptimizer;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_fe} :catch_ff
    .catchall {:try_start_d7 .. :try_end_fe} :catchall_19

    goto :goto_11d

    .line 2127
    :catch_ff
    :try_start_ff
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to freeze "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :goto_11d
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    .line 2131
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v0

    .line 2133
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v4

    if-eqz v0, :cond_140

    if-eqz v4, :cond_140

    .line 2134
    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->areAllProcessesFrozen()Z

    move-result v6

    if-eqz v6, :cond_140

    .line 2135
    invoke-virtual {v4, v5}, Lcom/android/server/am/UidRecord;->setFrozen(Z)V

    .line 2137
    iget-object v6, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v4}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v4

    invoke-static {v6, v4, v5}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mpostUidFrozenMessage(Lcom/android/server/am/CachedAppOptimizer;IZ)V

    .line 2139
    :cond_140
    monitor-exit v1
    :try_end_141
    .catchall {:try_start_ff .. :try_end_141} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-nez v0, :cond_147

    goto :goto_191

    .line 2145
    :cond_147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7574

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2148
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v0, 0xfe

    const/4 v1, 0x1

    move-wide v4, v9

    .line 2149
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;JII)V

    .line 2160
    :cond_16f
    :try_start_16f
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezer(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/Freezer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/Freezer;->getBinderFreezeInfo(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1c4

    .line 2163
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_187
    .catch Ljava/lang/RuntimeException; {:try_start_16f .. :try_end_187} :catch_198

    .line 2164
    :try_start_187
    const-string/jumbo v0, "new pending txns"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->handleBinderFreezerFailure(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 2165
    monitor-exit v1
    :try_end_18e
    .catchall {:try_start_187 .. :try_end_18e} :catchall_192

    :try_start_18e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_191
    .catch Ljava/lang/RuntimeException; {:try_start_18e .. :try_end_191} :catch_198

    :goto_191
    return-void

    :catchall_192
    move-exception v0

    :try_start_193
    monitor-exit v1
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_192

    :try_start_194
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
    :try_end_198
    .catch Ljava/lang/RuntimeException; {:try_start_194 .. :try_end_198} :catch_198

    .line 2169
    :catch_198
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to freeze binder for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezeHandler(Lcom/android/server/am/CachedAppOptimizer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2178
    :cond_1c4
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->dispatchFrozenEvent()V

    return-void

    .line 2094
    :cond_1c8
    :goto_1c8
    :try_start_1c8
    monitor-exit v1
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 2139
    :goto_1cd
    :try_start_1cd
    monitor-exit v1
    :try_end_1ce
    .catchall {:try_start_1cd .. :try_end_1ce} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final handleBinderFreezerFailure(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 11

    .line 2001
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-boolean v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    const/16 v1, 0x12

    if-nez v0, :cond_13

    .line 2003
    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p2, p1, v1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 2004
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void

    .line 2015
    :cond_13
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastUsedTimeout()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v4, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    cmp-long v0, v2, v4

    const-string v2, " "

    const-string v3, "ActivityManager"

    if-gtz v0, :cond_56

    .line 2017
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Kill app due to repeated failure to freeze binder: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2017
    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2035
    :cond_56
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastUsedTimeout()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v6, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    div-long/2addr v4, v6

    .line 2037
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v6, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    sub-int/2addr v0, v6

    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 2038
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v6, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reschedule freeze for process "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reschedule freeze "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v2, 0x40

    .line 2042
    const-string v0, "Freezer"

    invoke-static {v2, v3, v0, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 2046
    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p2, p1, v1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 2047
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p0, p1, v4, v5}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mfreezeAppAsyncLSP(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/ProcessRecord;J)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 1937
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x7

    if-eq v0, v1, :cond_93

    const/4 v1, 0x4

    if-eq v0, v1, :cond_77

    const/4 v1, 0x6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_63

    if-eq v0, v2, :cond_51

    const/16 p1, 0x8

    if-eq v0, p1, :cond_14

    return-void

    .line 1981
    :cond_14
    new-instance p1, Landroid/util/IntArray;

    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    .line 1983
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1984
    :try_start_23
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFrozenProcesses(Lcom/android/server/am/CachedAppOptimizer;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_2d
    if-ge v3, v0, :cond_42

    .line 1986
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFrozenProcesses(Lcom/android/server/am/CachedAppOptimizer;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :catchall_3f
    move-exception v0

    move-object p0, v0

    goto :goto_4c

    .line 1988
    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_23 .. :try_end_43} :catchall_3f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1992
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mbinderErrorInternal(Lcom/android/server/am/CachedAppOptimizer;Landroid/util/IntArray;)V

    return-void

    .line 1988
    :goto_4c
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_3f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1975
    :cond_51
    :try_start_51
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLocksReader(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/internal/os/ProcLocksReader;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/os/ProcLocksReader;->handleBlockingFileLocks(Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5a} :catch_5b

    return-void

    .line 1977
    :catch_5b
    const-string p0, "ActivityManager"

    const-string p1, "Unable to check file locks"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1965
    :cond_63
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    move v3, v1

    .line 1966
    :cond_69
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1967
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p0, p1, v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mreportOneUidFrozenStateChanged(Lcom/android/server/am/CachedAppOptimizer;IZ)V

    return-void

    .line 1955
    :cond_77
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1956
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 1957
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 1958
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1959
    iget-object v8, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 1960
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v4, p0

    .line 1962
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->reportUnfreeze(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;I)V

    return-void

    :cond_93
    move-object v4, p0

    .line 1939
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 1940
    iget-object p1, v4, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 1941
    :try_start_a2
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 1942
    monitor-exit p1
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_af

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_af
    move-exception v0

    move-object p0, v0

    goto :goto_d5

    .line 1944
    :cond_b2
    :try_start_b2
    invoke-virtual {v4, p0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->freezeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1945
    monitor-exit p1
    :try_end_b6
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_af

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1946
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 1947
    iget-object p1, v4, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p1, p0}, Lcom/android/server/am/CachedAppOptimizer;->onProcessFrozen(Lcom/android/server/am/ProcessRecord;)V

    .line 1948
    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 p0, 0x3e8

    .line 1949
    invoke-virtual {v4, v2, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1951
    :cond_cf
    iget-object p1, v4, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p1, p0}, Lcom/android/server/am/CachedAppOptimizer;->onProcessFrozenCancelled(Lcom/android/server/am/ProcessRecord;)V

    return-void

    .line 1945
    :goto_d5
    :try_start_d5
    monitor-exit p1
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_af

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$freezeProcess$1(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 2109
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 2110
    :try_start_a
    const-string v0, "Unable to freeze binder interface"

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/16 v3, 0xe

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    .line 2113
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final synthetic lambda$freezeProcess$2(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 2171
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 2172
    :try_start_a
    const-string v0, "Unable to freeze binder interface"

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/16 v3, 0xe

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    .line 2175
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final synthetic lambda$handleBinderFreezerFailure$0(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 2020
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 2023
    :try_start_a
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_17

    .line 2024
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p1

    goto :goto_25

    .line 2026
    :cond_17
    :try_start_17
    const-string v0, "excessive binder traffic during cached"

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/16 v3, 0x9

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    .line 2030
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onBlockingFileLock(Landroid/util/IntArray;)V
    .registers 10

    .line 2206
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2207
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_9b

    const/4 v2, 0x0

    .line 2208
    :try_start_15
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 2209
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFrozenProcesses(Lcom/android/server/am/CachedAppOptimizer;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_92

    const/4 v4, 0x1

    .line 2212
    :goto_28
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_92

    .line 2213
    invoke-virtual {p1, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    .line 2214
    iget-object v6, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v6}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v6
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_8a

    .line 2215
    :try_start_3b
    iget-object v7, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v7}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 2216
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_8f

    if-eqz v7, :cond_8c

    .line 2217
    :try_start_4a
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isFreezable()Z

    move-result v6

    if-nez v6, :cond_8c

    .line 2218
    const-string p1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") blocks "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    const/16 p1, 0x10

    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_89
    .catchall {:try_start_4a .. :try_end_89} :catchall_8a

    goto :goto_92

    :catchall_8a
    move-exception p0

    goto :goto_9d

    :cond_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :catchall_8f
    move-exception p0

    .line 2216
    :try_start_90
    monitor-exit v6
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    :try_start_91
    throw p0

    .line 2226
    :cond_92
    :goto_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_8a

    :try_start_93
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2227
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_9b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_9b
    move-exception p0

    goto :goto_a2

    .line 2226
    :goto_9d
    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_8a

    :try_start_9e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2227
    :goto_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_9e .. :try_end_a3} :catchall_9b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final reportUnfreeze(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;I)V
    .registers 14

    .line 2184
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p4, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7575

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2185
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->onProcessUnfrozen()V

    .line 2188
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_31

    int-to-long v4, p3

    const/4 v6, 0x0

    const/16 v0, 0xfe

    const/4 v1, 0x2

    move v2, p2

    move-object v3, p4

    move v7, p5

    .line 2189
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;JII)V

    :cond_31
    return-void
.end method
