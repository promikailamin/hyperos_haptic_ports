.class public final Landroid/provider/MiuiSettings$SoundMode;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoundMode"
.end annotation


# static fields
.field private static final blacklist MIUI_RINGER_MODE_OFF:I = 0x2

.field private static final blacklist MIUI_RINGER_MODE_SILENT:I = 0x0

.field private static final blacklist MIUI_RINGER_MODE_VIBRATE:I = 0x1

.field private static final blacklist MIUI_ZEN_MODE_OFF:I = 0x0

.field private static final blacklist MIUI_ZEN_MODE_ON:I = 0x1

.field private static final blacklist SUPPRESSED_EFFECT_DEFAULT:I = 0x8d


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 4066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isSilenceModeOn(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 4094
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4095
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 4096
    .local v1, "ringerMode":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public static whitelist isZenModeOn(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 4118
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 4119
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    .line 4120
    .local v1, "zenMode":I
    if-eqz v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public static whitelist setSilenceModeOn(Landroid/content/Context;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "on"    # Z

    .line 4080
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4081
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p1, :cond_1f

    .line 4082
    nop

    .line 4083
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x3

    .line 4082
    const-string v3, "vibrate_in_silent"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 4087
    .local v1, "vibrateWhenSilent":I
    if-ne v1, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 4088
    .end local v1    # "vibrateWhenSilent":I
    goto :goto_23

    .line 4089
    :cond_1f
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 4091
    :goto_23
    return-void
.end method

.method public static whitelist setZenModeForDuration(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutes"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 4124
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 4125
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    nop

    .line 4126
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 4125
    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v1

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 4127
    .local v1, "conditionId":Landroid/net/Uri;
    invoke-virtual {v0, v2, v1, p2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 4128
    return-void
.end method

.method public static whitelist setZenModeOn(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "on"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 4100
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 4101
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    move v1, p1

    .line 4102
    .local v1, "zenMode":I
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 4103
    if-eqz p1, :cond_2a

    .line 4104
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 4105
    .local v2, "currPolicy":Landroid/app/NotificationManager$Policy;
    iget v3, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/16 v4, 0x8d

    if-eq v3, v4, :cond_2a

    .line 4106
    new-instance v3, Landroid/app/NotificationManager$Policy;

    iget v6, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v7, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v8, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    const/16 v9, 0x8d

    iget v10, v2, Landroid/app/NotificationManager$Policy;->state:I

    iget v11, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 4112
    .local v3, "newPolicy":Landroid/app/NotificationManager$Policy;
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 4115
    .end local v2    # "currPolicy":Landroid/app/NotificationManager$Policy;
    .end local v3    # "newPolicy":Landroid/app/NotificationManager$Policy;
    :cond_2a
    return-void
.end method
