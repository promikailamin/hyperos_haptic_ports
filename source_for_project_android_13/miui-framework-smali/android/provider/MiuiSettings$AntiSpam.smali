.class public final Landroid/provider/MiuiSettings$AntiSpam;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AntiSpam"
.end annotation


# static fields
.field public static blacklist ACTION_SOURCE_CALL:Ljava/lang/String; = null

.field public static blacklist ACTION_SOURCE_OTHER:Ljava/lang/String; = null

.field public static blacklist ACTION_SOURCE_SMS:Ljava/lang/String; = null

.field public static final blacklist AGENT:I = 0x2

.field public static final blacklist AGENT_NUM_STATE:Ljava/lang/String; = "agent_num_state"

.field public static final blacklist AGENT_NUM_STATE_SIM_2:Ljava/lang/String; = "agent_num_state_sim_2"

.field public static final blacklist ANTISPAM_ENABLE_FOR_SIM_1:Ljava/lang/String; = "antispam_enable_for_sim_1"

.field public static final blacklist ANTISPAM_ENABLE_FOR_SIM_2:Ljava/lang/String; = "antispam_enable_for_sim_2"

.field public static final blacklist ANTISPAM_MODE:Ljava/lang/String; = "antispam_mode_enable"

.field public static final blacklist ANTISPAM_PKG:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final blacklist ANTISPAM_SETTINGS_SHARED_FOR_SIMS:Ljava/lang/String; = "antispam_settings_shared_for_sims"

.field public static final blacklist AUTO_TIMER_OF_QM_ENABLE:Ljava/lang/String; = "auto_timer_of_qm_enable"

.field public static final blacklist CALL_ACT_OF_REPEATED:Ljava/lang/String; = "call_act_of_repeated"

.field private static final blacklist CALL_ACT_OF_VIP:Ljava/lang/String; = "call_act_of_vip"

.field public static final blacklist CALL_TRANSFER_NUM_STATE:Ljava/lang/String; = "call_transfer_num_state"

.field public static final blacklist CONTACT_CALL_MODE:Ljava/lang/String; = "contact_call_mode"

.field public static final blacklist CONTACT_SMS_MODE:Ljava/lang/String; = "contact_sms_mode"

.field public static final blacklist DISABLE:I = 0x0

.field public static final blacklist EMPTY_CALL_MODE:Ljava/lang/String; = "empty_call_mode"

.field public static final blacklist ENABLE:I = 0x1

.field private static final blacklist END_TIME_OF_QM:Ljava/lang/String; = "end_time_of_qm"

.field public static final blacklist FRAUD:I = 0x1

.field public static final blacklist FRAUD_NUM_STATE:Ljava/lang/String; = "fraud_num_state"

.field public static final blacklist FRAUD_NUM_STATE_SIM_2:Ljava/lang/String; = "fraud_num_state_sim_2"

.field public static final blacklist GUIDE_TYPE_DECLINE:I = 0x1

.field public static final blacklist GUIDE_TYPE_END_CALL:I = 0x2

.field public static final blacklist GUIDE_TYPE_MANUAL_MARK:I = 0x3

.field public static final blacklist HARASS:I = 0xa

.field public static final blacklist HARASS_NUM_STATE:Ljava/lang/String; = "harass_num_state"

.field public static final blacklist HARASS_NUM_STATE_SIM_2:Ljava/lang/String; = "harass_num_state_sim_2"

.field private static final blacklist HAS_NEW_ANTISPAM:Ljava/lang/String; = "has_new_antispam"

.field public static final whitelist IS_BLACKLIST_NOTIFICATION:I = 0x0

.field public static blacklist KEY_ANTISPAM_ACTION_SOURCE:Ljava/lang/String; = null

.field public static final whitelist KEY_SIM_ID:Ljava/lang/String; = "key_sim_id"

.field public static final blacklist MARK_GUIDE_AGENT:Ljava/lang/String; = "mark_guide_agent"

.field public static final blacklist MARK_GUIDE_FRAUD:Ljava/lang/String; = "mark_guide_fraud"

.field public static final blacklist MARK_GUIDE_HARASS:Ljava/lang/String; = "mark_guide_harass"

.field public static final blacklist MARK_GUIDE_IS_SET:Ljava/lang/String; = "mark_guide_is_set"

