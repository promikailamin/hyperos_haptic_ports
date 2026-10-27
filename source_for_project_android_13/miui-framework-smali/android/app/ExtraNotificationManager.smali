.class public Landroid/app/ExtraNotificationManager;
.super Ljava/lang/Object;
.source "ExtraNotificationManager.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V
    .registers 6
    .param p0, "allow"    # Z
    .param p1, "usage"    # I
    .param p2, "appOps"    # Landroid/app/AppOpsManager;
    .param p3, "exception"    # [Ljava/lang/String;

    .line 377
    nop

    .line 378
    nop

    .line 377
    xor-int/lit8 v0, p0, 0x1

    const/16 v1, 0x1c

    invoke-virtual {p2, v1, p1, v0, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x3

    .line 381
    nop

    .line 380
    xor-int/lit8 v1, p0, 0x1

    invoke-virtual {p2, v0, p1, v1, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public static blacklist enableVIPMode(Landroid/content/Context;ZI)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVIPMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilenceMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 250
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v1

    .line 252
    .local v1, "mode":I
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 253
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 254
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 255
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 256
    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 257
    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 259
    nop

    .line 266
    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 267
    return-void
.end method

.method public static blacklist getConditionId(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 304
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 305
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    :goto_e
    return-object v1
.end method

.method public static blacklist getRemainTime(Landroid/content/Context;)J
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 314
    nop

    .line 315
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getConditionId(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 314
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 316
    .local v0, "countDownTime":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    goto :goto_16

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    :goto_16
    return-wide v2
.end method

.method public static blacklist getZenMode(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    return v0
.end method

.method public static blacklist getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 106
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isQuietModeEnable(Landroid/content/Context;I)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 206
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 208
    :cond_6
    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 209
    const/16 v0, 0x3e7

    goto :goto_10

    :cond_f
    move v0, p1

    .line 211
    .local v0, "userHandle":I
    :goto_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_mode_enable"

    invoke-static {v2, v3, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    move v1, v3

    :cond_1e
    return v1
.end method

.method public static blacklist isRepeatedCallEnable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 223
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return v0
.end method

.method public static blacklist isSilenceModeEnable(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 294
    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 295
    const/16 v0, 0x3e7

    goto :goto_a

    :cond_9
    move v0, p1

    .line 297
    .local v0, "userHandle":I
    :goto_a
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static blacklist isVIPModeEnable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 287
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    return v0
.end method

.method public static blacklist setQuietMode(Landroid/content/Context;ZI)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .line 171
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 172
    .local v0, "preMode":I
    const/4 v1, 0x0

    const/16 v2, 0x3e7

    const-string v3, "quiet_mode_enable"

    const/4 v4, 0x1

    if-eqz p1, :cond_20

    .line 173
    if-nez v0, :cond_11

    .line 174
    invoke-static {p0, v4, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 176
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_34

    .line 184
    :cond_20
    const/4 v5, 0x0

    if-ne v0, v4, :cond_26

    .line 185
    invoke-static {p0, v5, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 187
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v5, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 195
    :goto_34
    return-void
.end method

.method public static blacklist setRepeatedCallEnable(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 234
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 235
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 236
    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 237
    return-void
.end method

.method public static blacklist setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSilenceMode mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilenceMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 281
    return-void
.end method

.method public static blacklist setZenMode(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 47
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .line 59
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_d

    .line 60
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 61
    return-void

    .line 65
    :cond_d
    nop

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    .line 65
    const-string v2, "vibrate_in_silent"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1e

    move v0, v3

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 69
    .local v0, "isVibrateInSilent":Z
    :goto_1f
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 70
    .local v1, "manager":Landroid/media/AudioManager;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_41

    const/4 v2, 0x4

    .line 71
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_41

    const/4 v2, 0x3

    .line 72
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_41

    if-ne p1, v3, :cond_41

    if-eqz v0, :cond_41

    .line 75
    const/4 p1, 0x2

    .line 78
    :cond_41
    if-nez p2, :cond_63

    .line 79
    invoke-static {p0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "forever"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 80
    .local v2, "foreverId":Landroid/net/Uri;
    new-instance v11, Landroid/service/notification/Condition;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v3, v11

    move-object v4, v2

    invoke-direct/range {v3 .. v10}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 82
    .local v3, "condition":Landroid/service/notification/Condition;
    iget-object p2, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 86
    .end local v2    # "foreverId":Landroid/net/Uri;
    .end local v3    # "condition":Landroid/service/notification/Condition;
    :cond_63
    if-eqz p0, :cond_80

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "pckName":Ljava/lang/String;
    const-string v3, "settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 89
    sget-object v3, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v3, v3, p1

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 89
    const-string v6, "silence_DND"

    const-string v7, "0"

    invoke-static {v6, v3, v7, v4, v5}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 96
    .end local v2    # "pckName":Ljava/lang/String;
    :cond_80
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const-string v3, "miui_manual"

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static blacklist setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 117
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 119
    .local v0, "policy":Landroid/app/NotificationManager$Policy;
    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 120
    .local v1, "priorityCategories":I
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v2, :cond_11

    .line 121
    or-int/lit8 v1, v1, 0x2

    goto :goto_13

    .line 123
    :cond_11
    and-int/lit8 v1, v1, -0x3

    .line 125
    :goto_13
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v2, :cond_1a

    .line 126
    or-int/lit8 v1, v1, 0x8

    goto :goto_1c

    .line 128
    :cond_1a
    and-int/lit8 v1, v1, -0x9

    .line 130
    :goto_1c
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-eqz v2, :cond_23

    .line 131
    or-int/lit8 v1, v1, 0x40

    goto :goto_25

    .line 133
    :cond_23
    and-int/lit8 v1, v1, -0x41

    .line 135
    :goto_25
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-eqz v2, :cond_2c

    .line 136
    or-int/lit16 v1, v1, 0x80

    goto :goto_2e

    .line 138
    :cond_2c
    and-int/lit16 v1, v1, -0x81

    .line 140
    :goto_2e
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eqz v2, :cond_35

    .line 141
    or-int/lit8 v1, v1, 0x20

    goto :goto_37

    .line 143
    :cond_35
    and-int/lit8 v1, v1, -0x21

    .line 145
    :goto_37
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v2, :cond_3e

    .line 146
    or-int/lit8 v1, v1, 0x4

    goto :goto_40

    .line 148
    :cond_3e
    and-int/lit8 v1, v1, -0x5

    .line 150
    :goto_40
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v2, :cond_47

    .line 151
    or-int/lit8 v1, v1, 0x10

    goto :goto_49

    .line 153
    :cond_47
    and-int/lit8 v1, v1, -0x11

    .line 156
    :goto_49
    new-instance v2, Landroid/app/NotificationManager$Policy;

    iget v3, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    move-object v0, v2

    .line 158
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 159
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist startCountDownSilenceMode(Landroid/content/Context;II)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "time"    # I

    .line 326
    if-nez p2, :cond_7

    .line 327
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 328
    return-void

    .line 330
    :cond_7
    nop

    .line 331
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    .line 332
    .local v0, "condition":Landroid/service/notification/Condition;
    iget-object v1, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 333
    return-void
.end method

.method public static blacklist updateRestriction(Landroid/content/Context;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .line 337
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_5

    return-void

    .line 338
    :cond_5
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 340
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const-string v1, "com.android.cellbroadcastreceiver"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "defaultException":[Ljava/lang/String;
    const-string v3, "com.android.systemui"

    const-string v4, "android"

    const-string v5, "com.android.server.telecom"

    filled-new-array {v3, v4, v1, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "exceptionPackages":[Ljava/lang/String;
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v3

    .line 347
    .local v3, "mode":I
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    .line 348
    .local v4, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v5, 0x1

    .line 349
    .local v5, "allowRingtone":Z
    const/4 v6, 0x1

    .line 350
    .local v6, "allowNotification":Z
    const/4 v7, 0x0

    .line 351
    .local v7, "hasException":Z
    packed-switch v3, :pswitch_data_52

    .line 360
    const/4 v6, 0x1

    .line 361
    const/4 v5, 0x1

    goto :goto_3e

    .line 353
    :pswitch_2e
    const/4 v5, 0x0

    .line 354
    const/4 v6, 0x0

    .line 355
    iget-boolean v8, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v8, :cond_3b

    iget-boolean v8, v4, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v8, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v8, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v8, 0x1

    :goto_3c
    move v7, v8

    .line 356
    nop

    .line 364
    :goto_3e
    const/4 v8, 0x6

    .line 368
    if-eqz v7, :cond_43

    move-object v9, v1

    goto :goto_44

    :cond_43
    move-object v9, v2

    .line 364
    :goto_44
    invoke-static {v5, v8, v0, v9}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    .line 369
    const/4 v8, 0x5

    .line 373
    if-eqz v7, :cond_4c

    move-object v9, v1

    goto :goto_4d

    :cond_4c
    move-object v9, v2

    .line 369
    :goto_4d
    invoke-static {v6, v8, v0, v9}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    .line 374
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_2e
    .end packed-switch
.end method
