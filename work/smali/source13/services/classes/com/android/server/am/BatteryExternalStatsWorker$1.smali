.class Lcom/android/server/am/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 427
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .line 439
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v2

    .line 440
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmUpdateFlags(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v0

    move v11, v0

    .line 441
    .local v11, "updateFlags":I
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmCurrentReason(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "reason":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmUidsToRemove(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmUidsToRemove(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    goto :goto_2b

    :cond_29
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :goto_2b
    move-object v12, v0

    .line 443
    .local v12, "uidsToRemove":[I
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmOnBattery(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v6

    .line 444
    .local v6, "onBattery":Z
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmOnBatteryScreenOff(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v7

    .line 445
    .local v7, "onBatteryScreenOff":Z
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmScreenState(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v8

    .line 446
    .local v8, "screenState":I
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmPerDisplayScreenStates(Lcom/android/server/am/BatteryExternalStatsWorker;)[I

    move-result-object v9

    .line 447
    .local v9, "displayScreenStates":[I
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmUseLatestStates(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v10

    .line 448
    .local v10, "useLatestStates":Z
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v13, 0x0

    invoke-static {v0, v13}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmUpdateFlags(Lcom/android/server/am/BatteryExternalStatsWorker;I)V

    .line 449
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmCurrentReason(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)V

    .line 450
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmUidsToRemove(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 451
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmCurrentFuture(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)V

    .line 452
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmUseLatestStates(Lcom/android/server/am/BatteryExternalStatsWorker;Z)V

    .line 453
    and-int/lit8 v0, v11, 0x3f

    const/16 v14, 0x3f

    if-ne v0, v14, :cond_75

    .line 454
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$mcancelSyncDueToBatteryLevelChangeLocked(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    .line 456
    :cond_75
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_7e

    .line 457
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    .line 459
    :cond_7e
    and-int/lit8 v0, v11, 0xe

    const/16 v3, 0xe

    if-ne v0, v3, :cond_89

    .line 460
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToProcessStateChange()V

    .line 462
    :cond_89
    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_5 .. :try_end_8a} :catchall_119

    .line 465
    :try_start_8a
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmWorkerLock(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_91} :catch_e6

    .line 470
    :try_start_91
    iget-object v3, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    move v5, v11

    invoke-static/range {v3 .. v10}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$mupdateExternalStatsLocked(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZI[IZ)V
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_e0

    .line 477
    nop

    .line 478
    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_e3

    .line 480
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_a6

    .line 481
    :try_start_9d
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimesForAllUids()V

    .line 485
    :cond_a6
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ad} :catch_e6

    .line 486
    :try_start_ad
    array-length v0, v12

    move v3, v13

    :goto_af
    if-ge v3, v0, :cond_d2

    aget v5, v12, v3

    .line 487
    .local v5, "uid":I
    const/16 v15, 0x2b

    const/4 v14, -0x1

    invoke-static {v15, v14, v5, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 489
    iget-object v14, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v14}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 489
    move/from16 v16, v5

    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->maybeRemoveIsolatedUidLocked(IJJ)Z

    .line 486
    nop

    .end local v5    # "uid":I
    add-int/lit8 v3, v3, 0x1

    const/16 v14, 0x3f

    goto :goto_af

    .line 492
    :cond_d2
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    .line 493
    monitor-exit v2

    .line 496
    goto :goto_ee

    .line 493
    :catchall_dd
    move-exception v0

    monitor-exit v2
    :try_end_df
    .catchall {:try_start_ad .. :try_end_df} :catchall_dd

    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "screenState":I
    .end local v9    # "displayScreenStates":[I
    .end local v10    # "useLatestStates":Z
    .end local v11    # "updateFlags":I
    .end local v12    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_df
    throw v0
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e0} :catch_e6

    .line 474
    .restart local v4    # "reason":Ljava/lang/String;
    .restart local v6    # "onBattery":Z
    .restart local v7    # "onBatteryScreenOff":Z
    .restart local v8    # "screenState":I
    .restart local v9    # "displayScreenStates":[I
    .restart local v10    # "useLatestStates":Z
    .restart local v11    # "updateFlags":I
    .restart local v12    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catchall_e0
    move-exception v0

    .line 477
    nop

    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "screenState":I
    .end local v9    # "displayScreenStates":[I
    .end local v10    # "useLatestStates":Z
    .end local v11    # "updateFlags":I
    .end local v12    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_e2
    throw v0

    .line 478
    .restart local v4    # "reason":Ljava/lang/String;
    .restart local v6    # "onBattery":Z
    .restart local v7    # "onBatteryScreenOff":Z
    .restart local v8    # "screenState":I
    .restart local v9    # "displayScreenStates":[I
    .restart local v10    # "useLatestStates":Z
    .restart local v11    # "updateFlags":I
    .restart local v12    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catchall_e3
    move-exception v0

    monitor-exit v2
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_e3

    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "screenState":I
    .end local v9    # "displayScreenStates":[I
    .end local v10    # "useLatestStates":Z
    .end local v11    # "updateFlags":I
    .end local v12    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_e5
    throw v0
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e6} :catch_e6

    .line 494
    .restart local v4    # "reason":Ljava/lang/String;
    .restart local v6    # "onBattery":Z
    .restart local v7    # "onBatteryScreenOff":Z
    .restart local v8    # "screenState":I
    .restart local v9    # "displayScreenStates":[I
    .restart local v10    # "useLatestStates":Z
    .restart local v11    # "updateFlags":I
    .restart local v12    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catch_e6
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BatteryExternalStatsWorker"

    const-string v3, "Error updating external stats: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ee
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_101

    .line 499
    iget-object v2, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v2

    .line 500
    :try_start_f5
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-wide/16 v13, 0x0

    invoke-static {v0, v13, v14}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/am/BatteryExternalStatsWorker;J)V

    .line 501
    monitor-exit v2

    goto :goto_118

    :catchall_fe
    move-exception v0

    monitor-exit v2
    :try_end_100
    .catchall {:try_start_f5 .. :try_end_100} :catchall_fe

    throw v0

    .line 502
    :cond_101
    and-int/lit8 v0, v11, 0x3f

    const/16 v2, 0x3f

    if-ne v0, v2, :cond_118

    .line 503
    iget-object v2, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v2

    .line 504
    :try_start_10a
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v0, v13, v14}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/am/BatteryExternalStatsWorker;J)V

    .line 505
    monitor-exit v2

    goto :goto_118

    :catchall_115
    move-exception v0

    monitor-exit v2
    :try_end_117
    .catchall {:try_start_10a .. :try_end_117} :catchall_115

    throw v0

    .line 507
    :cond_118
    :goto_118
    return-void

    .line 462
    .end local v4    # "reason":Ljava/lang/String;
    .end local v6    # "onBattery":Z
    .end local v7    # "onBatteryScreenOff":Z
    .end local v8    # "screenState":I
    .end local v9    # "displayScreenStates":[I
    .end local v10    # "useLatestStates":Z
    .end local v11    # "updateFlags":I
    .end local v12    # "uidsToRemove":[I
    :catchall_119
    move-exception v0

    :try_start_11a
    monitor-exit v2
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    throw v0
.end method