.field public static final blacklist MARK_GUIDE_SELL:Ljava/lang/String; = "mark_guide_sell"

.field public static final blacklist MARK_GUIDE_TYPE:Ljava/lang/String; = "mark_guide_type"

.field public static final blacklist MARK_GUIDE_YELLOWPAGE_CID:Ljava/lang/String; = "mark_guide_yellowpage_cid"

.field public static final blacklist MARK_NUM_GUIDE_CLASS:Ljava/lang/String; = "com.miui.antispam.ui.activity.MarkNumGuideActivity"

.field public static final whitelist MARK_PROVIDER_ID_MIUI:I = 0x18e

.field public static final blacklist MARK_TIME_AGENT:Ljava/lang/String; = "mark_time_agent"

.field public static final blacklist MARK_TIME_AGENT_SIM_2:Ljava/lang/String; = "mark_time_agent_sim_2"

.field public static final whitelist MARK_TIME_DEFAULT:I = 0x32

.field public static final blacklist MARK_TIME_FRAUD:Ljava/lang/String; = "mark_time_fraud"

.field public static final blacklist MARK_TIME_FRAUD_SIM_2:Ljava/lang/String; = "mark_time_fraud_sim_2"

.field public static final blacklist MARK_TIME_HARASS:Ljava/lang/String; = "mark_time_harass"

.field public static final blacklist MARK_TIME_HARASS_SIM_2:Ljava/lang/String; = "mark_time_harass_sim_2"

.field public static final blacklist MARK_TIME_SELL:Ljava/lang/String; = "mark_time_sell"

.field public static final blacklist MARK_TIME_SELL_SIM_2:Ljava/lang/String; = "mark_time_sell_sim_2"

.field private static final blacklist NEXT_AUTO_END_TIME_OF_QM:Ljava/lang/String; = "next_auto_end_time_of_qm"

.field private static final blacklist NEXT_AUTO_START_TIME_OF_QM:Ljava/lang/String; = "next_auto_start_time_of_qm"

.field public static final whitelist NOTIFICATION_BLOCK_TYPE:Ljava/lang/String; = "notification_block_type"

.field public static final whitelist NOTIFICATION_INTERCEPT_NUMBER:Ljava/lang/String; = "notification_intercept_number"

.field public static final whitelist NOTIFICATION_SHOW_TYPE:Ljava/lang/String; = "notification_show_type"

.field public static final whitelist NOT_BLACKLIST_NOTIFICATION:I = 0x1

.field public static final blacklist OVERSEA_CALL_MODE:Ljava/lang/String; = "oversea_call_mode"

.field public static final whitelist QUIET_MODE_ENABLE:Ljava/lang/String; = "quiet_mode_enable"

.field private static final blacklist QUIET_REPEAT_TYPE:Ljava/lang/String; = "quiet_repeat_type"

.field public static final blacklist QUIET_WRISTBAND:Ljava/lang/String; = "quiet_wristband"

.field public static final blacklist REPEATED_MARK_NUM_PERMISSION:Ljava/lang/String; = "repeated_mark_num_permission"

.field public static final blacklist SELL:I = 0x3

.field public static final blacklist SELL_NUM_STATE:Ljava/lang/String; = "sell_num_state"

.field public static final blacklist SELL_NUM_STATE_SIM_2:Ljava/lang/String; = "sell_num_state_sim_2"

.field public static final blacklist SERVICE_SMS_MODE:Ljava/lang/String; = "service_sms_mode"

.field public static final whitelist SHOW_ALL:I = 0x0

.field public static final blacklist SHOW_NONE:I = 0x2

.field public static final blacklist SHOW_NOTIFICATION_TYPE:Ljava/lang/String; = "show_notification_type"

.field public static final blacklist SHOW_NOTIFICATION_TYPE_SIM_2:Ljava/lang/String; = "show_notification_type_sim_2"

.field public static final blacklist SHOW_NOT_BLACKLIST:I = 0x1

.field public static final blacklist SIM_ID_1:I = 0x1

.field public static final blacklist SIM_ID_2:I = 0x2

.field public static final blacklist SMS_CLASSIFIER_AUTO_UPDATE:Ljava/lang/String; = "sms_classifier_auto_update"

