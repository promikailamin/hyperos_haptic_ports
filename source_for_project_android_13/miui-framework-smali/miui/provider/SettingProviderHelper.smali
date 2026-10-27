.class public Lmiui/provider/SettingProviderHelper;
.super Ljava/lang/Object;
.source "SettingProviderHelper.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getRingtoneAuthority(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p0, "soundUri"    # Landroid/net/Uri;

    .line 54
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "authority":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 56
    const-string v0, ""

    .line 58
    :cond_8
    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_18

    .line 61
    :cond_17
    return-object v0

    .line 59
    :cond_18
    :goto_18
    return-object v1
.end method

.method public static blacklist getRingtoneUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 4
    .param p0, "soundUri"    # Landroid/net/Uri;
    .param p1, "ringtoneType"    # I

    .line 65
    invoke-static {p0}, Lmiui/provider/SettingProviderHelper;->getRingtoneAuthority(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 66
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 68
    :cond_11
    return-object p0
.end method

.method private static blacklist loadCustomBootAudioSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p0, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 51
    return-void
.end method

.method public static blacklist loadDefaultRingtoneSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;)V
    .registers 6
    .param p0, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    const-string v0, "ringtone_default"

    .line 20
    .local v0, "DEFAULT_RINGTONE":Ljava/lang/String;
    const-string v1, "boot_audio"

    .line 21
    .local v1, "BOOT_AUDIO":Ljava/lang/String;
    const-string v2, "ringtone_default"

    const v3, 0x110f01aa

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 22
    const-string v2, "ringtone"

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 23
    const-string v2, "alarm_alert"

    const v3, 0x110f01a6

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 24
    const-string v2, "notification_sound"

    const v3, 0x110f01a9

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 25
    const-string v2, "calendar_alert"

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 26
    const-string v2, "notes_alert"

    const v3, 0x110f01a8

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 27
    const-string v2, "sms_delivered_sound"

    const v3, 0x110f01ad

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 28
    const-string v2, "sms_received_sound"

    const v3, 0x110f01b0

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 29
    const-string v2, "ringtone_sound_slot_1"

    const v3, 0x110f01ab

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 30
    const-string v2, "ringtone_sound_slot_2"

    const v3, 0x110f01ac

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 31
    const-string v2, "sms_delivered_sound_slot_1"

    const v3, 0x110f01ae

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 32
    const-string v2, "sms_delivered_sound_slot_2"

    const v3, 0x110f01af

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 33
    const-string v2, "sms_received_sound_slot_1"

    const v3, 0x110f01b1

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 34
    const-string v2, "sms_received_sound_slot_2"

    const v3, 0x110f01b2

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 35
    const-string v2, "boot_audio"

    const v3, 0x110b004e

    invoke-static {p0, p1, v2, v3}, Lmiui/provider/SettingProviderHelper;->loadCustomBootAudioSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method private static blacklist loadRingtoneSetting(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8
    .param p0, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .line 39
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 42
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 45
    :cond_33
    return-void
.end method
