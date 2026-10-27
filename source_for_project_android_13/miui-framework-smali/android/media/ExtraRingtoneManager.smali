.class public Landroid/media/ExtraRingtoneManager;
.super Ljava/lang/Object;
.source "ExtraRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExtraRingtoneManager$SoundItem;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_MIUI_RINGTONE_PICKER:Ljava/lang/String; = "miui.intent.action.RINGTONE_PICKER"

.field public static final whitelist EXTRA_RINGTONE_URI_LIST:Ljava/lang/String; = "miui.intent.extra.ringtone.EXTRA_RINGTONE_URI_LIST"

.field private static final blacklist TAG:Ljava/lang/String; = "ExtraRingtoneManager"

.field private static final blacklist TARGET_USER:Ljava/lang/String; = "root"

.field public static final whitelist TYPE_CALENDAR:I = 0x1000

.field public static final whitelist TYPE_MUSIC:I = 0x20

.field public static final whitelist TYPE_NOTES:I = 0x2000

.field public static final whitelist TYPE_RINGTONE_SLOT_1:I = 0x40

.field public static final whitelist TYPE_RINGTONE_SLOT_2:I = 0x80

.field public static final whitelist TYPE_SMS_DELIVERED_SLOT_1:I = 0x100

.field public static final whitelist TYPE_SMS_DELIVERED_SLOT_2:I = 0x200

.field public static final whitelist TYPE_SMS_DELIVERED_SOUND:I = 0x8

.field public static final whitelist TYPE_SMS_RECEIVED_SLOT_1:I = 0x400

.field public static final whitelist TYPE_SMS_RECEIVED_SLOT_2:I = 0x800

.field public static final whitelist TYPE_SMS_RECEIVED_SOUND:I = 0x10

