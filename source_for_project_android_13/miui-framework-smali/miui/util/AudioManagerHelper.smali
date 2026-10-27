.class public Lmiui/util/AudioManagerHelper;
.super Ljava/lang/Object;
.source "AudioManagerHelper.java"


# static fields
.field public static final blacklist FLAG_ONLY_SET_VOLUME:I = 0x100000

.field public static final blacklist FLAG_SHOW_UI_WARNINGS:I = 0x400


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getHiFiVolume(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 224
    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 225
    .local v0, "am":Landroid/media/AudioManager;
    const-string v1, "hifi_volume"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "volumeStr":Ljava/lang/String;
    const-string v2, "hifi_volume="

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return v2

    .line 227
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "volumeStr":Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getNewValidatedRingerModeForUser(Landroid/content/Context;II)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "userHandle"    # I

    .line 177
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 178
    const/4 p1, 0x0

    .line 180
    :cond_4
    return p1
.end method

.method public static blacklist getValidatedRingerMode(Landroid/content/Context;I)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 158
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->getValidatedRingerModeForUser(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static blacklist getValidatedRingerModeForUser(Landroid/content/Context;II)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "userHandle"    # I

    .line 162
    invoke-static {p0, p1, p2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v0

    .line 163
    .local v0, "vibrate":Z
    const/4 v1, 0x1

    if-nez p1, :cond_a

    .line 164
    if-eqz v0, :cond_10

    .line 165
    return v1

    .line 168
    :cond_a
    if-ne v1, p1, :cond_10

    .line 169
    if-nez v0, :cond_10

    .line 170
    const/4 v1, 0x0

    return v1

    .line 173
    :cond_10
    return p1
.end method

.method public static blacklist isHiFiMode(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 216
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 217
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    .line 218
    .local v1, "isHeadsetOn":Z
    const-string v2, "hifi_mode"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 219
    .local v2, "isHifiModeEnabled":Z
    if-eqz v1, :cond_1e

    if-eqz v2, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    return v3
.end method

.method public static blacklist isNewSilentEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 86
    .local v0, "mode":I
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static blacklist isNewVibrateEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 99
    .local v0, "mode":I
    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public static blacklist isNewVibrateEnabledForUser(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 112
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 113
    .local v0, "mode":I
    invoke-static {p0, v0, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v1

    return v1
.end method

.method public static blacklist isSilentEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 81
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public static blacklist isVibrateEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 94
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    invoke-static {p0, v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public static blacklist isVibrateEnabled(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 103
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVibrateEnabledForUser(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 107
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 108
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    invoke-static {p0, v1, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v1

    return v1
.end method

.method public static blacklist isVibrateEnabledForUser(Landroid/content/Context;II)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "userHandle"    # I

    .line 117
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 118
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    .line 120
    .local v1, "hasVibrator":Z
    const/4 v2, 0x2

    .line 122
    .local v2, "currentMode":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, p1, :cond_21

    .line 123
    if-eqz v1, :cond_20

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 123
    const-string v6, "vibrate_in_silent"

    invoke-static {v5, v6, v4, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_20

    move v3, v4

    :cond_20
    return v3

    .line 129
    :cond_21
    if-eqz v1, :cond_32

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 132
    sget-boolean v6, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    .line 129
    const-string v7, "vibrate_in_normal"

    invoke-static {v5, v7, v6, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_32

    move v3, v4

    :cond_32
    return v3
.end method

.method public static blacklist newToggleSilentForUser(Landroid/content/Context;II)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "userHandle"    # I

    .line 210
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 211
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getLastestQuietMode(Landroid/content/Context;)I

    move-result v0

    .line 212
    .local v0, "newMode":I
    :goto_c
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 213
    return-void
.end method

.method public static blacklist setHiFiVolume(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hifiVolume"    # I

    .line 233
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 234
    .local v0, "am":Landroid/media/AudioManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hifi_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public static blacklist setVibrateSetting(Landroid/content/Context;ZZ)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "forSilient"    # Z

    .line 43
    const/4 v0, -0x3

    invoke-static {p0, p1, p2, v0}, Lmiui/util/AudioManagerHelper;->setVibrateSettingForUser(Landroid/content/Context;ZZI)V

    .line 44
    return-void
.end method

.method public static blacklist setVibrateSettingForUser(Landroid/content/Context;ZZI)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "forSilient"    # Z
    .param p3, "userHandle"    # I

    .line 48
    nop

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    if-eqz p2, :cond_a

    .line 51
    const-string v1, "vibrate_in_silent"

    goto :goto_c

    .line 52
    :cond_a
    const-string v1, "vibrate_in_normal"

    .line 53
    :goto_c
    nop

    .line 48
    invoke-static {v0, v1, p1, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 54
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_18

    .line 55
    invoke-static {p0, p1, p2}, Lmiui/util/AudioManagerHelper;->validateRingerMode(Landroid/content/Context;ZZ)V

    goto :goto_1b

    .line 57
    :cond_18
    invoke-static {p0, p3}, Lmiui/util/AudioManagerHelper;->validateRingerMode(Landroid/content/Context;I)V

    .line 60
    :goto_1b
    invoke-static {p0, p1, p2, p3}, Lmiui/util/AudioManagerHelper;->syncVibrateWhenRinging(Landroid/content/Context;ZZI)V

    .line 61
    return-void
.end method

.method private static blacklist syncVibrateWhenRinging(Landroid/content/Context;ZZI)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "forSilient"    # Z
    .param p3, "userHandle"    # I

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_10

    .line 70
    nop

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    const-string v1, "vibrate_when_ringing"

    invoke-static {v0, v1, p1, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 73
    :cond_10
    return-void
.end method

.method public static blacklist toggleSilent(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .line 187
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->toggleSilentForUser(Landroid/content/Context;II)V

    .line 188
    return-void
.end method

.method public static blacklist toggleSilentForUser(Landroid/content/Context;II)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "userHandle"    # I

    .line 191
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 193
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v3, v1, :cond_1a

    .line 194
    invoke-static {p0, v2, p2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 195
    const/4 v1, 0x1

    .local v1, "newMode":I
    goto :goto_1b

    .line 197
    .end local v1    # "newMode":I
    :cond_18
    const/4 v1, 0x0

    .restart local v1    # "newMode":I
    goto :goto_1b

    .line 200
    .end local v1    # "newMode":I
    :cond_1a
    const/4 v1, 0x2

    .line 202
    .restart local v1    # "newMode":I
    :goto_1b
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 204
    if-eqz p1, :cond_23

    .line 205
    invoke-virtual {v0, v3, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 207
    :cond_23
    return-void
.end method

.method public static blacklist toggleVibrateSetting(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, -0x3

    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSettingForUser(Landroid/content/Context;I)V

    .line 33
    return-void
.end method

.method public static blacklist toggleVibrateSettingForUser(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 36
    invoke-static {p0, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;I)Z

    move-result v0

    .line 37
    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 36
    invoke-static {p0, v0, v1, p1}, Lmiui/util/AudioManagerHelper;->setVibrateSettingForUser(Landroid/content/Context;ZZI)V

    .line 38
    return-void
.end method

.method private static blacklist validateRingerMode(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 139
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 140
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 141
    .local v1, "mode":I
    invoke-static {p0, v1, p1}, Lmiui/util/AudioManagerHelper;->getValidatedRingerModeForUser(Landroid/content/Context;II)I

    move-result v2

    .line 143
    .local v2, "newMode":I
    if-eq v1, v2, :cond_15

    .line 144
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 146
    :cond_15
    return-void
.end method

.method private static blacklist validateRingerMode(Landroid/content/Context;ZZ)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldVibrate"    # Z
    .param p2, "forSilent"    # Z

    .line 149
    if-nez p2, :cond_3

    return-void

    .line 150
    :cond_3
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 151
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 152
    return-void
.end method
