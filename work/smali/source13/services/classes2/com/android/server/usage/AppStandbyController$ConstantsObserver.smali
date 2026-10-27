.class Lcom/android/server/usage/AppStandbyController$ConstantsObserver;
.super Landroid/database/ContentObserver;
.source "AppStandbyController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConstantsObserver"
.end annotation


# static fields
.field public static final DEFAULT_AUTO_RESTRICTED_BUCKET_DELAY_MS:J = 0x5265c00L

.field private static final DEFAULT_BROADCAST_RESPONSE_EXEMPTED_PERMISSIONS:Ljava/lang/String; = ""

.field private static final DEFAULT_BROADCAST_RESPONSE_EXEMPTED_ROLES:Ljava/lang/String; = ""

.field public static final DEFAULT_BROADCAST_RESPONSE_FG_THRESHOLD_STATE:I = 0x2

.field public static final DEFAULT_BROADCAST_RESPONSE_WINDOW_DURATION_MS:J = 0x1d4c0L

.field public static final DEFAULT_BROADCAST_SESSIONS_DURATION_MS:J = 0x1d4c0L

.field public static final DEFAULT_BROADCAST_SESSIONS_WITH_RESPONSE_DURATION_MS:J = 0x1d4c0L

.field public static final DEFAULT_CHECK_IDLE_INTERVAL_MS:J = 0xdbba00L

.field public static final DEFAULT_CROSS_PROFILE_APPS_SHARE_STANDBY_BUCKETS:Z = true

.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_DOZE_TIMEOUT:J = 0xdbba00L

.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_EXEMPTED_SYNC_START_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_INITIAL_FOREGROUND_SERVICE_START_TIMEOUT:J = 0x1b7740L

.field public static final DEFAULT_NOTE_RESPONSE_EVENT_FOR_ALL_BROADCAST_SESSIONS:Z = true

.field public static final DEFAULT_NOTIFICATION_SEEN_PROMOTED_BUCKET:I = 0x14

.field public static final DEFAULT_NOTIFICATION_TIMEOUT:J = 0x2932e00L

.field public static final DEFAULT_RETAIN_NOTIFICATION_SEEN_IMPACT_FOR_PRE_T_APPS:Z = false

.field public static final DEFAULT_SLICE_PINNED_TIMEOUT:J = 0x2932e00L

.field public static final DEFAULT_STRONG_USAGE_TIMEOUT:J = 0x36ee80L

.field public static final DEFAULT_SYNC_ADAPTER_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_INTERACTION_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_UPDATE_TIMEOUT:J = 0x6ddd00L

.field public static final DEFAULT_TRIGGER_QUOTA_BUMP_ON_NOTIFICATION_SEEN:Z = false

.field public static final DEFAULT_UNEXEMPTED_SYNC_SCHEDULED_TIMEOUT:J = 0x927c0L

.field private static final KEY_AUTO_RESTRICTED_BUCKET_DELAY_MS:Ljava/lang/String; = "auto_restricted_bucket_delay_ms"

.field private static final KEY_BROADCAST_RESPONSE_EXEMPTED_PERMISSIONS:Ljava/lang/String; = "brodacast_response_exempted_permissions"

.field private static final KEY_BROADCAST_RESPONSE_EXEMPTED_ROLES:Ljava/lang/String; = "brodacast_response_exempted_roles"

.field private static final KEY_BROADCAST_RESPONSE_FG_THRESHOLD_STATE:Ljava/lang/String; = "broadcast_response_fg_threshold_state"

.field private static final KEY_BROADCAST_RESPONSE_WINDOW_DURATION_MS:Ljava/lang/String; = "broadcast_response_window_timeout_ms"

.field private static final KEY_BROADCAST_SESSIONS_DURATION_MS:Ljava/lang/String; = "broadcast_sessions_duration_ms"

.field private static final KEY_BROADCAST_SESSIONS_WITH_RESPONSE_DURATION_MS:Ljava/lang/String; = "broadcast_sessions_with_response_duration_ms"

.field private static final KEY_CROSS_PROFILE_APPS_SHARE_STANDBY_BUCKETS:Ljava/lang/String; = "cross_profile_apps_share_standby_buckets"

.field private static final KEY_EXEMPTED_SYNC_SCHEDULED_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_d_duration"

.field private static final KEY_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_nd_duration"

