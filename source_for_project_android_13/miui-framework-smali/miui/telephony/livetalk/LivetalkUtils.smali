.class public Lmiui/telephony/livetalk/LivetalkUtils;
.super Ljava/lang/Object;
.source "LivetalkUtils.java"


# static fields
.field public static final whitelist DAIL_MODE:Ljava/lang/String; = "dial_mode"

.field public static final whitelist DIAL_MODE_GENERAL:I = 0x0

.field public static final whitelist DIAL_MODE_LIVETALK:I = 0x1

.field public static final whitelist ENABLE_LIVETALK_SUMMARY_CN:Ljava/lang/String; = "enable_livetalk_summary_cn"

.field public static final whitelist ENABLE_LIVETALK_SUMMARY_EN:Ljava/lang/String; = "enable_livetalk_summary_en"

.field public static final whitelist ENABLE_LIVETALK_TITLE_CN:Ljava/lang/String; = "enable_livetalk_title_cn"

.field public static final whitelist ENABLE_LIVETALK_TITLE_EN:Ljava/lang/String; = "enable_livetalk_title_en"

.field public static final whitelist FROM_VIEW:Ljava/lang/String; = "fromView"

.field public static final whitelist INTENT_ACCEPT_BACK_CALL:Ljava/lang/String; = "com.miui.livetalk_ACCEPT_BACK_CALL"

.field private static final blacklist INTENT_MY_LIVETALK:Ljava/lang/String; = "com.miui.livetalk.MY_LIVETALK_VIEW"

.field private static final blacklist INTENT_PURCHASE_ACTION:Ljava/lang/String; = "com.miui.livetalk.PURCHASE_VIEW"

.field public static final whitelist INTENT_RECORD_CALL_BACK_INFO:Ljava/lang/String; = "com.miui.livetalk_RECORD_CALLBACK_INFO"

.field private static final blacklist INTENT_WELCOME_ACTION:Ljava/lang/String; = "com.miui.livetalk.WELCOME_VIEW"

.field public static final whitelist IS_LIVETALK_DIAL:Ljava/lang/String; = "isLivetalk"

.field public static final whitelist IS_NEED_PROMPT:I = 0x1

.field public static final whitelist LIVETALK_AVAILABLE:I = 0x1

.field public static final whitelist LIVETALK_AVAILABLE_STATUS:Ljava/lang/String; = "livetalk_available_status"

.field public static final whitelist LIVETALK_DIAL_RANGE:Ljava/lang/String; = "livetalk_dial_range"

.field public static final whitelist LIVETALK_DIAL_RANGE_DEMOSTIC:I = 0x1

.field public static final whitelist LIVETALK_DIAL_RANGE_INTERNATIONAL:I = 0x2

.field public static final whitelist LIVETALK_DIAL_RANGE_WHOLE:I = 0x0

.field public static final whitelist LIVETALK_ENABLED:Ljava/lang/String; = "livetalk_enabled"

.field public static final whitelist LIVETALK_INTERNAL_DIAL_AVAIABLE:Ljava/lang/String; = "internal_dial_avaiable"

.field public static final whitelist LIVETALK_INTERNAL_DIAL_ENABLE:Ljava/lang/String; = "internal_dial_enable"

.field public static final whitelist LIVETALK_INTERNATIONAL_DIAL_AVAIABLE:Ljava/lang/String; = "international_dial_avaiable"

.field public static final whitelist LIVETALK_INTERNATIONAL_DIAL_ENABLE:Ljava/lang/String; = "international_dial_enable"

.field public static final whitelist LIVETALK_NOT_AVAILABLE:I = 0x0

.field public static whitelist LIVETALK_NUMBER_POOL_VERSION:I = 0x0

.field public static final whitelist LIVETALK_RECENT_COUNTRY_REMAIN_MINS:Ljava/lang/String; = "recent_country_remain_mins"

.field public static final whitelist LIVETALK_REMAIN_MINUTES:Ljava/lang/String; = "livetalk_remain_minutes"

.field public static final whitelist LIVETALK_SERVICE_NAME:Ljava/lang/String; = "com.miui.livetalk.service.LivetalkService"

.field public static final whitelist LIVETALK_SERVICE_STATUS:Ljava/lang/String; = "livetalk_service_status"

.field public static final whitelist LIVETALK_SWITCH_STATE:Ljava/lang/String; = "livetalk_switch_state"

