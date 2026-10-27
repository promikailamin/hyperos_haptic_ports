.class Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 908
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 911
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 912
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 913
    return-void

    .line 915
    :cond_17
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_31e

    :cond_1f
    goto/16 :goto_223

    :sswitch_21
    const-string v3, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x14

    goto/16 :goto_223

    :sswitch_2d
    const-string/jumbo v3, "service_bind_almost_perceptible_timeout_ms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x26

    goto/16 :goto_223

    :sswitch_3a
    const-string v3, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x12

    goto/16 :goto_223

    :sswitch_46
    const-string v3, "fgs_start_foreground_timeout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x19

    goto/16 :goto_223

    :sswitch_52
    const-string v3, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x13

    goto/16 :goto_223

    :sswitch_5e
    const-string v3, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x15

    goto/16 :goto_223

    :sswitch_6a
    const-string v3, "deferred_fgs_notifications_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x6

    goto/16 :goto_223

    :sswitch_75
    const-string v3, "extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x20

    goto/16 :goto_223

    :sswitch_81
    const-string/jumbo v3, "kill_bg_restricted_cached_idle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x1d

    goto/16 :goto_223

    :sswitch_8e
    const-string v3, "boot_time_temp_allowlist_duration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x17

    goto/16 :goto_223

    :sswitch_9a
    const-string v3, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x18

    goto/16 :goto_223

    :sswitch_a6
    const-string/jumbo v3, "no_kill_cached_processes_until_boot_completed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x27

    goto/16 :goto_223

    :sswitch_b3
    const-string v3, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x5

    goto/16 :goto_223

    :sswitch_be
    const-string v3, "deferred_fgs_notification_exclusion_time"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x9

    goto/16 :goto_223

    :sswitch_ca
    const-string v3, "enable_extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x21

    goto/16 :goto_223

    :sswitch_d6
    const-string v3, "defer_boot_completed_broadcast"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x23

    goto/16 :goto_223

    :sswitch_e2
    const-string/jumbo v3, "imperceptible_kill_exempt_packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0xc

    goto/16 :goto_223

    :sswitch_ef
    const-string v3, "deferred_fgs_notifications_api_gated"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x7

    goto/16 :goto_223

    :sswitch_fa
    const-string/jumbo v3, "no_kill_cached_processes_post_boot_completed_duration_millis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x28

    goto/16 :goto_223

    :sswitch_107
    const-string/jumbo v3, "push_messaging_over_quota_behavior"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0xa

    goto/16 :goto_223

    :sswitch_114
    const-string v3, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x10

    goto/16 :goto_223

    :sswitch_120
    const-string v3, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x4

    goto/16 :goto_223

    :sswitch_12b
    const-string v3, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x1b

    goto/16 :goto_223

    :sswitch_137
    const-string/jumbo v3, "service_start_foreground_timeout_ms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x24

    goto/16 :goto_223

    :sswitch_144
    const-string v3, "fgs_atom_sample_rate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x1a

    goto/16 :goto_223

    :sswitch_150
    const-string/jumbo v3, "process_kill_timeout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x22

    goto/16 :goto_223

    :sswitch_15d
    const-string/jumbo v3, "min_assoc_log_duration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0xf

    goto/16 :goto_223

    :sswitch_16a
    const-string/jumbo v3, "network_access_timeout_ms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x2a

    goto/16 :goto_223

    :sswitch_177
    const-string/jumbo v3, "max_empty_time_millis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x29

    goto/16 :goto_223

    :sswitch_184
    const-string/jumbo v3, "max_cached_processes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x0

    goto/16 :goto_223

    :sswitch_190
    const-string v3, "force_bg_check_on_restricted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0xe

    goto/16 :goto_223

    :sswitch_19c
    const-string v3, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x2

    goto/16 :goto_223

    :sswitch_1a7
    const-string/jumbo v3, "max_phantom_processes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x16

    goto/16 :goto_223

    :sswitch_1b4
    const-string v3, "deferred_fgs_notification_interval"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x8

    goto :goto_223

    :sswitch_1bf
    const-string/jumbo v3, "oomadj_update_policy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0xb

    goto :goto_223

    :sswitch_1cb
    const-string v3, "fgs_start_denied_log_sample_rate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x1c

    goto :goto_223

    :sswitch_1d6
    const-string v3, "fgs_allow_opt_out"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x1f

    goto :goto_223

    :sswitch_1e1
    const-string v3, "default_background_activity_starts_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    goto :goto_223

    :sswitch_1eb
    const-string v3, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x11

    goto :goto_223

    :sswitch_1f6
    const-string/jumbo v3, "service_start_foreground_anr_delay_ms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x25

    goto :goto_223

    :sswitch_202
    const-string v3, "default_fgs_starts_restriction_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x3

    goto :goto_223

    :sswitch_20c
    const-string/jumbo v3, "kill_bg_restricted_cached_idle_settle_time"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0x1e

    goto :goto_223

    :sswitch_218
    const-string/jumbo v3, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v2, 0xd

    :goto_223
    packed-switch v2, :pswitch_data_3cc

    goto/16 :goto_31b

    .line 1031
    :pswitch_228
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNetworkAccessTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1032
    goto/16 :goto_31b

    .line 1028
    :pswitch_22f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxEmptyTimeMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1029
    goto/16 :goto_31b

    .line 1025
    :pswitch_236
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesPostBootCompletedDurationMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1026
    goto/16 :goto_31b

    .line 1022
    :pswitch_23d
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesUntilBootCompleted(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1023
    goto/16 :goto_31b

    .line 1019
    :pswitch_244
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceBindAlmostPerceptibleTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1020
    goto/16 :goto_31b

    .line 1016
    :pswitch_24b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundAnrDealyMs(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1017
    goto/16 :goto_31b

    .line 1013
    :pswitch_252
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1014
    goto/16 :goto_31b

    .line 1010
    :pswitch_259
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDeferBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1011
    goto/16 :goto_31b

    .line 1007
    :pswitch_260
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProcessKillTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1008
    goto/16 :goto_31b

    .line 1004
    :pswitch_267
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateEnableExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1005
    goto/16 :goto_31b

    .line 1001
    :pswitch_26e
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1002
    goto/16 :goto_31b

    .line 998
    :pswitch_275
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAllowOptOut(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 999
    goto/16 :goto_31b

    .line 995
    :pswitch_27c
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdleSettleTime(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 996
    goto/16 :goto_31b

    .line 992
    :pswitch_283
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdle(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 993
    goto/16 :goto_31b

    .line 989
    :pswitch_28a
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartDeniedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 990
    goto/16 :goto_31b

    .line 986
    :pswitch_291
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartAllowedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 987
    goto/16 :goto_31b

    .line 983
    :pswitch_298
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAtomSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 984
    goto/16 :goto_31b

    .line 980
    :pswitch_29f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartForegroundTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 981
    goto/16 :goto_31b

    .line 977
    :pswitch_2a6
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 978
    goto/16 :goto_31b

    .line 974
    :pswitch_2ad
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBootTimeTempAllowListDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 975
    goto/16 :goto_31b

    .line 971
    :pswitch_2b4
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxPhantomProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 972
    goto/16 :goto_31b

    .line 968
    :pswitch_2bb
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBinderHeavyHitterWatcher(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 969
    goto :goto_31b

    .line 960
    :pswitch_2c1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMinAssocLogDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 961
    goto :goto_31b

    .line 957
    :pswitch_2c7
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateForceRestrictedBackgroundCheck(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 958
    goto :goto_31b

    .line 954
    :pswitch_2cd
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateImperceptibleKillExemptions(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 955
    goto :goto_31b

    .line 950
    :pswitch_2d3
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateOomAdjUpdatePolicy(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 951
    goto :goto_31b

    .line 947
    :pswitch_2d9
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePushMessagingOverQuotaBehavior(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 948
    goto :goto_31b

    .line 944
    :pswitch_2df
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralExclusionTime(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 945
    goto :goto_31b

    .line 941
    :pswitch_2e5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralInterval(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 942
    goto :goto_31b

    .line 938
    :pswitch_2eb
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralApiGated(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 939
    goto :goto_31b

    .line 935
    :pswitch_2f1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralEnable(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 936
    goto :goto_31b

    .line 932
    :pswitch_2f7
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionCheckCallerTargetSdk(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 933
    goto :goto_31b

    .line 929
    :pswitch_2fd
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionNotification(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 930
    goto :goto_31b

    .line 926
    :pswitch_303
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 927
    goto :goto_31b

    .line 923
    :pswitch_309
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 924
    goto :goto_31b

    .line 920
    :pswitch_30f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundActivityStarts(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 921
    goto :goto_31b

    .line 917
    :pswitch_315
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxCachedProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 918
    nop

    .line 1036
    .end local v1    # "name":Ljava/lang/String;
    :goto_31b
    goto/16 :goto_8

    .line 1037
    :cond_31d
    return-void

    :sswitch_data_31e
    .sparse-switch
        -0x7ba4b562 -> :sswitch_218
        -0x76fa06f8 -> :sswitch_20c
        -0x719878d5 -> :sswitch_202
        -0x71781c6f -> :sswitch_1f6
        -0x6d209d2c -> :sswitch_1eb
        -0x6a37b8d0 -> :sswitch_1e1
        -0x62f6cce1 -> :sswitch_1d6
        -0x61c0c900 -> :sswitch_1cb
        -0x53dc231d -> :sswitch_1bf
        -0x4db39f74 -> :sswitch_1b4
        -0x48c35170 -> :sswitch_1a7
        -0x476d69e0 -> :sswitch_19c
        -0x47037762 -> :sswitch_190
        -0x41254a05 -> :sswitch_184
        -0x3eef3615 -> :sswitch_177
        -0x397974d2 -> :sswitch_16a
        -0x3099a4da -> :sswitch_15d
        -0x2ddb96b0 -> :sswitch_150
        -0x28b1facc -> :sswitch_144
        -0x226e8ce7 -> :sswitch_137
        -0x1ac3af47 -> :sswitch_12b
        -0x13aa2fbd -> :sswitch_120
        -0x116849e6 -> :sswitch_114
        -0xf17951c -> :sswitch_107
        -0xd5a912d -> :sswitch_fa
        -0xceeb9d0 -> :sswitch_ef
        -0x2e7b9c6 -> :sswitch_e2
        0x14ce72d -> :sswitch_d6
        0x105030a5 -> :sswitch_ca
        0x257a0925 -> :sswitch_be
        0x34db0a33 -> :sswitch_b3
        0x350b53bb -> :sswitch_a6
        0x39ca177c -> :sswitch_9a
        0x45611472 -> :sswitch_8e
        0x477b2286 -> :sswitch_81
        0x50949369 -> :sswitch_75
        0x524459dd -> :sswitch_6a
        0x59fe4888 -> :sswitch_5e
        0x5f40529e -> :sswitch_52
        0x60f0152f -> :sswitch_46
        0x710abd04 -> :sswitch_3a
        0x7805f2e7 -> :sswitch_2d
        0x7bd2ee58 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_3cc
    .packed-switch 0x0
        :pswitch_315
        :pswitch_30f
        :pswitch_309
        :pswitch_303
        :pswitch_2fd
        :pswitch_2f7
        :pswitch_2f1
        :pswitch_2eb
        :pswitch_2e5
        :pswitch_2df
        :pswitch_2d9
        :pswitch_2d3
        :pswitch_2cd
        :pswitch_2cd
        :pswitch_2c7
        :pswitch_2c1
        :pswitch_2bb
        :pswitch_2bb
        :pswitch_2bb
        :pswitch_2bb
        :pswitch_2bb
        :pswitch_2bb
        :pswitch_2b4
        :pswitch_2ad
        :pswitch_2a6
        :pswitch_29f
        :pswitch_298
        :pswitch_291
        :pswitch_28a
        :pswitch_283
        :pswitch_27c
        :pswitch_275
        :pswitch_26e
        :pswitch_267
        :pswitch_260
        :pswitch_259
        :pswitch_252
        :pswitch_24b
        :pswitch_244
        :pswitch_23d
        :pswitch_236
        :pswitch_22f
        :pswitch_228
    .end packed-switch
.end method