.field private static final KEY_EXEMPTED_SYNC_START_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_start_duration"

.field private static final KEY_INITIAL_FOREGROUND_SERVICE_START_HOLD_DURATION:Ljava/lang/String; = "initial_foreground_service_start_duration"

.field private static final KEY_NOTE_RESPONSE_EVENT_FOR_ALL_BROADCAST_SESSIONS:Ljava/lang/String; = "note_response_event_for_all_broadcast_sessions"

.field private static final KEY_NOTIFICATION_SEEN_HOLD_DURATION:Ljava/lang/String; = "notification_seen_duration"

.field private static final KEY_NOTIFICATION_SEEN_PROMOTED_BUCKET:Ljava/lang/String; = "notification_seen_promoted_bucket"

.field private static final KEY_PREDICTION_TIMEOUT:Ljava/lang/String; = "prediction_timeout"

.field private static final KEY_PREFIX_ELAPSED_TIME_THRESHOLD:Ljava/lang/String; = "elapsed_threshold_"

.field private static final KEY_PREFIX_SCREEN_TIME_THRESHOLD:Ljava/lang/String; = "screen_threshold_"

.field private static final KEY_RETAIN_NOTIFICATION_SEEN_IMPACT_FOR_PRE_T_APPS:Ljava/lang/String; = "retain_notification_seen_impact_for_pre_t_apps"

.field private static final KEY_SLICE_PINNED_HOLD_DURATION:Ljava/lang/String; = "slice_pinned_duration"

.field private static final KEY_STRONG_USAGE_HOLD_DURATION:Ljava/lang/String; = "strong_usage_duration"

.field private static final KEY_SYNC_ADAPTER_HOLD_DURATION:Ljava/lang/String; = "sync_adapter_duration"

.field private static final KEY_SYSTEM_INTERACTION_HOLD_DURATION:Ljava/lang/String; = "system_interaction_duration"

.field private static final KEY_SYSTEM_UPDATE_HOLD_DURATION:Ljava/lang/String; = "system_update_usage_duration"

.field private static final KEY_TRIGGER_QUOTA_BUMP_ON_NOTIFICATION_SEEN:Ljava/lang/String; = "trigger_quota_bump_on_notification_seen"

.field private static final KEY_UNEXEMPTED_SYNC_SCHEDULED_HOLD_DURATION:Ljava/lang/String; = "unexempted_sync_scheduled_duration"


# instance fields
.field private final KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

.field private final KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

