.class public final Landroid/media/audiofx/MiEffectUtils;
.super Ljava/lang/Object;
.source "MiEffectUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiEffectUtils"

.field static final blacklist audioDevicesforSpatializer:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist has_init:Z

.field private static blacklist mAudioManager:Landroid/media/AudioManager;

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mSpatializer:Landroid/media/Spatializer;

.field private static blacklist supportGoogleSpatializer:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/audiofx/MiEffectUtils;->supportGoogleSpatializer:Z

    .line 34
    sput-boolean v0, Landroid/media/audiofx/MiEffectUtils;->has_init:Z

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/audiofx/MiEffectUtils;->audioDevicesforSpatializer:Ljava/util/Set;

    .line 136
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    const/high16 v1, 0x4000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    const/high16 v1, 0x20000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist get3dSurroundStatus()Z
    .registers 2

    .line 175
    const-string v0, "persist.vendor.audio.3dsurround.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist getSpatialFeatureProp()J
    .registers 2

    .line 71
    const-string v0, "ro.vendor.audio.feature.spatial"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static whitelist getSpatialStatus()Z
    .registers 4

    .line 161
    invoke-static {}, Landroid/media/audiofx/MiEffectUtils;->init()V

    .line 162
    sget-boolean v0, Landroid/media/audiofx/MiEffectUtils;->supportGoogleSpatializer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 163
    sget-object v0, Landroid/media/audiofx/MiEffectUtils;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->getDesiredHeadTrackingMode()I

    move-result v0

    .line 164
    .local v0, "mode":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    .line 165
    .local v1, "ret":Z
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support google spatializer, getSpatialStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiEffectUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v1

    .line 168
    .end local v0    # "mode":I
    .end local v1    # "ret":Z
    :cond_2b
    const-string v0, "persist.vendor.audio.spatial.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist init()V
    .registers 3

    .line 37
    sget-boolean v0, Landroid/media/audiofx/MiEffectUtils;->has_init:Z

    if-nez v0, :cond_29

    .line 38
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/MiEffectUtils;->mContext:Landroid/content/Context;

    .line 39
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 40
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object v1

    sput-object v1, Landroid/media/audiofx/MiEffectUtils;->mSpatializer:Landroid/media/Spatializer;

    .line 41
    const/4 v2, 0x1

    sput-boolean v2, Landroid/media/audiofx/MiEffectUtils;->has_init:Z

    .line 42
    invoke-virtual {v1}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result v1

    if-lez v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    sput-boolean v2, Landroid/media/audiofx/MiEffectUtils;->supportGoogleSpatializer:Z

    .line 44
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_29
    return-void
.end method

