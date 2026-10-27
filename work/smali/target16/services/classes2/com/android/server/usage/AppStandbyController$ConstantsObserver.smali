.class public Lcom/android/server/usage/AppStandbyController$ConstantsObserver;
.super Landroid/database/ContentObserver;
.source "AppStandbyController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

.field public final KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

.field public final mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V
    .registers 6

    .line 3141
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 3142
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3061
    const-string/jumbo p1, "screen_threshold_rare"

    const-string/jumbo p2, "screen_threshold_restricted"

    const-string/jumbo v0, "screen_threshold_active"

    const-string/jumbo v1, "screen_threshold_working_set"

    const-string/jumbo v2, "screen_threshold_frequent"

    filled-new-array {v0, v1, v2, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 3069
    const-string p1, "elapsed_threshold_rare"

    const-string p2, "elapsed_threshold_restricted"

    const-string v0, "elapsed_threshold_active"

    const-string v1, "elapsed_threshold_working_set"

    const-string v2, "elapsed_threshold_frequent"

    filled-new-array {v0, v1, v2, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 3138
    new-instance p1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 p2, 0x7c

    invoke-direct {p1, p2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method


# virtual methods
.method public generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J
    .registers 11

    .line 3358
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b

    return-object p3

    .line 3362
    :cond_b
    array-length p0, p2

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v0

    array-length v0, v0

    const-string v1, ")"

    const-string v2, ") != # buckets ("

    if-ne p0, v0, :cond_7f

    .line 3368
    array-length p0, p3

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v0

    array-length v0, v0

    if-ne p0, v0, :cond_59

    .line 3374
    array-length p0, p4

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v0

    array-length v0, v0

    if-eq p0, v0, :cond_36

    .line 3375
    const-string p0, "AppStandbyController"

    const-string/jumbo p4, "minValues array is the wrong size"

    invoke-static {p0, p4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object p0

    array-length p0, p0

    new-array p4, p0, [J

    .line 3379
    :cond_36
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object p0

    array-length p0, p0

    new-array p0, p0, [J

    const/4 v0, 0x0

    .line 3380
    :goto_3e
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_58

    .line 3381
    aget-wide v1, p4, v0

    aget-object v3, p2, v0

    aget-wide v4, p3, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_58
    return-object p0

    .line 3370
    :cond_59
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "# defaults ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3364
    :cond_7f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "# keys ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onChange(Z)V
    .registers 2

    .line 3163
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateSettings()V

    .line 3164
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 3169
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->processProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 3170
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    return-void
.end method

.method public final processProperties(Landroid/provider/DeviceConfig$Properties;)V
    .registers 17

    move-object/from16 v1, p1

    .line 3175
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppIdleLock(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3176
    :try_start_9
    invoke-virtual {v1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_22

    goto :goto_13

    .line 3180
    :cond_22
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const-wide/32 v8, 0x2932e00

    const-wide/32 v13, 0x1d4c0

    const/4 v12, 0x1

    const-wide/32 v10, 0x927c0

    sparse-switch v7, :sswitch_data_292

    goto/16 :goto_266

    :sswitch_35
    const-string v7, "initial_foreground_service_start_duration"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3193
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v8, "initial_foreground_service_start_duration"

    const-wide/32 v9, 0x1b7740

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    goto/16 :goto_27d

    :catchall_4c
    move-exception v0

    goto/16 :goto_28f

    .line 3180
    :sswitch_4f
    const-string/jumbo v7, "strong_usage_duration"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3223
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "strong_usage_duration"

    const-wide/32 v9, 0x493e0

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_68
    const-string/jumbo v7, "prediction_timeout"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3228
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v10, "prediction_timeout"

    invoke-virtual {v1, v10, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_7e
    const-string v7, "cross_profile_apps_share_standby_buckets"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3188
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v8, "cross_profile_apps_share_standby_buckets"

    invoke-virtual {v1, v8, v12}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    goto/16 :goto_27d

    .line 3180
    :sswitch_92
    const-string v7, "exempted_sync_start_duration"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3256
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v8, "exempted_sync_start_duration"

    invoke-virtual {v1, v8, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_a6
    const-string v7, "broadcast_sessions_duration_ms"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3276
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v8, "broadcast_sessions_duration_ms"

    invoke-virtual {v1, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_ba
    const-string/jumbo v7, "notification_seen_promoted_bucket"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3203
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "notification_seen_promoted_bucket"

    const/16 v9, 0x14

    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    goto/16 :goto_27d

    .line 3180
    :sswitch_d2
    const-string v7, "broadcast_response_fg_threshold_state"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3271
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v8, "broadcast_response_fg_threshold_state"

    const/4 v9, 0x2

    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    goto/16 :goto_27d

    .line 3180
    :sswitch_e7
    const-string v7, "exempted_sync_scheduled_nd_duration"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3251
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v8, "exempted_sync_scheduled_nd_duration"

    invoke-virtual {v1, v8, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_fb
    const-string/jumbo v7, "retain_notification_seen_impact_for_pre_t_apps"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3208
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "retain_notification_seen_impact_for_pre_t_apps"

    invoke-virtual {v1, v8, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    goto/16 :goto_27d

    .line 3180
    :sswitch_111
    const-string v7, "exempted_sync_scheduled_d_duration"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3246
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v8, "exempted_sync_scheduled_d_duration"

    const-wide/32 v9, 0xdbba00

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_128
    const-string v7, "broadcast_response_window_timeout_ms"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3266
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v8, "broadcast_response_window_timeout_ms"

    invoke-virtual {v1, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_13c
    const-string v7, "brodacast_response_exempted_roles"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3291
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v8, "brodacast_response_exempted_roles"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    .line 3294
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->splitPipeSeparatedString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    goto/16 :goto_27d

    .line 3180
    :sswitch_15c
    const-string/jumbo v7, "system_update_usage_duration"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3237
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "system_update_usage_duration"

    const-wide/32 v9, 0x6ddd00

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_175
    const-string/jumbo v7, "note_response_event_for_all_broadcast_sessions"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3286
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "note_response_event_for_all_broadcast_sessions"

    invoke-virtual {v1, v8, v12}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    goto/16 :goto_27d

    .line 3180
    :sswitch_18b
    const-string/jumbo v7, "system_interaction_duration"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3232
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "system_interaction_duration"

    invoke-virtual {v1, v8, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_1a1
    const-string/jumbo v7, "notification_seen_duration"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3198
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v10, "notification_seen_duration"

    invoke-virtual {v1, v10, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_1b7
    const-string v7, "auto_restricted_bucket_delay_ms"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3182
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v7, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const-string v8, "auto_restricted_bucket_delay_ms"

    const-wide/32 v9, 0x36ee80

    .line 3184
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/32 v10, 0xdbba00

    .line 3182
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_1d7
    const-string/jumbo v7, "slice_pinned_duration"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3218
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "slice_pinned_duration"

    const-wide/32 v9, 0x6ddd00

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_1f0
    const-string v7, "broadcast_sessions_with_response_duration_ms"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3281
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v8, "broadcast_sessions_with_response_duration_ms"

    invoke-virtual {v1, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    goto/16 :goto_27d

    .line 3180
    :sswitch_204
    const-string/jumbo v7, "unexempted_sync_scheduled_duration"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3261
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "unexempted_sync_scheduled_duration"

    invoke-virtual {v1, v8, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    goto :goto_27d

    .line 3180
    :sswitch_219
    const-string/jumbo v7, "trigger_quota_bump_on_notification_seen"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3213
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "trigger_quota_bump_on_notification_seen"

    invoke-virtual {v1, v8, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fputmTriggerQuotaBumpOnNotificationSeen(Lcom/android/server/usage/AppStandbyController;Z)V

    goto :goto_27d

    .line 3180
    :sswitch_22f
    const-string v7, "brodacast_response_exempted_permissions"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3298
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v8, "brodacast_response_exempted_permissions"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    .line 3301
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->splitPipeSeparatedString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    goto :goto_27d

    .line 3180
    :sswitch_24e
    const-string/jumbo v7, "sync_adapter_duration"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 3241
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "sync_adapter_duration"

    const-wide/32 v9, 0x6ddd00

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    goto :goto_27d

    :cond_266
    :goto_266
    if-nez v5, :cond_27d

    .line 3305
    const-string/jumbo v7, "screen_threshold_"

    .line 3306
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_279

    const-string v7, "elapsed_threshold_"

    .line 3307
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27d

    .line 3308
    :cond_279
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateTimeThresholds()V

    move v5, v12

    .line 3313
    :cond_27d
    :goto_27d
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v7}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppStandbyProperties(Lcom/android/server/usage/AppStandbyController;)Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 3315
    :cond_28d
    monitor-exit v2

    return-void

    :goto_28f
    monitor-exit v2
    :try_end_290
    .catchall {:try_start_9 .. :try_end_290} :catchall_4c

    throw v0

    nop

    :sswitch_data_292
    .sparse-switch
        -0x76b36a58 -> :sswitch_24e
        -0x75045963 -> :sswitch_22f
        -0x6afce736 -> :sswitch_219
        -0x6000e4de -> :sswitch_204
        -0x5ae629d8 -> :sswitch_1f0
        -0x3f649292 -> :sswitch_1d7
        -0x3a025ebd -> :sswitch_1b7
        -0x2976517c -> :sswitch_1a1
        -0x27006ecf -> :sswitch_18b
        -0x2640551b -> :sswitch_175
        -0x213d7968 -> :sswitch_15c
        -0x118af86a -> :sswitch_13c
        -0x7b1914d -> :sswitch_128
        -0x36fd73c -> :sswitch_111
        0x107a759e -> :sswitch_fb
        0x1b373ae8 -> :sswitch_e7
        0x2c3f9a7f -> :sswitch_d2
        0x37ee8ef5 -> :sswitch_ba
        0x3b245c4d -> :sswitch_a6
        0x41e851f4 -> :sswitch_92
        0x4ccb367f -> :sswitch_7e
        0x5227fdb1 -> :sswitch_68
        0x5375dd1a -> :sswitch_4f
        0x722857dc -> :sswitch_35
    .end sparse-switch
.end method

.method public final splitPipeSeparatedString(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .line 3319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3320
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 3321
    :goto_a
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 3322
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1c
    return-object v0
.end method

.method public start()V
    .registers 4

    .line 3146
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmContext(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3149
    const-string v1, "app_standby_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3151
    const-string v1, "adaptive_battery_management_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3153
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDeviceConfigPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 3157
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getDeviceConfigProperties([Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->processProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 3158
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateSettings()V

    return-void
.end method

.method public updateSettings()V
    .registers 2

    .line 3353
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isAppIdleEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setAppIdleEnabled(Z)V

    return-void
.end method

.method public final updateTimeThresholds()V
    .registers 7

    .line 3329
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 3330
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getDeviceConfigProperties([Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 3331
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 3332
    invoke-virtual {v1, v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getDeviceConfigProperties([Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 3333
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    sget-object v4, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    sget-object v5, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 3336
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    sget-object v3, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    sget-object v4, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 3339
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/32 v2, 0xdbba00

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    return-void
.end method