.field private final mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V
    .registers 7
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2931
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2932
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2854
    const-string/jumbo p1, "screen_threshold_active"

    const-string/jumbo v0, "screen_threshold_working_set"

    const-string/jumbo v1, "screen_threshold_frequent"

    const-string/jumbo v2, "screen_threshold_rare"

    const-string/jumbo v3, "screen_threshold_restricted"

    filled-new-array {p1, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 2862
    const-string p1, "elapsed_threshold_active"

    const-string v0, "elapsed_threshold_working_set"

    const-string v1, "elapsed_threshold_frequent"

    const-string v2, "elapsed_threshold_rare"

    const-string v3, "elapsed_threshold_restricted"

    filled-new-array {p1, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 2928
    new-instance p1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v0, 0x7c

    invoke-direct {p1, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 2933
    return-void
.end method

.method private processProperties(Landroid/provider/DeviceConfig$Properties;)V
    .registers 18
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 2968
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 2969
    .local v3, "timeThresholdsUpdated":Z
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppIdleLock(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2970
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2971
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_23

    .line 2972
    goto :goto_14

    .line 2974
    :cond_23
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    const/4 v11, 0x1

    sparse-switch v7, :sswitch_data_2e0

    :cond_2d
    goto/16 :goto_148

    :sswitch_2f
    const-string v7, "initial_foreground_service_start_duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    move v6, v8

    goto/16 :goto_148

    :sswitch_3a
    const-string/jumbo v7, "strong_usage_duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x8

    goto/16 :goto_148

    :sswitch_47
    const-string/jumbo v7, "prediction_timeout"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x9

    goto/16 :goto_148

    :sswitch_54
    const-string v7, "cross_profile_apps_share_standby_buckets"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    move v6, v11

    goto/16 :goto_148

    :sswitch_5f
    const-string v7, "exempted_sync_start_duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xf

    goto/16 :goto_148

    :sswitch_6b
    const-string v7, "broadcast_sessions_duration_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x13

    goto/16 :goto_148

    :sswitch_77
    const-string/jumbo v7, "notification_seen_promoted_bucket"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v6, 0x4

    goto/16 :goto_148

    :sswitch_83
    const-string v7, "broadcast_response_fg_threshold_state"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x12

    goto/16 :goto_148

    :sswitch_8f
    const-string v7, "exempted_sync_scheduled_nd_duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xe

    goto/16 :goto_148

    :sswitch_9b
    const-string/jumbo v7, "retain_notification_seen_impact_for_pre_t_apps"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v6, 0x5

    goto/16 :goto_148

    :sswitch_a7
    const-string v7, "exempted_sync_scheduled_d_duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xd

    goto/16 :goto_148

    :sswitch_b3
    const-string v7, "broadcast_response_window_timeout_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x11

    goto/16 :goto_148

    :sswitch_bf
    const-string v7, "brodacast_response_exempted_roles"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x16

    goto/16 :goto_148

    :sswitch_cb
    const-string/jumbo v7, "system_update_usage_duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xb

    goto/16 :goto_148

    :sswitch_d8
    const-string/jumbo v7, "note_response_event_for_all_broadcast_sessions"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x15

    goto :goto_148

    :sswitch_e4
    const-string/jumbo v7, "system_interaction_duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xa

    goto :goto_148

    :sswitch_f0
    const-string/jumbo v7, "notification_seen_duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v6, 0x3

    goto :goto_148

    :sswitch_fb
    const-string v7, "auto_restricted_bucket_delay_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v6, 0x0

    goto :goto_148

    :sswitch_105
    const-string/jumbo v7, "slice_pinned_duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v6, 0x7

    goto :goto_148

    :sswitch_110
    const-string v7, "broadcast_sessions_with_response_duration_ms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x14

    goto :goto_148

    :sswitch_11b
    const-string/jumbo v7, "unexempted_sync_scheduled_duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x10

    goto :goto_148

    :sswitch_127
    const-string/jumbo v7, "trigger_quota_bump_on_notification_seen"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v6, 0x6

    goto :goto_148

    :sswitch_132
    const-string v7, "brodacast_response_exempted_permissions"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x17

    goto :goto_148

    :sswitch_13d
    const-string/jumbo v7, "sync_adapter_duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xc

    :goto_148
    const-wide/32 v12, 0xdbba00

    const-wide/32 v14, 0x1d4c0

    const-wide/32 v9, 0x927c0

    packed-switch v6, :pswitch_data_342

    .line 3097
    if-nez v3, :cond_2ca

    const-string/jumbo v6, "screen_threshold_"

    goto/16 :goto_2b8

    .line 3090
    :pswitch_15b
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v7, "brodacast_response_exempted_permissions"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    .line 3093
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v7, v6, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->splitPipeSeparatedString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    .line 3095
    goto/16 :goto_2ca

    .line 3083
    :pswitch_173
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v7, "brodacast_response_exempted_roles"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    .line 3086
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v7, v6, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->splitPipeSeparatedString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    .line 3088
    goto/16 :goto_2ca

    .line 3078
    :pswitch_18b
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v7, "note_response_event_for_all_broadcast_sessions"

    invoke-virtual {v2, v7, v11}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    .line 3081
    goto/16 :goto_2ca

    .line 3073
    :pswitch_198
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v7, "broadcast_sessions_with_response_duration_ms"

    invoke-virtual {v2, v7, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    .line 3076
    goto/16 :goto_2ca

    .line 3068
    :pswitch_1a4
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v7, "broadcast_sessions_duration_ms"

    invoke-virtual {v2, v7, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    .line 3071
    goto/16 :goto_2ca

    .line 3063
    :pswitch_1b0
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v7, "broadcast_response_fg_threshold_state"

    invoke-virtual {v2, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    .line 3066
    goto/16 :goto_2ca

    .line 3058
    :pswitch_1bc
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v7, "broadcast_response_window_timeout_ms"

    invoke-virtual {v2, v7, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    .line 3061
    goto/16 :goto_2ca

    .line 3053
    :pswitch_1c8
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v7, "unexempted_sync_scheduled_duration"

    invoke-virtual {v2, v7, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    .line 3056
    goto/16 :goto_2ca

    .line 3048
    :pswitch_1d5
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v7, "exempted_sync_start_duration"

    invoke-virtual {v2, v7, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 3051
    goto/16 :goto_2ca

    .line 3043
    :pswitch_1e1
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v7, "exempted_sync_scheduled_nd_duration"

    invoke-virtual {v2, v7, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 3046
    goto/16 :goto_2ca

    .line 3038
    :pswitch_1ed
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v7, "exempted_sync_scheduled_d_duration"

    invoke-virtual {v2, v7, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 3041
    goto/16 :goto_2ca

    .line 3034
    :pswitch_1f9
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v7, "sync_adapter_duration"

    invoke-virtual {v2, v7, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    .line 3036
    goto/16 :goto_2ca

    .line 3030
    :pswitch_206
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v7, "system_update_usage_duration"

    const-wide/32 v8, 0x6ddd00

    invoke-virtual {v2, v7, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 3032
    goto/16 :goto_2ca

    .line 3025
    :pswitch_216
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v7, "system_interaction_duration"

    invoke-virtual {v2, v7, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 3028
    goto/16 :goto_2ca

    .line 3021
    :pswitch_223
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v7, "prediction_timeout"

    const-wide/32 v8, 0x2932e00

    invoke-virtual {v2, v7, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    .line 3023
    goto/16 :goto_2ca

    .line 3017
    :pswitch_233
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v7, "strong_usage_duration"

    const-wide/32 v8, 0x36ee80

    invoke-virtual {v2, v7, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 3019
    goto/16 :goto_2ca

    .line 3012
    :pswitch_243
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v7, "slice_pinned_duration"

    const-wide/32 v8, 0x2932e00

    invoke-virtual {v2, v7, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    .line 3015
    goto/16 :goto_2ca

    .line 3007
    :pswitch_253
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v7, "trigger_quota_bump_on_notification_seen"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fputmTriggerQuotaBumpOnNotificationSeen(Lcom/android/server/usage/AppStandbyController;Z)V

    .line 3010
    goto :goto_2ca

    .line 3002
    :pswitch_261
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v7, "retain_notification_seen_impact_for_pre_t_apps"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    .line 3005
    goto :goto_2ca

    .line 2997
    :pswitch_26e
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v8, "notification_seen_promoted_bucket"

    const/16 v7, 0x14

    invoke-virtual {v2, v8, v7}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    .line 3000
    goto :goto_2ca

    .line 2992
    :pswitch_27c
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v7, "notification_seen_duration"

    const-wide/32 v8, 0x2932e00

    invoke-virtual {v2, v7, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 2995
    goto :goto_2ca

    .line 2987
    :pswitch_28b
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v7, "initial_foreground_service_start_duration"

    const-wide/32 v8, 0x1b7740

    invoke-virtual {v2, v7, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 2990
    goto :goto_2ca

    .line 2982
    :pswitch_299
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v7, "cross_profile_apps_share_standby_buckets"

    invoke-virtual {v2, v7, v11}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    .line 2985
    goto :goto_2ca

    .line 2976
    :pswitch_2a4
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v6, v6, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const-string v7, "auto_restricted_bucket_delay_ms"

    const-wide/32 v8, 0x5265c00

    .line 2978
    invoke-virtual {v2, v7, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 2976
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    .line 2980
    goto :goto_2ca

    .line 3098
    :goto_2b8
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2c6

    const-string v6, "elapsed_threshold_"

    .line 3099
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2ca

    .line 3100
    :cond_2c6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateTimeThresholds()V

    .line 3101
    const/4 v3, 0x1

    .line 3105
    :cond_2ca
    :goto_2ca
    iget-object v6, v1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v6}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppStandbyProperties(Lcom/android/server/usage/AppStandbyController;)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    nop

    .end local v5    # "name":Ljava/lang/String;
    goto/16 :goto_14

    .line 3107
    :cond_2db
    monitor-exit v4

    .line 3108
    return-void

    .line 3107
    :catchall_2dd
    move-exception v0

    monitor-exit v4
    :try_end_2df
    .catchall {:try_start_c .. :try_end_2df} :catchall_2dd

    throw v0

    :sswitch_data_2e0
    .sparse-switch
        -0x76b36a58 -> :sswitch_13d
        -0x75045963 -> :sswitch_132
        -0x6afce736 -> :sswitch_127
        -0x6000e4de -> :sswitch_11b
        -0x5ae629d8 -> :sswitch_110
        -0x3f649292 -> :sswitch_105
        -0x3a025ebd -> :sswitch_fb
        -0x2976517c -> :sswitch_f0
        -0x27006ecf -> :sswitch_e4
        -0x2640551b -> :sswitch_d8
        -0x213d7968 -> :sswitch_cb
        -0x118af86a -> :sswitch_bf
        -0x7b1914d -> :sswitch_b3
        -0x36fd73c -> :sswitch_a7
        0x107a759e -> :sswitch_9b
        0x1b373ae8 -> :sswitch_8f
        0x2c3f9a7f -> :sswitch_83
        0x37ee8ef5 -> :sswitch_77
        0x3b245c4d -> :sswitch_6b
        0x41e851f4 -> :sswitch_5f
        0x4ccb367f -> :sswitch_54
        0x5227fdb1 -> :sswitch_47
        0x5375dd1a -> :sswitch_3a
        0x722857dc -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_342
    .packed-switch 0x0
        :pswitch_2a4
        :pswitch_299
        :pswitch_28b
        :pswitch_27c
        :pswitch_26e
        :pswitch_261
        :pswitch_253
        :pswitch_243
        :pswitch_233
        :pswitch_223
        :pswitch_216
        :pswitch_206
        :pswitch_1f9
        :pswitch_1ed
        :pswitch_1e1
        :pswitch_1d5
        :pswitch_1c8
        :pswitch_1bc
        :pswitch_1b0
        :pswitch_1a4
        :pswitch_198
        :pswitch_18b
        :pswitch_173
        :pswitch_15b
    .end packed-switch
.end method

.method private splitPipeSeparatedString(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3112
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 3113
    :goto_a
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3114
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3116
    :cond_1c
    return-object v0
.end method

.method private updateTimeThresholds()V
    .registers 8

    .line 3121
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 3122
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getDeviceConfigProperties([Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 3123
    .local v0, "screenThresholdProperties":Landroid/provider/DeviceConfig$Properties;
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 3124
    invoke-virtual {v1, v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getDeviceConfigProperties([Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 3125
    .local v1, "elapsedThresholdProperties":Landroid/provider/DeviceConfig$Properties;
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    sget-object v4, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    sget-object v5, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 3128
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    sget-object v4, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    sget-object v5, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 3131
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    const-wide/32 v5, 0xdbba00

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 3133
    return-void
.end method


# virtual methods
.method generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J
    .registers 12
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "defaults"    # [J
    .param p4, "minValues"    # [J

    .line 3154
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3156
    return-object p3

    .line 3158
    :cond_b
    array-length v0, p2

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v1

    array-length v1, v1

    const-string v2, ")"

    const-string v3, ") != # buckets ("

    if-ne v0, v1, :cond_84

    .line 3164
    array-length v0, p3

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_59

    .line 3170
    array-length v0, p4

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_36

    .line 3171
    const-string v0, "AppStandbyController"

    const-string/jumbo v1, "minValues array is the wrong size"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v0

    array-length v0, v0

    new-array p4, v0, [J

    .line 3175
    :cond_36
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    .line 3176
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_58

    .line 3177
    aget-wide v2, p4, v1

    aget-object v4, p2, v1

    aget-wide v5, p3, v1

    invoke-virtual {p1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 3176
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 3179
    .end local v1    # "i":I
    :cond_58
    return-object v0

    .line 3166
    .end local v0    # "array":[J
    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# defaults ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3160
    :cond_84
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# keys ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 2957
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateSettings()V

    .line 2958
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 2959
    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 2963
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->processProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 2964
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 2965
    return-void
.end method

.method public start()V
    .registers 4

    .line 2936
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmContext(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2939
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "app_standby_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2943
    const-string v1, "enable_restricted_bucket"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2946
    const-string v1, "adaptive_battery_management_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2948
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDeviceConfigPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2951
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getDeviceConfigProperties([Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->processProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 2952
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateSettings()V

    .line 2953
    return-void
.end method

.method updateSettings()V
    .registers 4

    .line 3145
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppIdleLock(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3146
    :try_start_7
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->isRestrictedBucketEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fputmAllowRestrictedBucket(Lcom/android/server/usage/AppStandbyController;Z)V

    .line 3147
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1f

    .line 3149
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->isAppIdleEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->setAppIdleEnabled(Z)V

    .line 3150
    return-void

    .line 3147
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method