.field private static blacklist sRingtoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/ExtraRingtoneManager$SoundItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    .line 79
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    const-string v3, "ringtone"

    const v4, 0x110f01aa

    const-string v6, "ringtone_cache"

    invoke-static/range {v1 .. v6}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 85
    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sget-object v11, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    const/4 v7, 0x2

    const-string v9, "notification_sound"

    const v10, 0x110f01a9

    const-string v12, "notification_sound_cache"

    invoke-static/range {v7 .. v12}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 91
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    const-string v2, "alarm_alert"

    const v3, 0x110f01a6

    const-string v5, "alarm_alert_cache"

    invoke-static/range {v0 .. v5}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 97
    sget-object v7, Landroid/provider/MiuiSettings$System;->DEFAULT_CALENDAR_ALERT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/MiuiSettings$System;->CALENDAR_ALERT_CACHE_URI:Landroid/net/Uri;

    const/16 v6, 0x1000

    const-string v8, "calendar_alert"

    const v9, 0x110f01a7

    const-string v11, "calendar_alert_cache"

    invoke-static/range {v6 .. v11}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 103
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_NOTES_ALERT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/MiuiSettings$System;->NOTES_ALERT_CACHE_URI:Landroid/net/Uri;

    const/16 v0, 0x2000

    const-string v2, "notes_alert"

    const v3, 0x110f01a8

    const-string v5, "notes_alert_cache"

    invoke-static/range {v0 .. v5}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 109
    sget-object v7, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/MiuiSettings$System;->SMS_DELIVERED_SOUND_CACHE_URI:Landroid/net/Uri;

    const/16 v6, 0x8

    const-string v8, "sms_delivered_sound"

    const v9, 0x110f01ad

    const-string v11, "sms_delivered_sound_cahce"

    invoke-static/range {v6 .. v11}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 115
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/MiuiSettings$System;->SMS_RECEIVED_SOUND_CACHE_URI:Landroid/net/Uri;

    const/16 v0, 0x10

    const-string v2, "sms_received_sound"

    const v3, 0x110f01b0

    const-string v5, "sms_received_sound_cache"

    invoke-static/range {v0 .. v5}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 121
    sget-object v7, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    sget-object v10, Landroid/provider/MiuiSettings$System;->RINGTONE_SOUND_SLOT_1_CACHE_URI:Landroid/net/Uri;

    const/16 v6, 0x40

    const-string v8, "ringtone_sound_slot_1"

    const v9, 0x110f01ab

    const-string v11, "ringtone_sound_slot_1_cache"

    invoke-static/range {v6 .. v11}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 127
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    sget-object v4, Landroid/provider/MiuiSettings$System;->RINGTONE_SOUND_SLOT_2_CACHE_URI:Landroid/net/Uri;

    const/16 v0, 0x80

    const-string v2, "ringtone_sound_slot_2"

    const v3, 0x110f01ac

    const-string v5, "ringtone_sound_slot_2_cache"

    invoke-static/range {v0 .. v5}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 133
    sget-object v7, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    sget-object v10, Landroid/provider/MiuiSettings$System;->SMS_RECEIVED_SOUND_SLOT_1_CACHE_URI:Landroid/net/Uri;

    const/16 v6, 0x400

    const-string v8, "sms_received_sound_slot_1"

    const v9, 0x110f01b1

    const-string v11, "sms_received_sound_slot_1_cache"

    invoke-static/range {v6 .. v11}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 139
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    sget-object v4, Landroid/provider/MiuiSettings$System;->SMS_RECEIVED_SOUND_SLOT_2_CACHE_URI:Landroid/net/Uri;

    const/16 v0, 0x800

    const-string v2, "sms_received_sound_slot_2"

    const v3, 0x110f01b2

    const-string v5, "sms_received_sound_slot_2_cache"

    invoke-static/range {v0 .. v5}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 145
    sget-object v7, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    sget-object v10, Landroid/provider/MiuiSettings$System;->SMS_DELIVERED_SOUND_SLOT_1_CACHE_URI:Landroid/net/Uri;

    const/16 v6, 0x100

    const-string v8, "sms_delivered_sound_slot_1"

    const v9, 0x110f01ae

    const-string v11, "sms_delivered_sound_slot_1_cache"

    invoke-static/range {v6 .. v11}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 151
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    sget-object v4, Landroid/provider/MiuiSettings$System;->SMS_DELIVERED_SOUND_SLOT_2_CACHE_URI:Landroid/net/Uri;

    const/16 v0, 0x200

    const-string v2, "sms_delivered_sound_slot_2"

    const v3, 0x110f01af

    const-string v5, "sms_delivered_sound_slot_2_cache"

    invoke-static/range {v0 .. v5}, Landroid/media/ExtraRingtoneManager;->addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method private static blacklist addSoundItem(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 14
    .param p0, "type"    # I
    .param p1, "defaultUri"    # Landroid/net/Uri;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "cacheUri"    # Landroid/net/Uri;
    .param p5, "cacheType"    # Ljava/lang/String;

    .line 464
    new-instance v7, Landroid/media/ExtraRingtoneManager$SoundItem;

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/ExtraRingtoneManager$SoundItem;-><init>(ILandroid/net/Uri;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 465
    .local v0, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    sget-object v1, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    return-void
.end method

.method public static whitelist getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 301
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->isValidType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActualDefaultRingtoneUri type is invalid, type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExtraRingtoneManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-object v1

    .line 305
    :cond_20
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 306
    .local v0, "defaultSettingUri":Landroid/net/Uri;
    if-nez v0, :cond_27

    .line 307
    return-object v0

    .line 309
    :cond_27
    const/4 v2, 0x0

    .line 310
    .local v2, "isCycle":Z
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 311
    invoke-static {v0}, Landroid/media/ExtraRingtoneManager;->isSystemSettingsUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 312
    invoke-static {v0}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundType(Landroid/net/Uri;)I

    move-result v3

    .line 313
    .local v3, "directType":I
    invoke-static {v3}, Landroid/media/ExtraRingtoneManager;->isValidType(I)Z

    move-result v5

    if-nez v5, :cond_45

    .line 314
    return-object v1

    .line 316
    :cond_45
    invoke-static {p0, v3}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 317
    .local v5, "directUri":Landroid/net/Uri;
    if-nez v5, :cond_4c

    .line 318
    return-object v1

    .line 319
    :cond_4c
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 320
    invoke-static {v5}, Landroid/media/ExtraRingtoneManager;->isSystemSettingsUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 321
    const/4 v2, 0x1

    goto :goto_61

    .line 323
    :cond_5e
    return-object v5

    .line 326
    :cond_5f
    move-object v0, v5

    .line 327
    move p1, v3

    .line 329
    .end local v3    # "directType":I
    .end local v5    # "directUri":Landroid/net/Uri;
    :goto_61
    goto :goto_63

    .line 330
    :cond_62
    return-object v0

    .line 333
    :cond_63
    :goto_63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v3, "effectPathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_71

    .line 335
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_71
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getBuildInRingtonePathRes(I)I

    move-result v4

    invoke-static {p0, v4}, Landroid/media/ExtraRingtoneManager;->getBuildInRingtonePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 339
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 342
    .end local v5    # "path":Ljava/lang/String;
    :cond_b5
    goto :goto_80

    .line 343
    :cond_b6
    return-object v1
.end method

.method private static blacklist getBuildInRingtonePath(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 495
    if-lez p1, :cond_12

    .line 496
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    .line 498
    :catch_7
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExtraRingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_12
    nop

    .line 501
    :goto_13
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getBuildInRingtonePathRes(I)I
    .registers 4
    .param p0, "type"    # I

    .line 455
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 456
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_19

    .line 457
    iget v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->buildInPathRes:I

    return v0

    .line 459
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_19
    goto :goto_6

    .line 460
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getCacheForType(II)Landroid/net/Uri;
    .registers 5
    .param p0, "type"    # I
    .param p1, "userId"    # I

    .line 386
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 387
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_1e

    .line 388
    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mCacheUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 390
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_1e
    goto :goto_6

    .line 391
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDefaultRingtoneUri(I)Landroid/net/Uri;
    .registers 4
    .param p0, "type"    # I

    .line 436
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 437
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_19

    .line 438
    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mDefaultRingtoneUri:Landroid/net/Uri;

    return-object v0

    .line 440
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_19
    goto :goto_6

    .line 441
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultRingtoneUri type is invalid, type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtraRingtoneManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getDefaultSoundActualUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 293
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 296
    :cond_8
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultSoundInternalUri(I)Landroid/net/Uri;
    .registers 2
    .param p0, "type"    # I

    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getDefaultSoundName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 350
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 351
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 283
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultSoundType(Landroid/net/Uri;)I
    .registers 3
    .param p0, "defaultSoundUri"    # Landroid/net/Uri;

    .line 175
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 176
    return v0

    .line 177
    :cond_4
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 178
    const/4 v0, 0x1

    return v0

    .line 179
    :cond_e
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 180
    const/4 v0, 0x2

    return v0

    .line 181
    :cond_18
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 182
    const/4 v0, 0x4

    return v0

    .line 183
    :cond_22
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_CALENDAR_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 184
    const/16 v0, 0x1000

    return v0

    .line 185
    :cond_2d
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_NOTES_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 186
    const/16 v0, 0x2000

    return v0

    .line 187
    :cond_38
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 188
    const/16 v0, 0x40

    return v0

    .line 189
    :cond_43
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_RINGTONE_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 190
    const/16 v0, 0x80

    return v0

    .line 191
    :cond_4e
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 192
    const/16 v0, 0x10

    return v0

    .line 193
    :cond_59
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 194
    const/16 v0, 0x400

    return v0

    .line 195
    :cond_64
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 196
    const/16 v0, 0x800

    return v0

    .line 197
    :cond_6f
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 198
    const/16 v0, 0x8

    return v0

    .line 199
    :cond_7a
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 200
    const/16 v0, 0x100

    return v0

    .line 201
    :cond_85
    sget-object v1, Landroid/provider/MiuiSettings$System;->DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 202
    const/16 v0, 0x200

    return v0

    .line 204
    :cond_90
    return v0
.end method

.method public static blacklist getMiuiCacheName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 416
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 417
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget-object v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mCacheUri:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 418
    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mCacheType:Ljava/lang/String;

    return-object v0

    .line 420
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_1d
    goto :goto_6

    .line 421
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getMiuiCacheRingtoneSetting(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 406
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 407
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget-object v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mCacheUri:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 408
    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mSettingType:Ljava/lang/String;

    return-object v0

    .line 410
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_1d
    goto :goto_6

    .line 411
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getMiuiRingtoneCacheName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 426
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 427
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget-object v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mSettingType:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 428
    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mCacheType:Ljava/lang/String;

    return-object v0

    .line 430
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_1d
    goto :goto_6

    .line 431
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 274
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSettingForType(I)Ljava/lang/String;
    .registers 4
    .param p0, "type"    # I

    .line 376
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 377
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_1a

    .line 378
    iget-object v0, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mSettingType:Ljava/lang/String;

    return-object v0

    .line 380
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_1a
    goto :goto_6

    .line 381
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 5
    .param p0, "soundUri"    # Landroid/net/Uri;
    .param p1, "ringtoneType"    # I

    .line 365
    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 366
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 367
    .local v0, "actualSoundUri":Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 368
    move-object p0, v0

    .line 371
    .end local v0    # "actualSoundUri":Landroid/net/Uri;
    :cond_1a
    return-object p0
.end method

.method public static whitelist isExtraCases(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "soundUri"    # Landroid/net/Uri;

    .line 358
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMiuiRingtoneCacheUri(Landroid/net/Uri;)Z
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 396
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 397
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget-object v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mCacheUri:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 398
    const/4 v0, 0x1

    return v0

    .line 400
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_1c
    goto :goto_6

    .line 401
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isSystemSettingsUri(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 505
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 506
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 505
    :goto_1d
    return v0
.end method

.method private static blacklist isValidType(I)Z
    .registers 4
    .param p0, "type"    # I

    .line 446
    sget-object v0, Landroid/media/ExtraRingtoneManager;->sRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExtraRingtoneManager$SoundItem;

    .line 447
    .local v1, "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    iget v2, v1, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    if-ne p0, v2, :cond_18

    .line 448
    const/4 v0, 0x1

    return v0

    .line 450
    .end local v1    # "ringtoneItem":Landroid/media/ExtraRingtoneManager$SoundItem;
    :cond_18
    goto :goto_6

    .line 451
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist resolveRingtonePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 225
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->resolveSoundPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist resolveSoundPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 238
    .local v1, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 239
    .local v2, "mediaProvider":Landroid/content/ContentResolver;
    const-string v3, "_data"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 242
    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 243
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_2b
    .catchall {:try_start_2 .. :try_end_22} :catchall_29

    move-object v0, v3

    .line 248
    .end local v2    # "mediaProvider":Landroid/content/ContentResolver;
    :cond_23
    if-eqz v1, :cond_32

    .line 249
    :goto_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .line 248
    :catchall_29
    move-exception v2

    goto :goto_33

    .line 245
    :catch_2b
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    .line 248
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_32

    .line 249
    goto :goto_25

    .line 252
    :cond_32
    :goto_32
    return-object v0

    .line 248
    :goto_33
    if-eqz v1, :cond_38

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_38
    throw v2
.end method

.method public static whitelist saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 218
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 219
    return-void
.end method
