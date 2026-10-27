.class public Landroid/provider/MiuiSettings$Telephony;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Telephony"
.end annotation


# static fields
.field public static final blacklist ADD_ZERO_PREFIX_SWITCH:Ljava/lang/String; = "button_add_zero_prefix"

.field public static final blacklist AUTOIP_PREFIX:Ljava/lang/String; = "autoip_prefix"

.field public static final blacklist AUTOIP_SWITCH:Ljava/lang/String; = "button_autoip"

.field public static final blacklist AUTO_ANSWER_DEFAULT_DELAY_TIME:I = 0x3

.field public static final blacklist AUTO_ANSWER_DELAY_TIME:Ljava/lang/String; = "auto_answer_delay_time"

.field public static final blacklist AUTO_ANSWER_SCENARIO:Ljava/lang/String; = "auto_answer_scenario"

.field public static final blacklist AUTO_ANSWER_SCENARIO_ALWAYS:I = 0x0

.field public static final blacklist AUTO_ANSWER_SCENARIO_BLUETOOTH_ONLY:I = 0x2

.field public static final blacklist AUTO_ANSWER_SCENARIO_HEADSET_BLUETOOTH:I = 0x3

.field public static final blacklist AUTO_ANSWER_SCENARIO_HEADSET_ONLY:I = 0x1

.field public static final blacklist AUTO_COUNTRY_CODE:Ljava/lang/String; = "auto_country_code"

.field public static final blacklist AUTO_IP_SUPPORT_LOCAL_NUMBERS:Ljava/lang/String; = "button_auto_ip_support_local_numbers"

.field private static final blacklist CALL_WAITING_TONE:Ljava/lang/String; = "call_waiting_tone"

.field public static final blacklist CALL_WAITING_TONE_CONTINUOUSLY:I = 0x0

.field public static final blacklist CALL_WAITING_TONE_TWICE_AND_VIBRATE:I = 0x2

.field public static final blacklist CALL_WAITING_TONE_TWICE_ONLY:I = 0x1

.field public static final blacklist CONNECT_DISCONNECT_VIBRATE:Ljava/lang/String; = "button_connect_disconnect_vibrate"

.field public static final blacklist CONTACT_COUNTRYCODE:Ljava/lang/String; = "persist.radio.countrycode"

.field public static final blacklist CURRENT_AREACODE:Ljava/lang/String; = "current_areacode"

.field public static final blacklist ENABLED_ANTISPAM_STRANGE:Ljava/lang/String; = "button_antispam_strange"

.field public static final blacklist ENABLED_AUTO_ANSWER:Ljava/lang/String; = "button_auto_answer"

.field public static final blacklist ENABLED_AUTO_RECORD:Ljava/lang/String; = "button_auto_record_call"

.field public static final blacklist ENABLED_AUTO_REDIAL:Ljava/lang/String; = "button_auto_redial"

.field public static final blacklist ENABLED_HANDON_RINGER:Ljava/lang/String; = "button_handon_ringer"

.field public static final blacklist ENABLED_INCOMING_VIDEO_SHOW:Ljava/lang/String; = "button_incoming_video_show"

.field public static final blacklist ENABLED_RECORD_NOTIFY:Ljava/lang/String; = "button_call_recording_notification"

.field public static final blacklist ENABLED_SMART_CALL_FORWARD:Ljava/lang/String; = "enabled_smart_call_forward"

.field public static final blacklist ENABLED_TURN_OVER_MUTE:Ljava/lang/String; = "button_turn_over_mute"

.field public static final blacklist ENABLED_UNKNOWN_NUMBER_RECORD:Ljava/lang/String; = "button_record_unknown_number"

.field public static final blacklist ENABLED_VOICE_SERVICE:Ljava/lang/String; = "button_voice_service"

.field public static final blacklist ENABLED_YELLOWPAGE_RECORD:Ljava/lang/String; = "button_record_yellowpage_number"

