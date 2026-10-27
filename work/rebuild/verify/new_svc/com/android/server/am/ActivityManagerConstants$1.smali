.class public Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 2

    .line 1203
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 11

    .line 1207
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x18

    if-eqz v3, :cond_59b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1c

    goto/16 :goto_5aa

    .line 1211
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "freezer_cutoff_adj"

    const/4 v7, 0x1

    const/4 v8, -0x1

    sparse-switch v5, :sswitch_data_5ac

    :goto_2a
    move v4, v8

    goto/16 :goto_3e5

    :sswitch_2d
    const-string v4, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_2a

    :cond_36
    const/16 v4, 0x43

    goto/16 :goto_3e5

    :sswitch_3a
    const-string/jumbo v4, "service_bind_almost_perceptible_timeout_ms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_2a

    :cond_44
    const/16 v4, 0x42

    goto/16 :goto_3e5

    :sswitch_48
    const-string/jumbo v4, "tiered_cached_adj_ui_tier_size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto :goto_2a

    :cond_52
    const/16 v4, 0x41

    goto/16 :goto_3e5

    :sswitch_56
    const-string v4, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto :goto_2a

    :cond_5f
    const/16 v4, 0x40

    goto/16 :goto_3e5

    :sswitch_63
    const-string v4, "deferred_fgs_notification_interval_for_short"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    goto :goto_2a

    :cond_6c
    const/16 v4, 0x3f

    goto/16 :goto_3e5

    :sswitch_70
    const-string v4, "fgs_start_foreground_timeout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    goto :goto_2a

    :cond_79
    const/16 v4, 0x3e

    goto/16 :goto_3e5

    :sswitch_7d
    const-string v4, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    goto :goto_2a

    :cond_86
    const/16 v4, 0x3d

    goto/16 :goto_3e5

    :sswitch_8a
    const-string/jumbo v4, "use_tiered_cached_adj"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    goto :goto_2a

    :cond_94
    const/16 v4, 0x3c

    goto/16 :goto_3e5

    :sswitch_98
    const-string v4, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a1

    goto :goto_2a

    :cond_a1
    const/16 v4, 0x3b

    goto/16 :goto_3e5

    :sswitch_a5
    const-string/jumbo v4, "proc_state_debug_uids"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b0

    goto/16 :goto_2a

    :cond_b0
    const/16 v4, 0x3a

    goto/16 :goto_3e5

    :sswitch_b4
    const-string v4, "follow_up_oomadj_update_wait_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    goto/16 :goto_2a

    :cond_be
    const/16 v4, 0x39

    goto/16 :goto_3e5

    :sswitch_c2
    const-string v4, "enable_wait_for_finish_attach_application"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cc

    goto/16 :goto_2a

    :cond_cc
    const/16 v4, 0x38

    goto/16 :goto_3e5

    :sswitch_d0
    const-string v4, "deferred_fgs_notifications_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_da

    goto/16 :goto_2a

    :cond_da
    const/16 v4, 0x37

    goto/16 :goto_3e5

    :sswitch_de
    const-string v4, "extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e8

    goto/16 :goto_2a

    :cond_e8
    const/16 v4, 0x36

    goto/16 :goto_3e5

    :sswitch_ec
    const-string v4, "disable_app_profiler_pss_profiling"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f6

    goto/16 :goto_2a

    :cond_f6
    const/16 v4, 0x35

    goto/16 :goto_3e5

    :sswitch_fa
    const-string/jumbo v4, "media_processing_fgs_timeout_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_105

    goto/16 :goto_2a

    :cond_105
    const/16 v4, 0x34

    goto/16 :goto_3e5

    :sswitch_109
    const-string/jumbo v4, "short_fgs_proc_state_extra_wait_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_114

    goto/16 :goto_2a

    :cond_114
    const/16 v4, 0x33

    goto/16 :goto_3e5

    :sswitch_118
    const-string/jumbo v4, "kill_bg_restricted_cached_idle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_123

    goto/16 :goto_2a

    :cond_123
    const/16 v4, 0x32

    goto/16 :goto_3e5

    :sswitch_127
    const-string v4, "boot_time_temp_allowlist_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_131

    goto/16 :goto_2a

    :cond_131
    const/16 v4, 0x31

    goto/16 :goto_3e5

    :sswitch_135
    const-string/jumbo v4, "low_swap_threshold_percent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_140

    goto/16 :goto_2a

    :cond_140
    const/16 v4, 0x30

    goto/16 :goto_3e5

    :sswitch_144
    const-string v4, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14e

    goto/16 :goto_2a

    :cond_14e
    const/16 v4, 0x2f

    goto/16 :goto_3e5

    :sswitch_152
    const-string/jumbo v4, "no_kill_cached_processes_until_boot_completed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15d

    goto/16 :goto_2a

    :cond_15d
    const/16 v4, 0x2e

    goto/16 :goto_3e5

    :sswitch_161
    const-string v4, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16b

    goto/16 :goto_2a

    :cond_16b
    const/16 v4, 0x2d

    goto/16 :goto_3e5

    :sswitch_16f
    const-string v4, "deferred_fgs_notification_exclusion_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_179

    goto/16 :goto_2a

    :cond_179
    const/16 v4, 0x2c

    goto/16 :goto_3e5

    :sswitch_17d
    const-string v4, "enable_extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_187

    goto/16 :goto_2a

    :cond_187
    const/16 v4, 0x2b

    goto/16 :goto_3e5

    :sswitch_18b
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_193

    goto/16 :goto_2a

    :cond_193
    const/16 v4, 0x2a

    goto/16 :goto_3e5

    :sswitch_197
    const-string/jumbo v4, "system_exempt_power_restrictions_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a2

    goto/16 :goto_2a

    :cond_1a2
    const/16 v4, 0x29

    goto/16 :goto_3e5

    :sswitch_1a6
    const-string/jumbo v4, "proactive_kills_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b1

    goto/16 :goto_2a

    :cond_1b1
    const/16 v4, 0x28

    goto/16 :goto_3e5

    :sswitch_1b5
    const-string/jumbo v4, "tiered_cached_adj_decay_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c0

    goto/16 :goto_2a

    :cond_1c0
    const/16 v4, 0x27

    goto/16 :goto_3e5

    :sswitch_1c4
    const-string v4, "defer_boot_completed_broadcast"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ce

    goto/16 :goto_2a

    :cond_1ce
    const/16 v4, 0x26

    goto/16 :goto_3e5

    :sswitch_1d2
    const-string v4, "fgs_crash_extra_wait_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1dc

    goto/16 :goto_2a

    :cond_1dc
    const/16 v4, 0x25

    goto/16 :goto_3e5

    :sswitch_1e0
    const-string v4, "imperceptible_kill_exempt_packages"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ea

    goto/16 :goto_2a

    :cond_1ea
    const/16 v4, 0x24

    goto/16 :goto_3e5

    :sswitch_1ee
    const-string/jumbo v4, "top_to_fgs_grace_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f9

    goto/16 :goto_2a

    :cond_1f9
    const/16 v4, 0x23

    goto/16 :goto_3e5

    :sswitch_1fd
    const-string v4, "deferred_fgs_notifications_api_gated"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_207

    goto/16 :goto_2a

    :cond_207
    const/16 v4, 0x22

    goto/16 :goto_3e5

    :sswitch_20b
    const-string/jumbo v4, "no_kill_cached_processes_post_boot_completed_duration_millis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_216

    goto/16 :goto_2a

    :cond_216
    const/16 v4, 0x21

    goto/16 :goto_3e5

    :sswitch_21a
    const-string/jumbo v4, "push_messaging_over_quota_behavior"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_225

    goto/16 :goto_2a

    :cond_225
    const/16 v4, 0x20

    goto/16 :goto_3e5

    :sswitch_229
    const-string v4, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_233

    goto/16 :goto_2a

    :cond_233
    const/16 v4, 0x1f

    goto/16 :goto_3e5

    :sswitch_237
    const-string v4, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_241

    goto/16 :goto_2a

    :cond_241
    const/16 v4, 0x1e

    goto/16 :goto_3e5

    :sswitch_245
    const-string v4, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24f

    goto/16 :goto_2a

    :cond_24f
    const/16 v4, 0x1d

    goto/16 :goto_3e5

    :sswitch_253
    const-string/jumbo v4, "pss_to_rss_threshold_modifier"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25e

    goto/16 :goto_2a

    :cond_25e
    const/16 v4, 0x1c

    goto/16 :goto_3e5

    :sswitch_262
    const-string/jumbo v4, "service_start_foreground_timeout_ms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26d

    goto/16 :goto_2a

    :cond_26d
    const/16 v4, 0x1b

    goto/16 :goto_3e5

    :sswitch_271
    const-string v4, "fgs_atom_sample_rate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27b

    goto/16 :goto_2a

    :cond_27b
    const/16 v4, 0x1a

    goto/16 :goto_3e5

    :sswitch_27f
    const-string/jumbo v4, "prioritize_alarm_broadcasts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28a

    goto/16 :goto_2a

    :cond_28a
    const/16 v4, 0x19

    goto/16 :goto_3e5

    :sswitch_28e
    const-string/jumbo v5, "process_kill_timeout"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e5

    goto/16 :goto_2a

    :sswitch_299
    const-string/jumbo v4, "min_assoc_log_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a4

    goto/16 :goto_2a

    :cond_2a4
    const/16 v4, 0x17

    goto/16 :goto_3e5

    :sswitch_2a8
    const-string/jumbo v4, "network_access_timeout_ms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b3

    goto/16 :goto_2a

    :cond_2b3
    const/16 v4, 0x16

    goto/16 :goto_3e5

    :sswitch_2b7
    const-string v4, "data_sync_fgs_timeout_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c1

    goto/16 :goto_2a

    :cond_2c1
    const/16 v4, 0x15

    goto/16 :goto_3e5

    :sswitch_2c5
    const-string/jumbo v4, "max_empty_time_millis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d0

    goto/16 :goto_2a

    :cond_2d0
    const/16 v4, 0x14

    goto/16 :goto_3e5

    :sswitch_2d4
    const-string/jumbo v4, "max_cached_processes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2df

    goto/16 :goto_2a

    :cond_2df
    const/16 v4, 0x13

    goto/16 :goto_3e5

    :sswitch_2e3
    const-string v4, "force_bg_check_on_restricted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2ed

    goto/16 :goto_2a

    :cond_2ed
    const/16 v4, 0x12

    goto/16 :goto_3e5

    :sswitch_2f1
    const-string v4, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2fb

    goto/16 :goto_2a

    :cond_2fb
    const/16 v4, 0x11

    goto/16 :goto_3e5

    :sswitch_2ff
    const-string/jumbo v4, "short_fgs_timeout_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30a

    goto/16 :goto_2a

    :cond_30a
    const/16 v4, 0x10

    goto/16 :goto_3e5

    :sswitch_30e
    const-string/jumbo v4, "max_phantom_processes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_319

    goto/16 :goto_2a

    :cond_319
    const/16 v4, 0xf

    goto/16 :goto_3e5

    :sswitch_31d
    const-string v4, "deferred_fgs_notification_interval"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_327

    goto/16 :goto_2a

    :cond_327
    const/16 v4, 0xe

    goto/16 :goto_3e5

    :sswitch_32b
    const-string/jumbo v4, "max_previous_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_336

    goto/16 :goto_2a

    :cond_336
    const/16 v4, 0xd

    goto/16 :goto_3e5

    :sswitch_33a
    const-string/jumbo v4, "oomadj_update_policy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_345

    goto/16 :goto_2a

    :cond_345
    const/16 v4, 0xc

    goto/16 :goto_3e5

    :sswitch_349
    const-string/jumbo v4, "vis_to_invis_uij_schedule_grace_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_354

    goto/16 :goto_2a

    :cond_354
    const/16 v4, 0xb

    goto/16 :goto_3e5

    :sswitch_358
    const-string/jumbo v4, "max_service_connections_per_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_363

    goto/16 :goto_2a

    :cond_363
    const/16 v4, 0xa

    goto/16 :goto_3e5

    :sswitch_367
    const-string v4, "deferred_fgs_notification_exclusion_time_for_short"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_371

    goto/16 :goto_2a

    :cond_371
    const/16 v4, 0x9

    goto/16 :goto_3e5

    :sswitch_375
    const-string v4, "fgs_start_denied_log_sample_rate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37f

    goto/16 :goto_2a

    :cond_37f
    const/16 v4, 0x8

    goto/16 :goto_3e5

    :sswitch_383
    const-string v4, "fgs_allow_opt_out"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38d

    goto/16 :goto_2a

    :cond_38d
    const/4 v4, 0x7

    goto :goto_3e5

    :sswitch_38f
    const-string v4, "default_background_activity_starts_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_399

    goto/16 :goto_2a

    :cond_399
    const/4 v4, 0x6

    goto :goto_3e5

    :sswitch_39b
    const-string v4, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a5

    goto/16 :goto_2a

    :cond_3a5
    const/4 v4, 0x5

    goto :goto_3e5

    :sswitch_3a7
    const-string/jumbo v4, "service_start_foreground_anr_delay_ms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b2

    goto/16 :goto_2a

    :cond_3b2
    const/4 v4, 0x4

    goto :goto_3e5

    :sswitch_3b4
    const-string v4, "default_fgs_starts_restriction_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3be

    goto/16 :goto_2a

    :cond_3be
    const/4 v4, 0x3

    goto :goto_3e5

    :sswitch_3c0
    const-string/jumbo v4, "kill_bg_restricted_cached_idle_settle_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3cb

    goto/16 :goto_2a

    :cond_3cb
    const/4 v4, 0x2

    goto :goto_3e5

    :sswitch_3cd
    const-string/jumbo v4, "short_fgs_anr_extra_wait_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d8

    goto/16 :goto_2a

    :cond_3d8
    move v4, v7

    goto :goto_3e5

    :sswitch_3da
    const-string v4, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e4

    goto/16 :goto_2a

    :cond_3e4
    move v4, v1

    :cond_3e5
    :goto_3e5
    packed-switch v4, :pswitch_data_6be

    .line 1403
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v4, v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFGSPermissionEnforcementFlagsIfNecessary(Lcom/android/server/am/ActivityManagerConstants;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1330
    :pswitch_3ef
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceBindAlmostPerceptibleTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1243
    :pswitch_3f6
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralIntervalForShort(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1288
    :pswitch_3fd
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartForegroundTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1397
    :pswitch_404
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProcStateDebugUids(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1400
    :pswitch_40b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFollowUpOomAdjUpdateWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1375
    :pswitch_412
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateEnableWaitForFinishAttachApplication(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1231
    :pswitch_419
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralEnable(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1309
    :pswitch_420
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1391
    :pswitch_427
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDisableAppProfilerPssProfiling(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1354
    :pswitch_42e
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMediaProcessingFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1351
    :pswitch_435
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateShortFgsProcStateExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1300
    :pswitch_43c
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdle(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1279
    :pswitch_443
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBootTimeTempAllowListDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1369
    :pswitch_44a
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateLowSwapThresholdPercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1282
    :pswitch_451
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1333
    :pswitch_458
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesUntilBootCompleted(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1228
    :pswitch_45f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionCheckCallerTargetSdk(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1240
    :pswitch_466
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralExclusionTime(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1312
    :pswitch_46d
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateEnableExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1386
    :pswitch_474
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$sfgetDEFAULT_FREEZER_CUTOFF_ADJ()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    move v2, v7

    goto/16 :goto_a

    .line 1249
    :pswitch_483
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateSystemExemptPowerRestrictionsEnabled(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1366
    :pswitch_48a
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProactiveKillsEnabled(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1383
    :pswitch_491
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateUseTieredCachedAdj(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1321
    :pswitch_498
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDeferBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1363
    :pswitch_49f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsCrashExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1372
    :pswitch_4a6
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateTopToFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1234
    :pswitch_4ad
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralApiGated(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1336
    :pswitch_4b4
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesPostBootCompletedDurationMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1252
    :pswitch_4bb
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePushMessagingOverQuotaBehavior(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1225
    :pswitch_4c2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionNotification(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1294
    :pswitch_4c9
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartAllowedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1394
    :pswitch_4d0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePssToRssThresholdModifier(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1324
    :pswitch_4d7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1291
    :pswitch_4de
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAtomSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1318
    :pswitch_4e5
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePrioritizeAlarmBroadcasts(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1315
    :pswitch_4ec
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProcessKillTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1265
    :pswitch_4f3
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMinAssocLogDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1342
    :pswitch_4fa
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNetworkAccessTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1357
    :pswitch_501
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDataSyncFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1339
    :pswitch_508
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxEmptyTimeMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1213
    :pswitch_50f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxCachedProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1262
    :pswitch_516
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateForceRestrictedBackgroundCheck(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1219
    :pswitch_51d
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1348
    :pswitch_524
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateShortFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1276
    :pswitch_52b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxPhantomProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1237
    :pswitch_532
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralInterval(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1378
    :pswitch_539
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxPreviousTime(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1255
    :pswitch_540
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateOomAdjUpdatePolicy(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1285
    :pswitch_547
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1345
    :pswitch_54e
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxServiceConnectionsPerProcess(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1246
    :pswitch_555
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralExclusionTimeForShort(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1297
    :pswitch_55c
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartDeniedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1306
    :pswitch_563
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAllowOptOut(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1216
    :pswitch_56a
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundActivityStarts(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1273
    :pswitch_571
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBinderHeavyHitterWatcher(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1327
    :pswitch_578
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundAnrDealyMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1222
    :pswitch_57f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1303
    :pswitch_586
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdleSettleTime(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1360
    :pswitch_58d
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateShortFgsAnrExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    .line 1259
    :pswitch_594
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateImperceptibleKillExemptions(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_a

    :cond_59b
    if-eqz v2, :cond_5aa

    .line 1408
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_5aa

    .line 1411
    invoke-virtual {p0, v4}, Landroid/app/ActivityManagerInternal;->updateOomAdj(I)V

    :cond_5aa
    :goto_5aa
    return-void

    nop

    :sswitch_data_5ac
    .sparse-switch
        -0x7ba4b562 -> :sswitch_3da
        -0x798468db -> :sswitch_3cd
        -0x76fa06f8 -> :sswitch_3c0
        -0x719878d5 -> :sswitch_3b4
        -0x71781c6f -> :sswitch_3a7
        -0x6d209d2c -> :sswitch_39b
        -0x6a37b8d0 -> :sswitch_38f
        -0x62f6cce1 -> :sswitch_383
        -0x61c0c900 -> :sswitch_375
        -0x5f5f6d14 -> :sswitch_367
        -0x58658d02 -> :sswitch_358
        -0x569d8d6f -> :sswitch_349
        -0x53dc231d -> :sswitch_33a
        -0x4f213486 -> :sswitch_32b
        -0x4db39f74 -> :sswitch_31d
        -0x48c35170 -> :sswitch_30e
        -0x4852209e -> :sswitch_2ff
        -0x476d69e0 -> :sswitch_2f1
        -0x47037762 -> :sswitch_2e3
        -0x41254a05 -> :sswitch_2d4
        -0x3eef3615 -> :sswitch_2c5
        -0x3daa35b2 -> :sswitch_2b7
        -0x397974d2 -> :sswitch_2a8
        -0x3099a4da -> :sswitch_299
        -0x2ddb96b0 -> :sswitch_28e
        -0x2b65dd00 -> :sswitch_27f
        -0x28b1facc -> :sswitch_271
        -0x226e8ce7 -> :sswitch_262
        -0x1f869333 -> :sswitch_253
        -0x1ac3af47 -> :sswitch_245
        -0x13aa2fbd -> :sswitch_237
        -0x116849e6 -> :sswitch_229
        -0xf17951c -> :sswitch_21a
        -0xd5a912d -> :sswitch_20b
        -0xceeb9d0 -> :sswitch_1fd
        -0x502f0de -> :sswitch_1ee
        -0x2e7b9c6 -> :sswitch_1e0
        -0xa23b96 -> :sswitch_1d2
        0x14ce72d -> :sswitch_1c4
        0x47243c9 -> :sswitch_1b5
        0x61ee68b -> :sswitch_1a6
        0xa61fe73 -> :sswitch_197
        0xca1df59 -> :sswitch_18b
        0x105030a5 -> :sswitch_17d
        0x257a0925 -> :sswitch_16f
        0x34db0a33 -> :sswitch_161
        0x350b53bb -> :sswitch_152
        0x39ca177c -> :sswitch_144
        0x425eee10 -> :sswitch_135
        0x45611472 -> :sswitch_127
        0x477b2286 -> :sswitch_118
        0x49dfc388 -> :sswitch_109
        0x4d171cd0 -> :sswitch_fa
        0x4f9e4f36 -> :sswitch_ec
        0x50949369 -> :sswitch_de
        0x524459dd -> :sswitch_d0
        0x5611b47e -> :sswitch_c2
        0x58bdb2f7 -> :sswitch_b4
        0x59f1b6c6 -> :sswitch_a5
        0x59fe4888 -> :sswitch_98
        0x5e055050 -> :sswitch_8a
        0x5f40529e -> :sswitch_7d
        0x60f0152f -> :sswitch_70
        0x6fb61593 -> :sswitch_63
        0x710abd04 -> :sswitch_56
        0x729c862a -> :sswitch_48
        0x7805f2e7 -> :sswitch_3a
        0x7bd2ee58 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_6be
    .packed-switch 0x0
        :pswitch_594
        :pswitch_58d
        :pswitch_586
        :pswitch_57f
        :pswitch_578
        :pswitch_571
        :pswitch_56a
        :pswitch_563
        :pswitch_55c
        :pswitch_555
        :pswitch_54e
        :pswitch_547
        :pswitch_540
        :pswitch_539
        :pswitch_532
        :pswitch_52b
        :pswitch_524
        :pswitch_51d
        :pswitch_516
        :pswitch_50f
        :pswitch_508
        :pswitch_501
        :pswitch_4fa
        :pswitch_4f3
        :pswitch_4ec
        :pswitch_4e5
        :pswitch_4de
        :pswitch_4d7
        :pswitch_4d0
        :pswitch_4c9
        :pswitch_4c2
        :pswitch_571
        :pswitch_4bb
        :pswitch_4b4
        :pswitch_4ad
        :pswitch_4a6
        :pswitch_594
        :pswitch_49f
        :pswitch_498
        :pswitch_491
        :pswitch_48a
        :pswitch_483
        :pswitch_474
        :pswitch_46d
        :pswitch_466
        :pswitch_45f
        :pswitch_458
        :pswitch_451
        :pswitch_44a
        :pswitch_443
        :pswitch_43c
        :pswitch_435
        :pswitch_42e
        :pswitch_427
        :pswitch_420
        :pswitch_419
        :pswitch_412
        :pswitch_40b
        :pswitch_404
        :pswitch_571
        :pswitch_491
        :pswitch_571
        :pswitch_3fd
        :pswitch_3f6
        :pswitch_571
        :pswitch_491
        :pswitch_3ef
        :pswitch_571
    .end packed-switch
.end method
