.class public Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public mCacheConfigChanges:Z

.field public mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 488
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 492
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    return-void
.end method


# virtual methods
.method public getValueLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 498
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 501
    :cond_6
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    .line 527
    :goto_2
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 528
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 529
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StateController;->prepareForUpdatedConstantsLocked()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 532
    :cond_1c
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    :try_start_21
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    if-eqz v2, :cond_33

    .line 534
    const-string v2, "jobscheduler"

    new-array v3, v0, [Ljava/lang/String;

    .line 535
    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    goto :goto_33

    :catchall_30
    move-exception p0

    goto/16 :goto_2d5

    .line 537
    :cond_33
    :goto_33
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_4f

    goto :goto_3f

    .line 541
    :cond_4f
    sget-boolean v9, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v9, :cond_57

    iget-boolean v9, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    if-eqz v9, :cond_7a

    .line 542
    :cond_57
    const-string v9, "JobScheduler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceConfig "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " changed to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    .line 543
    invoke-virtual {p1, v7, v11}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 542
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_7a
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2d8

    goto/16 :goto_283

    :sswitch_83
    const-string v9, "abandoned_job_timeouts_before_aggressive_backoff"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_13d

    :sswitch_8d
    const-string v9, "conn_prefetch_relax_frac"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_23a

    :sswitch_97
    const-string/jumbo v9, "runtime_min_ui_guarantee_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_24c

    :sswitch_a2
    const-string/jumbo v9, "runtime_free_quota_max_limit_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_24c

    :sswitch_ad
    const-string/jumbo v9, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_24c

    :sswitch_b8
    const-string/jumbo v9, "max_cpu_only_job_batch_delay_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_1e9

    :sswitch_c3
    const-string/jumbo v9, "persist_in_split_files"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_18d

    :sswitch_ce
    const-string v9, "aq_schedule_throw_exception"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_272

    :sswitch_d8
    const-string/jumbo v9, "system_stop_to_failure_ratio"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto :goto_13d

    :sswitch_e2
    const-string/jumbo v9, "min_ready_non_active_jobs_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_1e9

    :sswitch_ed
    const-string v9, "conn_max_connectivity_job_batch_delay_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_23a

    :sswitch_f7
    const-string/jumbo v9, "runtime_cumulative_ui_limit_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_24c

    :sswitch_102
    const-string/jumbo v9, "min_linear_backoff_time_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto :goto_13d

    :sswitch_10c
    const-string v9, "es_u_timeout_ej_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_272

    :sswitch_116
    const-string v9, "es_u_timeout_window_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_272

    :sswitch_120
    const-string v9, "es_u_timeout_reg_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_272

    :sswitch_12a
    const-string v9, "heavy_use_factor"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_1cc

    :sswitch_134
    const-string/jumbo v9, "min_exp_backoff_time_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    .line 579
    :goto_13d
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBackoffConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_3f

    .line 545
    :sswitch_146
    const-string v9, "es_u_timeout_uij_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_272

    :sswitch_150
    const-string/jumbo v9, "runtime_use_data_estimates_for_limits"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_24c

    :sswitch_15b
    const-string/jumbo v9, "max_non_active_job_batch_delay_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_1e9

    :sswitch_166
    const-string v9, "conn_congestion_delay_frac"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_23a

    :sswitch_170
    const-string v9, "aq_schedule_return_failure"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_272

    :sswitch_17a
    const-string v9, "es_u_anr_window_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_272

    :sswitch_184
    const-string/jumbo v9, "max_num_persisted_job_work_items"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    :goto_18d
    if-nez v5, :cond_3f

    .line 610
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v5}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdatePersistingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 611
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v5, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    invoke-virtual {v7, v5}, Lcom/android/server/job/JobStore;->setUseSplitFiles(Z)V

    move v5, v8

    goto/16 :goto_3f

    .line 545
    :sswitch_1a4
    const-string v9, "conn_low_signal_strength_relax_frac"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_23a

    :sswitch_1ae
    const-string/jumbo v9, "runtime_min_ui_data_transfer_guarantee_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_24c

    :sswitch_1b9
    const-string v9, "es_u_anr_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_272

    :sswitch_1c3
    const-string/jumbo v9, "moderate_use_factor"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    .line 573
    :goto_1cc
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateUseFactorConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_3f

    .line 545
    :sswitch_1d5
    const-string/jumbo v9, "runtime_ui_limit_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto/16 :goto_24c

    :sswitch_1e0
    const-string/jumbo v9, "min_ready_cpu_only_jobs_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    .line 569
    :goto_1e9
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBatchingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_3f

    .line 545
    :sswitch_1f2
    const-string/jumbo v9, "runtime_min_guarantee_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto :goto_24c

    :sswitch_1fc
    const-string v9, "conn_transport_batch_threshold"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto :goto_23a

    :sswitch_205
    const-string v9, "aq_schedule_window_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto :goto_272

    :sswitch_20e
    const-string v9, "enable_execution_safeguards_udc"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto :goto_272

    :sswitch_217
    const-string v9, "conn_update_all_jobs_min_interval_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto :goto_23a

    :sswitch_220
    const-string/jumbo v9, "prefetch_force_batch_relax_threshold_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    .line 591
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdatePrefetchConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_3f

    .line 545
    :sswitch_232
    const-string v9, "conn_use_cell_signal_strength"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    .line 588
    :goto_23a
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateConnectivityConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_3f

    .line 545
    :sswitch_243
    const-string/jumbo v9, "runtime_min_ej_guarantee_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    :goto_24c
    if-nez v6, :cond_3f

    .line 603
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateRuntimeConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    move v6, v8

    goto/16 :goto_3f

    .line 545
    :sswitch_258
    const-string v9, "enable_api_quotas"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto :goto_272

    :sswitch_261
    const-string v9, "aq_schedule_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    goto :goto_272

    :sswitch_26a
    const-string v9, "es_u_timeout_total_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_283

    :goto_272
    if-nez v3, :cond_3f

    .line 560
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateApiQuotaConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 561
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    move v3, v8

    goto/16 :goto_3f

    .line 616
    :cond_283
    :goto_283
    const-string v9, "concurrency_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_297

    if-nez v4, :cond_297

    .line 618
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v4}, Lcom/android/server/job/JobConcurrencyManager;->updateConfigLocked()V

    move v4, v8

    goto/16 :goto_3f

    :cond_297
    move v8, v0

    .line 621
    :goto_298
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v9, v9, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3f

    .line 622
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v9, v9, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/StateController;

    .line 623
    invoke-virtual {v9, p1, v7}, Lcom/android/server/job/controllers/StateController;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_298

    .line 629
    :cond_2b2
    :goto_2b2
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2cc

    .line 630
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/StateController;

    .line 631
    invoke-virtual {p1}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b2

    .line 633
    :cond_2cc
    monitor-exit v1
    :try_end_2cd
    .catchall {:try_start_21 .. :try_end_2cd} :catchall_30

    .line 635
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 633
    :goto_2d5
    :try_start_2d5
    monitor-exit v1
    :try_end_2d6
    .catchall {:try_start_2d5 .. :try_end_2d6} :catchall_30

    throw p0

    nop

    :sswitch_data_2d8
    .sparse-switch
        -0x6e1c1925 -> :sswitch_26a
        -0x6a91caaa -> :sswitch_261
        -0x61ffed04 -> :sswitch_258
        -0x57ab4ebd -> :sswitch_243
        -0x4e49277a -> :sswitch_232
        -0x4bd6b576 -> :sswitch_220
        -0x48789375 -> :sswitch_217
        -0x472b630d -> :sswitch_20e
        -0x3f51c6e4 -> :sswitch_205
        -0x38d906c3 -> :sswitch_1fc
        -0x3816e2ef -> :sswitch_1f2
        -0x34c37a87 -> :sswitch_1e0
        -0x2fdd43f2 -> :sswitch_1d5
        -0x2b109c3d -> :sswitch_1c3
        -0x28f70f26 -> :sswitch_1b9
        -0x2074138d -> :sswitch_1ae
        -0x1d5723de -> :sswitch_1a4
        -0x1673d94c -> :sswitch_184
        -0x8486d60 -> :sswitch_17a
        -0x6861eec -> :sswitch_170
        -0x36a3a91 -> :sswitch_166
        -0x2ba94ab -> :sswitch_15b
        0xcb38358 -> :sswitch_150
        0xddf302d -> :sswitch_146
        0xfb016b2 -> :sswitch_134
        0x11402d7f -> :sswitch_12a
        0x12da7deb -> :sswitch_120
        0x1335a09c -> :sswitch_116
        0x185b7bce -> :sswitch_10c
        0x2a4571b4 -> :sswitch_102
        0x306220f0 -> :sswitch_f7
        0x39707b23 -> :sswitch_ed
        0x3be1abc4 -> :sswitch_e2
        0x46a7f6df -> :sswitch_d8
        0x46ad01bd -> :sswitch_ce
        0x4da62ac3 -> :sswitch_c3
        0x4e8bc38a -> :sswitch_b8
        0x5343e941 -> :sswitch_ad
        0x57aac0d8 -> :sswitch_a2
        0x642d8bb4 -> :sswitch_97
        0x64e397f2 -> :sswitch_8d
        0x76257c6d -> :sswitch_83
    .end sparse-switch
.end method

.method public setCacheConfigChangesLocked(Z)V
    .registers 4

    if-eqz p1, :cond_12

    .line 506
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 507
    new-array v0, v0, [Ljava/lang/String;

    .line 508
    const-string v1, "jobscheduler"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    .line 510
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    .line 512
    :goto_15
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    return-void
.end method

.method public start()V
    .registers 3

    .line 517
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 516
    const-string v1, "jobscheduler"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 v0, 0x0

    .line 518
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
