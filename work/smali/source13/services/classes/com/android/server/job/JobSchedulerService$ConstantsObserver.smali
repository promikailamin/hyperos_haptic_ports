.class Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
.implements Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConstantsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method private constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 361
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$ConstantsObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 10
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "apiQuotaScheduleUpdated":Z
    const/4 v1, 0x0

    .line 380
    .local v1, "concurrencyUpdated":Z
    const/4 v2, 0x0

    .line 381
    .local v2, "runtimeUpdated":Z
    const/4 v3, 0x0

    .local v3, "controller":I
    :goto_4
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1e

    .line 382
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    .line 383
    .local v4, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/StateController;->prepareForUpdatedConstantsLocked()V

    .line 381
    .end local v4    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 386
    .end local v3    # "controller":I
    :cond_1e
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 387
    :try_start_23
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1af

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 388
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_3a

    .line 389
    goto :goto_2b

    .line 391
    :cond_3a
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1d0

    :cond_42
    goto/16 :goto_138

    :sswitch_44
    const-string v7, "conn_prefetch_relax_frac"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0xc

    goto/16 :goto_138

    :sswitch_50
    const-string/jumbo v7, "runtime_free_quota_max_limit_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0x11

    goto/16 :goto_138

    :sswitch_5d
    const-string v7, "aq_schedule_throw_exception"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v6, 0x4

    goto/16 :goto_138

    :sswitch_68
    const-string/jumbo v7, "min_ready_non_active_jobs_count"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v6, 0x5

    goto/16 :goto_138

    :sswitch_74
    const-string/jumbo v7, "min_linear_backoff_time_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0x9

    goto/16 :goto_138

    :sswitch_81
    const-string/jumbo v7, "heavy_use_factor"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v6, 0x7

    goto/16 :goto_138

    :sswitch_8d
    const-string/jumbo v7, "min_exp_backoff_time_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0xa

    goto/16 :goto_138

    :sswitch_9a
    const-string/jumbo v7, "max_non_active_job_batch_delay_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v6, 0x6

    goto/16 :goto_138

    :sswitch_a6
    const-string v7, "conn_congestion_delay_frac"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0xb

    goto/16 :goto_138

    :sswitch_b2
    const-string v7, "aq_schedule_return_failure"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v6, 0x3

    goto/16 :goto_138

    :sswitch_bd
    const-string v7, "conn_low_signal_strength_relax_frac"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0xd

    goto/16 :goto_138

    :sswitch_c9
    const-string/jumbo v7, "moderate_use_factor"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0x8

    goto :goto_138

    :sswitch_d5
    const-string/jumbo v7, "runtime_min_guarantee_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0x12

    goto :goto_138

    :sswitch_e1
    const-string v7, "aq_schedule_window_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v6, 0x2

    goto :goto_138

    :sswitch_eb
    const-string v7, "conn_update_all_jobs_min_interval_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0xf

    goto :goto_138

    :sswitch_f6
    const-string/jumbo v7, "runtime_min_high_priority_guarantee_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0x14

    goto :goto_138

    :sswitch_102
    const-string/jumbo v7, "prefetch_force_batch_relax_threshold_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0x10

    goto :goto_138

    :sswitch_10e
    const-string v7, "conn_use_cell_signal_strength"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0xe

    goto :goto_138

    :sswitch_119
    const-string/jumbo v7, "runtime_min_ej_guarantee_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 v6, 0x13

    goto :goto_138

    :sswitch_125
    const-string v7, "enable_api_quotas"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v6, 0x0

    goto :goto_138

    :sswitch_12f
    const-string v7, "aq_schedule_count"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v6, 0x1

    :goto_138
    packed-switch v6, :pswitch_data_226

    .line 435
    const-string v6, "concurrency_"

    goto :goto_181

    .line 429
    :pswitch_13e
    if-nez v2, :cond_1ad

    .line 430
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateRuntimeConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 431
    const/4 v2, 0x1

    goto :goto_1ad

    .line 423
    :pswitch_149
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdatePrefetchConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 424
    goto :goto_1ad

    .line 420
    :pswitch_151
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateConnectivityConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 421
    goto :goto_1ad

    .line 413
    :pswitch_159
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBackoffConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 414
    goto :goto_1ad

    .line 409
    :pswitch_161
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateUseFactorConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 410
    goto :goto_1ad

    .line 405
    :pswitch_169
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBatchingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 406
    goto :goto_1ad

    .line 397
    :pswitch_171
    if-nez v0, :cond_1ad

    .line 398
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateApiQuotaConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 399
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    .line 400
    const/4 v0, 0x1

    goto :goto_1ad

    .line 435
    :goto_181
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_192

    if-nez v1, :cond_192

    .line 437
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v6}, Lcom/android/server/job/JobConcurrencyManager;->updateConfigLocked()V

    .line 438
    const/4 v1, 0x1

    goto :goto_1ad

    .line 440
    :cond_192
    const/4 v6, 0x0

    .local v6, "ctrlr":I
    :goto_193
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1ad

    .line 441
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    .line 442
    .local v7, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v7, p1, v5}, Lcom/android/server/job/controllers/StateController;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    .line 440
    .end local v7    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v6, v6, 0x1

    goto :goto_193

    .line 447
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "ctrlr":I
    :cond_1ad
    :goto_1ad
    goto/16 :goto_2b

    .line 448
    :cond_1af
    const/4 v4, 0x0

    .local v4, "controller":I
    :goto_1b0
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1ca

    .line 449
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/StateController;

    .line 450
    .local v5, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v5}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    .line 448
    .end local v5    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b0

    .line 452
    .end local v4    # "controller":I
    :cond_1ca
    monitor-exit v3

    .line 453
    return-void

    .line 452
    :catchall_1cc
    move-exception v4

    monitor-exit v3
    :try_end_1ce
    .catchall {:try_start_23 .. :try_end_1ce} :catchall_1cc

    throw v4

    nop

    :sswitch_data_1d0
    .sparse-switch
        -0x6a91caaa -> :sswitch_12f
        -0x61ffed04 -> :sswitch_125
        -0x57ab4ebd -> :sswitch_119
        -0x4e49277a -> :sswitch_10e
        -0x4bd6b576 -> :sswitch_102
        -0x4b6d7211 -> :sswitch_f6
        -0x48789375 -> :sswitch_eb
        -0x3f51c6e4 -> :sswitch_e1
        -0x3816e2ef -> :sswitch_d5
        -0x2b109c3d -> :sswitch_c9
        -0x1d5723de -> :sswitch_bd
        -0x6861eec -> :sswitch_b2
        -0x36a3a91 -> :sswitch_a6
        -0x2ba94ab -> :sswitch_9a
        0xfb016b2 -> :sswitch_8d
        0x11402d7f -> :sswitch_81
        0x2a4571b4 -> :sswitch_74
        0x3be1abc4 -> :sswitch_68
        0x46ad01bd -> :sswitch_5d
        0x57aac0d8 -> :sswitch_50
        0x64e397f2 -> :sswitch_44
    .end sparse-switch

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_169
        :pswitch_169
        :pswitch_161
        :pswitch_161
        :pswitch_159
        :pswitch_159
        :pswitch_151
        :pswitch_151
        :pswitch_151
        :pswitch_151
        :pswitch_151
        :pswitch_149
        :pswitch_13e
        :pswitch_13e
        :pswitch_13e
        :pswitch_13e
    .end packed-switch