.field public static final whitelist LIVETALK_USE_CURRENT_MI_ACCOUNT:Ljava/lang/String; = "livetalk_use_current_account"

.field public static final whitelist LIVETALK_WITH_170:I = 0x2

.field private static final blacklist META_DATA_SUPPORT_LIVETALK:Ljava/lang/String; = "support_livetalk"

.field public static final whitelist MY_LIVETALK_FROM_CONTACTS:I = 0xca

.field public static final whitelist MY_LIVETALK_FROM_NOTIFICATION:I = 0xc8

.field public static final whitelist MY_LIVETALK_FROM_SETTING:I = 0xc9

.field public static final whitelist NEED_PROMPT:Ljava/lang/String; = "need_prompt"

.field public static final whitelist NOT_NEED_PROMPT:I = 0x0

.field public static final whitelist ONLY_REGULAR_CALL:Ljava/lang/String; = "only_regular_call"

.field public static final whitelist PARAM_NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist PURCHASE_FROM_DIALPAGE:I = 0x2

.field public static final whitelist PURCHASE_FROM_INTERNATIONAL:I = 0x8

.field public static final whitelist PURCHASE_FROM_NOTIFICATION:I = 0x5

.field public static final whitelist PURCHASE_FROM_SAFE_CENTER_CLEANER:I = 0x7

.field public static final whitelist PURCHASE_FROM_SAFE_CENTER_OPTIMIZE:I = 0x6

.field public static final whitelist PURCHASE_FROM_SETTING:I = 0x4

.field public static final whitelist PURCHASE_FROM_SMS:I = 0x1

.field public static final whitelist PURCHASE_FROM_YELLOWPAGE:I = 0x3

.field public static final whitelist SAFE_CENTER_CLEANER_SUMMARY:Ljava/lang/String; = "safe_center_cleaner_summary"

.field public static final whitelist SAFE_CENTER_CLEANER_TITLE:Ljava/lang/String; = "safe_center_cleaner_title"

.field public static final whitelist SAFE_CENTER_OPTIMIZE_SUMMARY_CN:Ljava/lang/String; = "safe_center_optimize_summary_cn"

.field public static final whitelist SAFE_CENTER_OPTIMIZE_SUMMARY_EN:Ljava/lang/String; = "safe_center_optimize_summary_en"

.field public static final whitelist SAFE_CENTER_OPTIMIZE_TITLE_CN:Ljava/lang/String; = "safe_center_optimize_title_cn"

.field public static final whitelist SAFE_CENTER_OPTIMIZE_TITLE_EN:Ljava/lang/String; = "safe_center_optimize_title_en"

.field public static final whitelist SIM_CARD_ACTIVATED_STATE:Ljava/lang/String; = "sim_card_activated_status"

.field public static final whitelist SIM_CARD_NUMBER:Ljava/lang/String; = "sim_card_number"

.field private static final blacklist TAG:Ljava/lang/String; = "LivetalkUtils"

.field public static final whitelist USER_CONFIG_COMPLETED:Ljava/lang/String; = "user_config_completed"

.field public static final whitelist WELCOME_FROM_PURCHASE:I = 0x66

.field public static final whitelist WELCOME_FROM_SETTING:I = 0x65

