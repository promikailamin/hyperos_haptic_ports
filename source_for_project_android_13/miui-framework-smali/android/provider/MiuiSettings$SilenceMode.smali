.class public final Landroid/provider/MiuiSettings$SilenceMode;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SilenceMode"
.end annotation


# static fields
.field protected static final blacklist DEBUG_MODE:Z

.field public static final blacklist LASTEST_MODE:Ljava/lang/String; = "default_mode"

.field public static final blacklist MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

.field public static final blacklist MISTAT_SILENCE_DND:Ljava/lang/String; = "silence_DND"

.field public static final blacklist MIUI_ALARMS:I = 0x3

.field public static final blacklist MIUI_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final blacklist MIUI_NO_INTERRUPTIONS:I = 0x2

.field public static final blacklist MUTE_MUSIC:Ljava/lang/String; = "mute_music"

.field public static final blacklist MUTE_MUSIC_AT_SILENT:Ljava/lang/String; = "mute_music_at_silent"

.field public static final blacklist MUTE_VOICEASSIST_AT_SILENT:Ljava/lang/String; = "mute_voiceassit_at_silent"

.field public static final blacklist NORMAL:I = 0x0

.field public static final blacklist REMAIN_TIME:Ljava/lang/String; = "remain_time"

.field public static final whitelist SHOW_NOTIFICATION:Ljava/lang/String; = "show_notification"

.field public static final blacklist SILENCE_MODE:Ljava/lang/String; = "zen_mode"

.field private static final blacklist TAG:Ljava/lang/String; = "SilenceMode"

.field public static final blacklist VIP_ENABLE:Ljava/lang/String; = "vip_enable"

.field public static final blacklist VOLUME_MUSIC_BEFORE_MUTE:Ljava/lang/String; = "volume_music_before_mute"

.field public static final blacklist ZEN_MODE_MIUI_SILENT:I = 0x4

.field public static final whitelist isSupported:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 4141
    const-string v0, "SilenceMode.MOD"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->DEBUG_MODE:Z

    .line 4198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    sput-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    .line 4207
    const-string v0, "normal"

    const-string v1, "DND"

    const-string v2, "null"

    const-string v3, "silence"

    const-string v4, "new"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 4131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableVIPMode(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 4300
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Landroid/app/ExtraNotificationManager;->enableVIPMode(Landroid/content/Context;ZI)V

    .line 4302
    return-void
.end method

.method public static blacklist enableVIPMode(Landroid/content/Context;ZI)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .line 4308
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->enableVIPMode(Landroid/content/Context;ZI)V

    .line 4309
    return-void
.end method

.method public static whitelist getLastestQuietMode(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 4247
    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist getRemainTime(Landroid/content/Context;)J
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 4227
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getZenMode(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 4268
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static blacklist isDNDEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 4351
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static whitelist isSilenceModeEnable(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 4278
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_9

    .line 4279
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 4281
    :cond_9
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4282
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method public static blacklist isSilenceModeEnable(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 4289
    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->isSilenceModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVIPModeEnable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 4258
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->isVIPModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static blacklist muteMusicStream(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 4342
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 4344
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x3

    .line 4343
    const-string v3, "mute_music"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v1, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 4342
    :goto_16
    return v1
.end method

.method public static blacklist reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "time"    # J

    .line 4358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4359
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4360
    const-string v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4361
    const-string v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4362
    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4364
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->DEBUG_MODE:Z

    if-eqz v1, :cond_5b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportRingerModeInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SilenceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    :cond_5b
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    const/16 v2, 0x4d

    .line 4367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4366
    invoke-virtual {v1, v2, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportSimpleEvent(ILjava/lang/String;)V

    .line 4368
    return-void
.end method

.method public static blacklist setRemainTime(Landroid/content/Context;J)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .line 4238
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remain_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 4239
    return-void
.end method

.method public static blacklist setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "id"    # Landroid/net/Uri;

    .line 4319
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 4320
    return-void
.end method

.method public static blacklist setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "id"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 4326
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 4327
    return-void
.end method

.method public static blacklist showNotification(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 4333
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 4335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x3

    .line 4334
    const-string v3, "show_notification"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v1, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 4333
    :goto_16
    return v1
.end method