.field public static final blacklist ENABLE_CRESCENDO_RINGER:Ljava/lang/String; = "button_crescendo_ringer"

.field public static final blacklist ENABLE_PROXIMITY_KEY:Ljava/lang/String; = "button_enable_proximity"

.field public static final blacklist ENABLE_REJECT_VIA_SMS_KEY:Ljava/lang/String; = "button_enable_reject_via_sms"

.field public static final blacklist ENABLE_TELOCATION:Ljava/lang/String; = "enable_telocation"

.field public static final blacklist IVR_MO_AREA_CODE_SLOT_1:Ljava/lang/String; = "ivr_mo_area_code_slot_1"

.field public static final blacklist IVR_MO_AREA_CODE_SLOT_2:Ljava/lang/String; = "ivr_mo_area_code_slot_2"

.field public static final blacklist IVR_TYPE_SLOT_1:Ljava/lang/String; = "ivr_type_slot_1"

.field public static final blacklist IVR_TYPE_SLOT_2:Ljava/lang/String; = "ivr_type_slot_2"

.field public static final blacklist MISSED_CALL_NOTIFY_TIMES:Ljava/lang/String; = "button_missed_call_notify_times"

.field public static final blacklist RECORD_SCENARIO:Ljava/lang/String; = "radio_record_scenario"

.field public static final blacklist RECORD_WHITE_LIST:Ljava/lang/String; = "record_white_list"

.field public static final blacklist REJECT_VIA_SMS_RESPONSE_1:Ljava/lang/String; = "reject_via_sms_response_1"

.field public static final blacklist REJECT_VIA_SMS_RESPONSE_2:Ljava/lang/String; = "reject_via_sms_response_2"

.field public static final blacklist REJECT_VIA_SMS_RESPONSE_3:Ljava/lang/String; = "reject_via_sms_response_3"

.field public static final blacklist REJECT_VIA_SMS_RESPONSE_4:Ljava/lang/String; = "reject_via_sms_response_4"