.field private static blacklist sCallBackNumbers:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x0

    sput v0, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_NUMBER_POOL_VERSION:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addPrompt(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 417
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "need_prompt"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    return-void
.end method

.method public static whitelist getInternalDialAvaiable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getInternationalDialAvaiable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getInternationalRemainMins(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 388
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "recent_country_remain_mins"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static whitelist getLivetalkCleanerInfo(Landroid/content/Context;)Landroid/util/Pair;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getLivetalkDialRange(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "livetalk_dial_range"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static whitelist getLivetalkInfo(Landroid/content/Context;)Landroid/util/Pair;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getLivetalkIntentWithParam(I)Landroid/content/Intent;
    .registers 3
    .param p0, "fromView"    # I

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.livetalk.MY_LIVETALK_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "fromView"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    return-object v0
.end method

.method public static whitelist getLivetalkOptimizeInfo(Landroid/content/Context;)Landroid/util/Pair;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 437
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getLivetalkServiceStatus(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getLivetalkStatus(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getLivetalkinfoForKK(Landroid/content/ContentResolver;Landroid/content/Context;)Landroid/util/Pair;
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getPurchaseIntentWithParam(I)Landroid/content/Intent;
    .registers 3
    .param p0, "fromView"    # I

    .line 259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.livetalk.PURCHASE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "fromView"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    return-object v0
.end method

.method public static whitelist getRemainMins(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 240
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "livetalk_remain_minutes"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static whitelist getSimActivatedState(Landroid/content/Context;)[I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 213
    .local v1, "slotCount":I
    new-array v2, v1, [I

    .line 214
    .local v2, "simActivateState":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_2e

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_card_activated_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 217
    .end local v3    # "i":I
    :cond_2e
    return-object v2
.end method

.method public static whitelist getSimNumber(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 225
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 226
    .local v1, "slotCount":I
    new-array v2, v1, [Ljava/lang/String;

    .line 227
    .local v2, "simNumber":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 228
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_2e

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_card_number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 231
    :cond_2e
    return-object v2
.end method

.method public static whitelist getWelComeIntentWithParam(I)Landroid/content/Intent;
    .registers 3
    .param p0, "fromView"    # I

    .line 269
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.livetalk.WELCOME_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v1, "fromView"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    return-object v0
.end method

.method public static whitelist isInternalDialEnable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isInternationalDialEnable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isLiveTalkCallbackNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isLivetalkEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 203
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "livetalk_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    return v2
.end method

.method public static whitelist isLivetalkSwitchOn(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 317
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "livetalk_switch_state"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public static whitelist isLivetalkUseCurrentAccount(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 336
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "livetalk_use_current_account"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    return v2
.end method

.method public static whitelist isPrompt(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isShowInSafeCenter(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist removePrompt(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 407
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "need_prompt"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    return-void
.end method

.method public static whitelist setInternalDialEnable(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 298
    nop

    .line 297
    const-string v1, "internal_dial_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    return-void
.end method

.method public static whitelist setInternationalDialEnable(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 307
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 308
    nop

    .line 307
    const-string v1, "international_dial_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    return-void
.end method

.method private static blacklist supportLivetalk(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist updateLivetalkCallBackNumber(Lorg/json/JSONArray;)V
    .registers 4
    .param p0, "numberPool"    # Lorg/json/JSONArray;

    .line 149
    if-nez p0, :cond_3

    .line 150
    return-void

    .line 152
    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmiui/telephony/livetalk/LivetalkUtils;->sCallBackNumbers:[Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "i":I
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 156
    sget-object v1, Lmiui/telephony/livetalk/LivetalkUtils;->sCallBackNumbers:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1a} :catch_1e

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 161
    :cond_1d
    goto :goto_22

    .line 159
    :catch_1e
    move-exception v1

    .line 160
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 162
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_22
    return-void
.end method

.method public static whitelist updateLivetalkCallBackNumber(Lorg/json/JSONArray;I)V
    .registers 6
    .param p0, "numberPool"    # Lorg/json/JSONArray;
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 168
    if-nez p0, :cond_3

    .line 169
    return-void

    .line 171
    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 172
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/String;

    .line 173
    .local v1, "arr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_15

    .line 174
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 176
    .end local v2    # "i":I
    :cond_15
    sput-object v1, Lmiui/telephony/livetalk/LivetalkUtils;->sCallBackNumbers:[Ljava/lang/String;

    .line 177
    sput p1, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_NUMBER_POOL_VERSION:I

    .line 178
    return-void
.end method

.method public static whitelist updateLivetalkCallBackNumber(Landroid/database/Cursor;)Z
    .registers 5
    .param p0, "c"    # Landroid/database/Cursor;

    .line 126
    const/4 v0, 0x0

    if-eqz p0, :cond_45

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_45

    .line 130
    :cond_a
    :try_start_a
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lmiui/telephony/livetalk/LivetalkUtils;->sCallBackNumbers:[Ljava/lang/String;

    .line 131
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 133
    sget-object v2, Lmiui/telephony/livetalk/LivetalkUtils;->sCallBackNumbers:[Ljava/lang/String;

    const-string v3, "number"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 134
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_38
    .catchall {:try_start_a .. :try_end_2d} :catchall_36

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 136
    .end local v1    # "i":I
    :cond_30
    nop

    .line 140
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 136
    const/4 v0, 0x1

    return v0

    .line 140
    :catchall_36
    move-exception v0

    goto :goto_41

    .line 137
    :catch_38
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    :try_start_39
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_36

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 141
    nop

    .line 142
    return v0

    .line 140
    :goto_41
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 141
    throw v0

    .line 127
    :cond_45
    :goto_45
    return v0
.end method