.field public static final blacklist SMS_CLASSIFIER_UPDATE_TIME:Ljava/lang/String; = "sms_classifier_update_time"

.field private static final blacklist START_TIME_OF_QM:Ljava/lang/String; = "start_time_of_qm"

.field public static final blacklist STRANGER_CALL_MODE:Ljava/lang/String; = "stranger_call_mode"

.field public static final blacklist STRANGER_SMS_MODE:Ljava/lang/String; = "stranger_sms_mode"

.field public static final blacklist VIP_ALL_CONTACTS:I = 0x0

.field public static final blacklist VIP_CUSTOM:I = 0x2

.field private static final blacklist VIP_LIST_FOR_QM:Ljava/lang/String; = "vip_list_for_qm"

.field public static final blacklist VIP_STAR_CONTACTS:I = 0x1

.field public static final blacklist mapIdToBlockType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist mapIdToMarkTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist mapIdToState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4632
    const-string v0, "antispam_action_source"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->KEY_ANTISPAM_ACTION_SOURCE:Ljava/lang/String;

    .line 4636
    const-string v0, "action_source_sms"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_SMS:Ljava/lang/String;

    .line 4640
    const-string v0, "action_source_call"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_CALL:Ljava/lang/String;

    .line 4644
    const-string v0, "action_source_other"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_OTHER:Ljava/lang/String;

    .line 4653
    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$1;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$1;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    .line 4674
    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$2;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$2;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToBlockType:Ljava/util/HashMap;

    .line 4684
    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$3;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$3;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToMarkTime:Ljava/util/HashMap;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 4371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getEndTimeForQuietMode(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 5133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_time_of_qm"

    const/16 v2, 0x1a4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getMarkedNumberBlockType(I)I
    .registers 3
    .param p0, "cid"    # I

    .line 4736
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToBlockType:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getMode(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 4705
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getNextAutoEndTime(Landroid/content/Context;)J
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 5177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_auto_end_time_of_qm"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getNextAutoStartTime(Landroid/content/Context;)J
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 5161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_auto_start_time_of_qm"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getNotificationType(Landroid/content/Context;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .line 5270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5271
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    const-string v1, "show_notification_type"

    goto :goto_c

    :cond_a
    const-string v1, "show_notification_type_sim_2"

    :goto_c
    const/4 v2, 0x0

    .line 5270
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getQuietRepeatType(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 5199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_repeat_type"

    const/16 v2, 0x7f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getSMSClassifierUpdateTime(Landroid/content/Context;)J
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 4842
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_classifier_update_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getStartTimeForQuietMode(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 5112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "start_time_of_qm"

    const/16 v2, 0x564

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getState(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 4720
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/util/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist getVipListForQuietMode(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 5047
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vip_list_for_qm"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist hasNewAntispam(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 5285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "has_new_antispam"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAntiSpam(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 4870
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 4871
    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 4873
    :cond_c
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 4874
    .local v0, "isSim1Active":Z
    :goto_1a
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_26

    move v3, v1

    goto :goto_27

    :cond_26
    move v3, v2

    .line 4875
    .local v3, "isSim2Active":Z
    :goto_27
    const/4 v4, 0x2

    if-nez v0, :cond_3c

    if-eqz v3, :cond_2d

    goto :goto_3c

    .line 4879
    :cond_2d
    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-static {p0, v4}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :cond_3b
    :goto_3b
    return v1

    .line 4876
    :cond_3c
    :goto_3c
    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_44

    if-nez v0, :cond_4c

    .line 4877
    :cond_44
    invoke-static {p0, v4}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_4d

    if-eqz v3, :cond_4d

    :cond_4c
    goto :goto_4e

    :cond_4d
    move v1, v2

    .line 4876
    :goto_4e
    return v1
.end method

.method public static blacklist isAntiSpamEnableForSim(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .line 4892
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4893
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    const-string v2, "antispam_enable_for_sim_1"

    goto :goto_c

    :cond_a
    const-string v2, "antispam_enable_for_sim_2"

    .line 4892
    :goto_c
    invoke-static {v0, v2, v1}, Lmiui/util/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 4916
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "antispam_settings_shared_for_sims"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/util/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 5072
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_timer_of_qm_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public static blacklist isMarkNumBlockOpen(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .line 4803
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_26

    .line 4804
    const-string v2, "fraud_num_state"

    invoke-static {p0, v2, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_24

    .line 4805
    const-string v2, "agent_num_state"

    invoke-static {p0, v2, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_24

    .line 4806
    const-string v2, "sell_num_state"

    invoke-static {p0, v2, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_24

    .line 4807
    const-string v2, "harass_num_state"

    invoke-static {p0, v2, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_25

    :cond_24
    move v0, v1

    .line 4804
    :cond_25
    return v0

    .line 4808
    :cond_26
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4b

    .line 4809
    const-string v2, "fraud_num_state_sim_2"

    invoke-static {p0, v2, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_49

    .line 4810
    const-string v2, "agent_num_state_sim_2"

    invoke-static {p0, v2, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_49

    .line 4811
    const-string v2, "sell_num_state_sim_2"

    invoke-static {p0, v2, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_49

    .line 4812
    const-string v2, "harass_num_state_sim_2"

    invoke-static {p0, v2, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4a

    :cond_49
    move v0, v1

    .line 4809
    :cond_4a
    return v0

    .line 4814
    :cond_4b
    return v0
.end method

.method private static blacklist isMarkNumBlockSet(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 4764
    const-string v0, "mark_guide_is_set"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getState(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMarkingTypeGuided(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "markingType"    # Ljava/lang/String;

    .line 4783
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getState(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isQuietModeEnable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 4951
    const/4 v0, -0x3

    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->isQuietModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isQuietModeEnable(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 4960
    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->isQuietModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isQuietModeEnableForCurrentUser(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 4987
    const/4 v0, 0x0

    .line 4989
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://antispamCommon/zenmode"

    .line 4990
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4989
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_2b
    .catchall {:try_start_1 .. :try_end_19} :catchall_29

    move-object v0, v1

    .line 4992
    if-eqz v0, :cond_23

    .line 4993
    const/4 v1, 0x1

    .line 4998
    if-eqz v0, :cond_22

    .line 4999
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4993
    :cond_22
    return v1

    .line 4998
    :cond_23
    if-eqz v0, :cond_32

    .line 4999
    :goto_25
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .line 4998
    :catchall_29
    move-exception v1

    goto :goto_34

    .line 4995
    :catch_2b
    move-exception v1

    .line 4996
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    .line 4998
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_32

    .line 4999
    goto :goto_25

    .line 5002
    :cond_32
    :goto_32
    const/4 v1, 0x0

    return v1

    .line 4998
    :goto_34
    if-eqz v0, :cond_39

    .line 4999
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5001
    :cond_39
    throw v1
.end method

.method public static blacklist isQuietWristband(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 5009
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_wristband"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public static blacklist isRepeatedCallActionEnable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 5233
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->isRepeatedCallEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSMSClassifierAutoUpdate(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 4851
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_classifier_auto_update"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/util/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVipCallActionEnable(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 5213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_act_of_vip"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public static blacklist mapIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "id"    # I

    .line 4746
    sparse-switch p0, :sswitch_data_12

    .line 4756
    const-string v0, ""

    return-object v0

    .line 4754
    :sswitch_6
    const-string v0, "mark_guide_harass"

    return-object v0

    .line 4752
    :sswitch_9
    const-string v0, "mark_guide_sell"

    return-object v0

    .line 4750
    :sswitch_c
    const-string v0, "mark_guide_agent"

    return-object v0

    .line 4748
    :sswitch_f
    const-string v0, "mark_guide_fraud"

    return-object v0

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_c
        0x3 -> :sswitch_9
        0xa -> :sswitch_6
    .end sparse-switch
.end method

.method public static blacklist resetMarkedNumberBlockSettings(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 4936
    const-string v0, "fraud_num_state"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4937
    const-string v0, "agent_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4938
    const-string v0, "sell_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4939
    const-string v0, "harass_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4941
    const-string v0, "fraud_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4942
    const-string v0, "agent_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4943
    const-string v0, "sell_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4944
    const-string v0, "harass_num_state_sim_2"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4945
    return-void
.end method

.method public static blacklist setAntiSpamEnableForSim(Landroid/content/Context;IZ)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I
    .param p2, "enable"    # Z

    .line 4905
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4906
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    const-string v1, "antispam_enable_for_sim_1"

    goto :goto_c

    :cond_a
    const-string v1, "antispam_enable_for_sim_2"

    .line 4905
    :goto_c
    invoke-static {v0, v1, p2}, Lmiui/util/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4907
    return-void
.end method

.method public static blacklist setAntiSpamSettingsSharedForSims(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 4927
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "antispam_settings_shared_for_sims"

    invoke-static {v0, v1, p1}, Lmiui/util/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4929
    return-void
.end method

.method public static blacklist setAutoTimerOfQuietMode(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 5081
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5082
    nop

    .line 5081
    const-string v1, "auto_timer_of_qm_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5083
    return-void
.end method

.method public static blacklist setEndTimeForQuietMode(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minute"    # I

    .line 5144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_time_of_qm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5146
    return-void
.end method

.method public static blacklist setHasNewAntispam(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 5293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "has_new_antispam"

    invoke-static {v0, v1, p1}, Lmiui/util/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5295
    return-void
.end method

.method public static blacklist setMarkNumBlockSet(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 4771
    const-string v0, "mark_guide_is_set"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$AntiSpam;->setState(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4772
    return-void
.end method

.method public static blacklist setMarkingTypeGuided(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "markingType"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 4795
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$AntiSpam;->setState(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4796
    return-void
.end method

.method public static blacklist setMode(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "MODE"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 4713
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4714
    return-void
.end method

.method public static blacklist setNextAutoEndTime(Landroid/content/Context;J)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .line 5169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_auto_end_time_of_qm"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 5171
    return-void
.end method

.method public static blacklist setNextAutoStartTime(Landroid/content/Context;J)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .line 5153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_auto_start_time_of_qm"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 5155
    return-void
.end method

.method public static blacklist setNotificationType(Landroid/content/Context;II)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "simId"    # I

    .line 5261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5262
    const/4 v1, 0x1

    if-ne p2, v1, :cond_a

    const-string v1, "show_notification_type"

    goto :goto_c

    :cond_a
    const-string v1, "show_notification_type_sim_2"

    .line 5261
    :goto_c
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5264
    return-void
.end method

.method public static blacklist setQuietMode(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 4968
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Landroid/app/ExtraNotificationManager;->setQuietMode(Landroid/content/Context;ZI)V

    .line 4970
    return-void
.end method

.method public static blacklist setQuietMode(Landroid/content/Context;ZI)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .line 4977
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setQuietMode(Landroid/content/Context;ZI)V

    .line 4978
    return-void
.end method

.method public static blacklist setQuietRepeatType(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 5188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_repeat_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5190
    return-void
.end method

.method public static blacklist setQuietWristband(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 5017
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5018
    nop

    .line 5017
    const-string v1, "quiet_wristband"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5019
    return-void
.end method

.method public static blacklist setRepeatedCallActionEnable(Landroid/content/Context;Z)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 5243
    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->setRepeatedCallEnable(Landroid/content/Context;Z)V

    .line 5244
    return-void
.end method

.method public static blacklist setSMSClassifierAutoUpdate(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "autoUpdate"    # Z

    .line 4859
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_classifier_auto_update"

    invoke-static {v0, v1, p1}, Lmiui/util/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4861
    return-void
.end method

.method public static blacklist setSMSClassifierUpdateTime(Landroid/content/Context;J)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .line 4834
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_classifier_update_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 4836
    return-void
.end method

.method public static blacklist setStartTimeForQuietMode(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minute"    # I

    .line 5123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "start_time_of_qm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5125
    return-void
.end method

.method public static blacklist setState(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 4728
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/util/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 4729
    return-void
.end method

.method public static blacklist setVipCallActionEnable(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 5224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5225
    nop

    .line 5224
    const-string v1, "call_act_of_vip"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5226
    return-void
.end method

.method public static blacklist setVipListForQuietMode(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I

    .line 5059
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vip_list_for_qm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5060
    return-void
.end method

.method public static blacklist shouldShowGuidingDialog(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 4822
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_39

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 4823
    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockOpen(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_39

    const/4 v0, 0x2

    .line 4824
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockOpen(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_39

    .line 4825
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 4826
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkingTypeGuided(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    .line 4822
    :goto_3a
    return v1
.end method