.field public static final blacklist VOLTE_FEATURE_DISABLED:Ljava/lang/String; = "volte_feature_disabled"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAutoAnswerCallDelayTime(Landroid/content/ContentResolver;)I
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6504
    const-string v0, "auto_answer_delay_time"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getAutoAnswerCallScenario(Landroid/content/ContentResolver;)I
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6518
    const-string v0, "auto_answer_scenario"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "defaultPrefix"    # Ljava/lang/String;

    .line 5956
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "defaultPrefix"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 5980
    const-string v0, "autoip_prefix"

    .line 5981
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_15

    .line 5982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5984
    :cond_15
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getCallWaitingTone(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 5877
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_waiting_tone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5879
    .local v0, "index":I
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "lithium"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 5880
    const/4 v0, 0x0

    .line 5882
    :cond_19
    return v0
.end method

.method public static blacklist getContactCountrycode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 5936
    const-string v0, "persist.radio.countrycode"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCurrentAeraCode(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .line 5906
    const-string v0, "current_areacode"

    .line 5907
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_15

    .line 5908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5910
    :cond_15
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getEnabledAutoRedial(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6123
    const-string v0, "button_auto_redial"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist getEnabledVoiceService(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6480
    const-string v0, "button_voice_service"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist getIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .line 6288
    const-string v0, ""

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMissedCallNotifyTimes(Landroid/content/ContentResolver;)I
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6104
    const-string v0, "button_missed_call_notify_times"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getRecordScenario(Landroid/content/ContentResolver;)I
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6201
    const-string v0, "radio_record_scenario"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getRecordWhiteList(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6221
    const-string v0, "record_white_list"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRejectViaSmsResponse(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 6453
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getVibrateKey(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6085
    const-string v0, "button_connect_disconnect_vibrate"

    const-string v1, "100"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isAntispamStangerEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6066
    const-string v0, "button_antispam_strange"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAutoAddZeroPrefix(Landroid/content/ContentResolver;I)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .line 6358
    const-string v0, "button_add_zero_prefix"

    .line 6359
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_15

    .line 6360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6362
    :cond_15
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static blacklist isAutoAnswerCall(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6488
    const-string v0, "button_auto_answer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6315
    const-string v0, "auto_country_code"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAutoIpEnable(Landroid/content/ContentResolver;I)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .line 6332
    const-string v0, "button_autoip"

    .line 6333
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_15

    .line 6334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6336
    :cond_15
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static blacklist isAutoIpSupportLocalNum(Landroid/content/ContentResolver;I)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .line 6385
    const-string v0, "button_auto_ip_support_local_numbers"

    .line 6386
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p1, :cond_15

    .line 6387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6389
    :cond_15
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static blacklist isAutoRecordEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6181
    const-string v0, "button_auto_record_call"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isCrescendoRingerEnable(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6047
    const-string v0, "button_crescendo_ringer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isHandonRingerEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6028
    const-string v0, "button_handon_ringer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isIncomingVideoShowEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6142
    const-string v0, "button_incoming_video_show"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isProximitySensorEnable(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6411
    const-string v0, "button_enable_proximity"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isRecordNotificationEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6161
    const-string v0, "button_call_recording_notification"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isRejectViaSmsEnable(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6428
    const-string v0, "button_enable_reject_via_sms"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSmartCallForwardEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6542
    const-string v0, "enabled_smart_call_forward"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isTelocationEnable(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6296
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isBuildRegionForTaiWan()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "enable_telocation"

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isTurnOverMuteEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6009
    const-string v0, "button_turn_over_mute"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUnknownNumberRecordEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6241
    const-string v0, "button_record_unknown_number"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isYellowpageRecordEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 6260
    const-string v0, "button_record_yellowpage_number"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist setAntispamStangerEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabled"    # Z

    .line 6076
    const-string v0, "button_antispam_strange"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6077
    return-void
.end method

.method public static blacklist setAutoAddZeroPrefixEnable(Landroid/content/ContentResolver;ZI)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .param p2, "slotId"    # I

    .line 6372
    const-string v0, "button_add_zero_prefix"

    .line 6373
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_15

    .line 6374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6376
    :cond_15
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6377
    return-void
.end method

.method public static blacklist setAutoAnswerCall(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 6497
    const-string v0, "button_auto_answer"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6498
    return-void
.end method

.method public static blacklist setAutoAnswerCallDelayTime(Landroid/content/ContentResolver;I)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "value"    # I

    .line 6511
    const-string v0, "auto_answer_delay_time"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6512
    return-void
.end method

.method public static blacklist setAutoAnswerCallScenario(Landroid/content/ContentResolver;I)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "value"    # I

    .line 6533
    const-string v0, "auto_answer_scenario"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6534
    return-void
.end method

.method public static blacklist setAutoCountryCodeEnable(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 6324
    const-string v0, "auto_country_code"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6325
    return-void
.end method

.method public static blacklist setAutoIpEnable(Landroid/content/ContentResolver;ZI)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .param p2, "slotId"    # I

    .line 6345
    const-string v0, "button_autoip"

    .line 6346
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_15

    .line 6347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6349
    :cond_15
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6350
    return-void
.end method

.method public static blacklist setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "IpPrefix"    # Ljava/lang/String;

    .line 5967
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 5968
    return-void
.end method

.method public static blacklist setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "IpPrefix"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 5996
    const-string v0, "autoip_prefix"

    .line 5997
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_15

    .line 5998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6000
    :cond_15
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6001
    return-void
.end method

.method public static blacklist setAutoIpSupportLocalNumEnable(Landroid/content/ContentResolver;ZI)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .param p2, "slotId"    # I

    .line 6399
    const-string v0, "button_auto_ip_support_local_numbers"

    .line 6400
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_15

    .line 6401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6403
    :cond_15
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6404
    return-void
.end method

.method public static blacklist setAutoRecordEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledAutoRecord"    # Z

    .line 6192
    const-string v0, "button_auto_record_call"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6193
    return-void
.end method

.method public static blacklist setAutoRedialEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledRedial"    # Z

    .line 6133
    const-string v0, "button_auto_redial"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6134
    return-void
.end method

.method public static blacklist setCallWaitingTone(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callWaitingToneType"    # I

    .line 5895
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_waiting_tone"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5897
    return-void
.end method

.method public static blacklist setContactCountrycode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 5947
    const-string v0, "persist.radio.countrycode"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5948
    return-void
.end method

.method public static blacklist setCrescendoRingerEnable(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabled"    # Z

    .line 6057
    const-string v0, "button_crescendo_ringer"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6058
    return-void
.end method

.method public static blacklist setCurrentAeraCode(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "aeraCode"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 5921
    const-string v0, "current_areacode"

    .line 5922
    .local v0, "prefix":Ljava/lang/String;
    if-ltz p2, :cond_15

    .line 5923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5925
    :cond_15
    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5926
    return-void
.end method

.method public static blacklist setHandonRingerEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabled"    # Z

    .line 6038
    const-string v0, "button_handon_ringer"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6039
    return-void
.end method

.method public static blacklist setIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 6279
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6280
    return-void
.end method

.method public static blacklist setIncomingVideoShowEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isVideoShowEnabled"    # Z

    .line 6152
    const-string v0, "button_incoming_video_show"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6153
    return-void
.end method

.method public static blacklist setMissedCallNotifyTimes(Landroid/content/ContentResolver;I)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "notifyTimes"    # I

    .line 6114
    const-string v0, "button_missed_call_notify_times"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6115
    return-void
.end method

.method public static blacklist setProximitySensorEnable(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 6420
    const-string v0, "button_enable_proximity"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6421
    return-void
.end method

.method public static blacklist setRecordNotificationEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledRecordNotify"    # Z

    .line 6172
    const-string v0, "button_call_recording_notification"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6173
    return-void
.end method

.method public static blacklist setRecordScenario(Landroid/content/ContentResolver;I)V
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "recordScenario"    # I

    .line 6211
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "radio_record_scenario"

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6212
    return-void
.end method

.method public static blacklist setRecordWhiteList(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "recordWhiteList"    # Ljava/lang/String;

    .line 6232
    const-string v0, "record_white_list"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6233
    return-void
.end method

.method public static blacklist setRejectViaSmsEnable(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 6437
    const-string v0, "button_enable_reject_via_sms"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6438
    return-void
.end method

.method public static blacklist setRejectViaSmsRespone(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 6463
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6464
    return-void
.end method

.method public static blacklist setSmartCallForwardEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 6551
    const-string v0, "enabled_smart_call_forward"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6552
    return-void
.end method

.method public static blacklist setTelocationEnable(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 6305
    const-string v0, "enable_telocation"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6306
    return-void
.end method

.method public static blacklist setTurnOverMuteEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z

    .line 6019
    const-string v0, "button_turn_over_mute"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6020
    return-void
.end method

.method public static blacklist setUnknownNumberRecordEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabledUnknownNumberRecord"    # Z

    .line 6251
    const-string v0, "button_record_unknown_number"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6252
    return-void
.end method

.method public static blacklist setVibrateKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "vibrateKey"    # Ljava/lang/String;

    .line 6095
    const-string v0, "button_connect_disconnect_vibrate"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6096
    return-void
.end method

.method public static blacklist setVoiceServiceEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isEnabledVoiceService"    # Z

    .line 6472
    const-string v0, "button_voice_service"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6473
    return-void
.end method

.method public static blacklist setYellowpageRecordEnabled(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enabledYellowpageRecord"    # Z

    .line 6270
    const-string v0, "button_record_yellowpage_number"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6271
    return-void
.end method
