.class final Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"

# interfaces
.implements Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FreezeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method private constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2

    .line 1934
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1935
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1936
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$FreezeHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method

.method private freezeProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 14
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1968
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 1969
    .local v0, "pid":I
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1972
    .local v7, "name":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1974
    .local v8, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1976
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v2

    monitor-enter v2

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1977
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    move v0, v3

    .line 1978
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    const/16 v4, 0x384

    if-lt v3, v4, :cond_20c

    .line 1979
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v3

    if-eqz v3, :cond_2d

    goto/16 :goto_20c

    .line 1988
    :cond_2d
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezerOverride(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_76

    .line 1989
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    .line 1990
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping freeze for process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " curAdj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1991
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(override)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1990
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_13 .. :try_end_72} :catchall_255

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1996
    :cond_76
    if-eqz v0, :cond_207

    :try_start_78
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v3

    if-eqz v3, :cond_80

    goto/16 :goto_207

    .line 2002
    :cond_80
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "freezing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_78 .. :try_end_a2} :catchall_255

    .line 2007
    :try_start_a2
    invoke-static {v0, v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smfreezeBinder(IZ)I

    move-result v3

    if-eqz v3, :cond_b3

    .line 2008
    const-string/jumbo v3, "outstanding txns"

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->rescheduleFreeze(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/RuntimeException; {:try_start_a2 .. :try_end_ae} :catch_b4
    .catchall {:try_start_a2 .. :try_end_ae} :catchall_255

    .line 2009
    :try_start_ae
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_255

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 2020
    :cond_b3
    goto :goto_e5

    .line 2011
    :catch_b4
    move-exception v3

    .line 2012
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_b5
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to freeze binder for "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    iget-object v5, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v5}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezeHandler(Lcom/android/server/am/CachedAppOptimizer;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2022
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_e5
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v5
    :try_end_e9
    .catchall {:try_start_b5 .. :try_end_e9} :catchall_255

    .line 2025
    .local v5, "unfreezeTime":J
    :try_start_e9
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v3, v4}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    .line 2027
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeUnfreezeTime(J)V

    .line 2028
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFrozen(Z)V

    .line 2029
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFrozenProcesses(Lcom/android/server/am/CachedAppOptimizer;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_101} :catch_102
    .catchall {:try_start_e9 .. :try_end_101} :catchall_255

    .line 2032
    goto :goto_125

    .line 2030
    :catch_102
    move-exception v3

    .line 2031
    .local v3, "e":Ljava/lang/Exception;
    :try_start_103
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to freeze "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_125
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    .line 2035
    .local v9, "unfrozenDuration":J
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v3

    move v11, v3

    .line 2036
    .end local v5    # "unfreezeTime":J
    .local v11, "frozen":Z
    monitor-exit v2
    :try_end_130
    .catchall {:try_start_103 .. :try_end_130} :catchall_255

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2038
    if-nez v11, :cond_136

    .line 2039
    return-void

    .line 2042
    :cond_136
    const/16 v2, 0x7574

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    aput-object v7, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2045
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_161

    .line 2046
    const/16 v1, 0xfe

    const/4 v2, 0x1

    move v3, v0

    move-object v4, v7

    move-wide v5, v9

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;J)V

    .line 2055
    :cond_161
    :try_start_161
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetBinderFreezeInfo(I)I

    move-result v1

    .line 2057
    .local v1, "freezeInfo":I
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_184

    .line 2058
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_170
    .catch Ljava/lang/RuntimeException; {:try_start_161 .. :try_end_170} :catch_185

    :try_start_170
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2059
    const-string/jumbo v3, "new pending txns"

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->rescheduleFreeze(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 2060
    monitor-exit v2
    :try_end_17a
    .catchall {:try_start_170 .. :try_end_17a} :catchall_17e

    :try_start_17a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_17d
    .catch Ljava/lang/RuntimeException; {:try_start_17a .. :try_end_17d} :catch_185

    .line 2061
    return-void

    .line 2060
    :catchall_17e
    move-exception v3

    :try_start_17f
    monitor-exit v2
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    :try_start_180
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v0    # "pid":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v9    # "unfrozenDuration":J
    .end local v11    # "frozen":Z
    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;
    .end local p1    # "proc":Lcom/android/server/am/ProcessRecord;
    throw v3
    :try_end_184
    .catch Ljava/lang/RuntimeException; {:try_start_180 .. :try_end_184} :catch_185

    .line 2072
    .end local v1    # "freezeInfo":I
    .restart local v0    # "pid":I
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v9    # "unfrozenDuration":J
    .restart local v11    # "frozen":Z
    .restart local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;
    .restart local p1    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_184
    goto :goto_1b6

    .line 2063
    :catch_185
    move-exception v1

    .line 2064
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to freeze binder for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezeHandler(Lcom/android/server/am/CachedAppOptimizer;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2076
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1b6
    :try_start_1b6
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLocksReader(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/internal/os/ProcLocksReader;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/os/ProcLocksReader;->handleBlockingFileLocks(Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;)V
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1bf} :catch_1c0

    .line 2082
    goto :goto_200

    .line 2077
    :catch_1c0
    move-exception v1

    .line 2078
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to check file locks for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v3

    monitor-enter v3

    :try_start_1f4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2080
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 2081
    monitor-exit v3
    :try_end_1fd
    .catchall {:try_start_1f4 .. :try_end_1fd} :catchall_201

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2083
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_200
    return-void

    .line 2081
    .restart local v1    # "e":Ljava/lang/Exception;
    :catchall_201
    move-exception v2

    :try_start_202
    monitor-exit v3
    :try_end_203
    .catchall {:try_start_202 .. :try_end_203} :catchall_201

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2

    .line 1999
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v9    # "unfrozenDuration":J
    .end local v11    # "frozen":Z
    :cond_207
    :goto_207
    :try_start_207
    monitor-exit v2
    :try_end_208
    .catchall {:try_start_207 .. :try_end_208} :catchall_255

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1980
    :cond_20c
    :goto_20c
    :try_start_20c
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v1, :cond_250

    .line 1981
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping freeze for process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " curAdj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1982
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shouldNotFreeze = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1983
    invoke-virtual {v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1981
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_250
    monitor-exit v2
    :try_end_251
    .catchall {:try_start_20c .. :try_end_251} :catchall_255

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 2036
    :catchall_255
    move-exception v1

    :try_start_256
    monitor-exit v2
    :try_end_257
    .catchall {:try_start_256 .. :try_end_257} :catchall_255

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method private reportUnfreeze(IILjava/lang/String;)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "frozenDuration"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .line 2087
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/16 v2, 0x7575

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2090
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_29

    .line 2091
    const/16 v1, 0xfe

    invoke-static {v1, v0, p1, p3, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    .line 2098
    :cond_29
    return-void
.end method

.method private rescheduleFreeze(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reschedule freeze for process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1963
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1964
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1940
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 1954
    return-void

    .line 1947
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1948
    .local v0, "pid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1949
    .local v1, "frozenDuration":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1951
    .local v2, "processName":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->reportUnfreeze(IILjava/lang/String;)V

    .line 1952
    goto :goto_28

    .line 1942
    .end local v0    # "pid":I
    .end local v1    # "frozenDuration":I
    .end local v2    # "processName":Ljava/lang/String;
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1943
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->freezeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1944
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1945
    nop

    .line 1956
    :goto_28
    return-void

    .line 1944
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    nop

    :pswitch_data_30
    .packed-switch 0x3
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method

.method synthetic lambda$freezeProcess$0$com-android-server-am-CachedAppOptimizer$FreezeHandler(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 2014
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2015
    const-string v1, "Unable to freeze binder interface"

    const/16 v2, 0xe

    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 2018
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2019
    return-void

    .line 2018
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$freezeProcess$1$com-android-server-am-CachedAppOptimizer$FreezeHandler(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 2066
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2067
    const-string v1, "Unable to freeze binder interface"

    const/16 v2, 0xe

    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 2070
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2071
    return-void

    .line 2070
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onBlockingFileLock(I)V
    .registers 7
    .param p1, "pid"    # I

    .line 2103
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v0, :cond_22

    .line 2104
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") holds blocking file lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2107
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFrozenProcesses(Lcom/android/server/am/CachedAppOptimizer;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2108
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_63

    .line 2109
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") holds blocking file lock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, v1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 2112
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_29 .. :try_end_64} :catchall_68

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2113
    return-void

    .line 2112
    :catchall_68
    move-exception v1

    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method
