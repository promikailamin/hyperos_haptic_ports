.class public Lmiui/content/res/BootAnimationHelper;
.super Ljava/lang/Object;
.source "BootAnimationHelper.java"


# static fields
.field private static final blacklist BOOT_AUDIO_SILENCE:Ljava/lang/String; = "persist.sys.boot_audio.enabled"

.field private static final blacklist KEY_BOOT_AUDIO:Ljava/lang/String; = "boot_audio"

.field private static final blacklist KEY_IS_AUTO_UPDATE:Ljava/lang/String; = "is_auto_update"

.field private static final blacklist TAG:Ljava/lang/String; = "BootAnimationHelper"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist setProperty(Ljava/lang/String;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 36
    :try_start_0
    const-string v0, "persist.sys.boot_audio.enabled"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 39
    goto :goto_e

    .line 37
    :catch_6
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BootAnimationHelper"

    const-string v2, "set setProperty failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public static whitelist updateBootAudioEnabled(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "isSilenceModeOff":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boot_audio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 25
    .local v1, "isBootAudio":I
    if-ne v1, v3, :cond_2a

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "is_auto_update"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 27
    .local v2, "isAutoUpdate":I
    if-nez v2, :cond_2a

    .line 28
    invoke-static {p0}, Landroid/provider/MiuiSettings$SoundMode;->isSilenceModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-static {p0}, Landroid/provider/MiuiSettings$SoundMode;->isZenModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_29

    :cond_28
    move v3, v5

    :goto_29
    move v0, v3

    .line 31
    .end local v2    # "isAutoUpdate":I
    :cond_2a
    if-eqz v0, :cond_2f

    const-string v2, "1"

    goto :goto_31

    :cond_2f
    const-string v2, "0"

    :goto_31
    invoke-static {v2}, Lmiui/content/res/BootAnimationHelper;->setProperty(Ljava/lang/String;)V

    .line 32
    return-void
.end method