.end method

.method public onTareEnabledStateChanged(Z)V
    .registers 4
    .param p1, "isTareEnabled"    # Z

    .line 457
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateTareSettingsLocked(Lcom/android/server/job/JobSchedulerService$Constants;Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 458
    const/4 v0, 0x0

    .local v0, "controller":I
    :goto_b
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 459
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 460
    .local v1, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    .line 458
    .end local v1    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 462
    .end local v0    # "controller":I
    :cond_25
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 464
    :cond_2b
    return-void
.end method

.method public start()V
    .registers 5

    .line 364
    const-string/jumbo v0, "jobscheduler"

    .line 365
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 364
    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 366
    const-class v0, Lcom/android/server/tare/EconomyManagerInternal;

    .line 367
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal;

    .line 368
    .local v0, "economyManagerInternal":Lcom/android/server/tare/EconomyManagerInternal;
    invoke-interface {v0, p0}, Lcom/android/server/tare/EconomyManagerInternal;->registerTareStateChangeListener(Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;)V

    .line 370
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-interface {v0}, Lcom/android/server/tare/EconomyManagerInternal;->isEnabled()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateTareSettingsLocked(Lcom/android/server/job/JobSchedulerService$Constants;Z)Z

    .line 372
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_34

    .line 373
    const-string/jumbo v1, "jobscheduler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 374
    return-void

    .line 372
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2
.end method