.method public static whitelist isBothSupportDolbyAnd3DSurround()Z
    .registers 2

    .line 78
    const-string v0, "ro.vendor.audio.dolby.surround.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isBothSupportDolbyAndSpatialAudio()Z
    .registers 1

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isHeadphoneSupportOnly()Z
    .registers 2

    .line 130
    const-string v0, "ro.vendor.audio.surround.headphone.only"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isHeadsetMultiChannelSupport()Z
    .registers 2

    .line 224
    invoke-static {}, Landroid/media/audiofx/MiEffectUtils;->init()V

    .line 225
    sget-boolean v0, Landroid/media/audiofx/MiEffectUtils;->supportGoogleSpatializer:Z

    if-eqz v0, :cond_10

    .line 226
    const-string v0, "MiEffectUtils"

    const-string v1, "support google spatializer, isHeadsetMultiChannelSupport return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_10
    const/4 v0, 0x0

    const-string v1, "ro.vendor.audio.multichannel.5point1.headset"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isScenarioHeadphoneOnly()Z
    .registers 2

    .line 63
    const-string v0, "ro.vendor.audio.scenario.headphone.only"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSingleSupportSpatialAndSurround()Z
    .registers 4

    .line 121
    invoke-static {}, Landroid/media/audiofx/MiEffectUtils;->getSpatialFeatureProp()J

    move-result-wide v0

    const/4 v2, 0x2

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static whitelist isSpatialAudioDeviceConnect()Z
    .registers 4

    .line 264
    invoke-static {}, Landroid/media/audiofx/MiEffectUtils;->init()V

    .line 265
    sget-boolean v0, Landroid/media/audiofx/MiEffectUtils;->supportGoogleSpatializer:Z

    const-string v1, "MiEffectUtils"

    if-eqz v0, :cond_26

    .line 266
    sget-object v0, Landroid/media/audiofx/MiEffectUtils;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->isHeadTrackerAvailable()Z

    move-result v0

    .line 267
    .local v0, "ret":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support google spatializer, isSpatialAudioDeviceConnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return v0

    .line 270
    .end local v0    # "ret":Z
    :cond_26
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 271
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_45

    .line 272
    const-string v1, "spatial_audio_headphone_connect"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "result":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 275
    .end local v1    # "result":Ljava/lang/String;
    :cond_45
    const-string v2, "isSpatialAudioDeviceConnect AudioManager == NULL exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist isSpatialAudioSupport(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p0, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 239
    invoke-static {}, Landroid/media/audiofx/MiEffectUtils;->init()V

    .line 240
    sget-boolean v0, Landroid/media/audiofx/MiEffectUtils;->supportGoogleSpatializer:Z

    const-string v1, "MiEffectUtils"

    if-eqz v0, :cond_21

    .line 241
    const-string v0, "support google spatializer, isSpatialAudioSupport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x2

    const/16 v2, 0x8

    .line 245
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 246
    .local v0, "mAudioDevice":Landroid/media/AudioDeviceAttributes;
    sget-object v1, Landroid/media/audiofx/MiEffectUtils;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v1, v0}, Landroid/media/Spatializer;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    return v1

    .line 248
    .end local v0    # "mAudioDevice":Landroid/media/AudioDeviceAttributes;
    :cond_21
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 249
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_55

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spatial_device_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "result":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 253
    .end local v1    # "result":Ljava/lang/String;
    :cond_55
    const-string v2, "switchSpatialAudio AudioManager == NULL exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist isSpeakMultiChannelSupport()Z
    .registers 2

    .line 214
    const-string v0, "ro.vendor.audio.multichannel.5point1.speak"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSupport3dSurround()Z
    .registers 5

    .line 114
    invoke-static {}, Landroid/media/audiofx/MiEffectUtils;->getSpatialFeatureProp()J

    move-result-wide v0

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    const-wide/16 v3, 0x1

    and-long/2addr v0, v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public static whitelist isSupportBluetoothEffect()Z
    .registers 2

    .line 67
    const-string v0, "ro.vendor.audio.misound.bluetooth.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSupportDolbyDax()Z
    .registers 2

    .line 47
    const-string v0, "ro.vendor.audio.dolby.dax.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSupportFadeSwitch()Z
    .registers 2

    .line 59
    const-string v0, "ro.vendor.audio.dolby.fade_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSupportHarmanKardon()Z
    .registers 2

    .line 51
    const-string v0, "ro.vendor.audio.sfx.harmankardon"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSupportIndependentEqualizer()Z
    .registers 2

    .line 55
    const-string v0, "ro.vendor.audio.sfx.independentequalizer"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSupportSpatialAudio()Z
    .registers 6

    .line 94
    invoke-static {}, Landroid/media/audiofx/MiEffectUtils;->init()V

    .line 95
    sget-boolean v0, Landroid/media/audiofx/MiEffectUtils;->supportGoogleSpatializer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    .line 96
    sget-object v0, Landroid/media/audiofx/MiEffectUtils;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->getSupportedHeadTrackingModes()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 98
    .local v2, "ret":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 99
    .local v4, "mode":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v1, :cond_27

    .line 100
    const/4 v2, 0x1

    .line 101
    goto :goto_28

    .line 103
    .end local v4    # "mode":Ljava/lang/Integer;
    :cond_27
    goto :goto_13

    .line 104
    :cond_28
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support google spatializer, isSupportSpatialAudio: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MiEffectUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v2

    .line 107
    .end local v0    # "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "ret":Z
    :cond_41
    invoke-static {}, Landroid/media/audiofx/MiEffectUtils;->getSpatialFeatureProp()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    return v1
.end method

.method public static whitelist isSupportSpatializerforDevices(Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "audioDeviceId"    # Ljava/lang/Integer;

    .line 149
    const-string v0, "ro.vendor.audio.spatializer.support.speaker"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 150
    sget-object v0, Landroid/media/audiofx/MiEffectUtils;->audioDevicesforSpatializer:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_13
    sget-object v0, Landroid/media/audiofx/MiEffectUtils;->audioDevicesforSpatializer:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSupportVideoboxSwitch()Z
    .registers 2

    .line 182
    const-string v0, "ro.vendor.audio.videobox.switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist switchSpatialAudio(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 190
    invoke-static {}, Landroid/media/audiofx/MiEffectUtils;->init()V

    .line 191
    sget-boolean v0, Landroid/media/audiofx/MiEffectUtils;->supportGoogleSpatializer:Z

    const-string v1, "MiEffectUtils"

    if-eqz v0, :cond_2f

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "support google spatializer, switchSpatialAudio: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz p1, :cond_28

    .line 194
    sget-object v0, Landroid/media/audiofx/MiEffectUtils;->mSpatializer:Landroid/media/Spatializer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/Spatializer;->setDesiredHeadTrackingMode(I)V

    goto :goto_2e

    .line 196
    :cond_28
    sget-object v0, Landroid/media/audiofx/MiEffectUtils;->mSpatializer:Landroid/media/Spatializer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/Spatializer;->setDesiredHeadTrackingMode(I)V

    .line 198
    :goto_2e
    return-void

    .line 201
    :cond_2f
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 202
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_50

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spatial_audio_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_55

    .line 205
    :cond_50
    const-string v2, "switchSpatialAudio AudioManager == NULL exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_55
    return-void
.end method
