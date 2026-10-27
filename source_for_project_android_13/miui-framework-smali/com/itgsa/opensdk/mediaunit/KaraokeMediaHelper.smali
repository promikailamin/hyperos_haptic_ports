.class public Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;
.super Ljava/lang/Object;
.source "KaraokeMediaHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "KaraokeMediaHelper-sdk"


# instance fields
.field private final blacklist KARAOKE_APP_SUPPORT:Ljava/lang/String;

.field private final blacklist KARAOKE_ENABLE:Ljava/lang/String;

.field private final blacklist KARAOKE_EQ:Ljava/lang/String;

.field private final blacklist KARAOKE_KTVMODE:Ljava/lang/String;

.field private final blacklist KARAOKE_REVERB:Ljava/lang/String;

.field private final blacklist KARAOKE_SUPPORT:Ljava/lang/String;

.field private final blacklist KARAOKE_VOLUME:Ljava/lang/String;

.field private final blacklist VOLUME_MAX_APP:I

.field private final blacklist VOLUME_MIN_APP:I

.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEnabled:I

.field private blacklist mEqMode:I

.field private blacklist mInitialized:Z

.field private blacklist mReverbMode:I

.field private blacklist mSp:Landroid/content/SharedPreferences;

.field private blacklist mSupportLowLatency:Z

.field private blacklist mVolume:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "audio_karaoke_enable"

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->KARAOKE_ENABLE:Ljava/lang/String;

    .line 53
    const-string v0, "audio_karaoke_volume"

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->KARAOKE_VOLUME:Ljava/lang/String;

    .line 54
    const-string v0, "audio_karaoke_EQ"

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->KARAOKE_EQ:Ljava/lang/String;

    .line 55
    const-string v0, "karaoke_Reverb"

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->KARAOKE_REVERB:Ljava/lang/String;

    .line 56
    const-string v0, "audio_karaoke_support"

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->KARAOKE_SUPPORT:Ljava/lang/String;

    .line 57
    const-string v0, "karaoke_app_support"

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->KARAOKE_APP_SUPPORT:Ljava/lang/String;

    .line 58
    const-string v0, "audio_karaoke_ktvmode"

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->KARAOKE_KTVMODE:Ljava/lang/String;

    .line 60
    const/16 v0, 0xf

    iput v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->VOLUME_MAX_APP:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->VOLUME_MIN_APP:I

    .line 65
    iput-boolean v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mSupportLowLatency:Z

    .line 79
    iput-object p1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mContext:Landroid/content/Context;

    .line 80
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 81
    iget-object v1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mContext:Landroid/content/Context;

    const-string v2, "loopback_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mSp:Landroid/content/SharedPreferences;

    .line 82
    iput-boolean v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mInitialized:Z

    .line 83
    const-string v0, "ro.vendor.audio.karaoke.suppot.lowlatency"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mSupportLowLatency:Z

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KaraokeMediaHelper inited, SupportLowLatency is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mSupportLowLatency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KaraokeMediaHelper-sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;

    invoke-direct {v0, p0}, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private blacklist isDeviceSupportMixerSound()Z
    .registers 3

    .line 211
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cupid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 212
    const-string v1, "zeus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 213
    const-string v1, "ingres"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 211
    :goto_21
    return v0
.end method

.method private blacklist setSharePreferenceKV(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 393
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 394
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 395
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 396
    return-void
.end method

.method private blacklist supportInputFlag()Ljava/lang/String;
    .registers 4

    .line 194
    const-string v0, ""

    .line 195
    .local v0, "supportInputFlag":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mSupportLowLatency:Z

    if-eqz v1, :cond_53

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AUDIO_INPUT_FLAG_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|AUDIO_INPUT_FLAG_FAST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|AUDIO_INPUT_FLAG_RAW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|AUDIO_INPUT_FLAG_MMAP_NOIRQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    .line 201
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_66
    return-object v0
.end method

.method private blacklist supportOutputFlag()Ljava/lang/String;
    .registers 4

    .line 176
    const-string v0, ""

    .line 177
    .local v0, "supportOutputFlag":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mSupportLowLatency:Z

    if-eqz v1, :cond_53

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AUDIO_OUTPUT_FLAG_DEEP_BUFFER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|AUDIO_OUTPUT_FLAG_FAST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|AUDIO_OUTPUT_FLAG_RAW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|AUDIO_OUTPUT_FLAG_MMAP_NOIRQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    .line 183
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_66
    return-object v0
.end method


# virtual methods
.method public whitelist closeKTVDevice()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "audio_karaoke_ktvmode=disable"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mInitialized:Z

    .line 239
    return-void
.end method

.method public whitelist getExtEqualizerType()[I
    .registers 2

    .line 389
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getExtMixerSoundType()[I
    .registers 2

    .line 381
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getExtSpeakerParam()I
    .registers 2

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getKaraokeSupportParameters()Ljava/lang/String;
    .registers 6

    .line 141
    invoke-direct {p0}, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->supportInputFlag()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "audioInputFlag":Ljava/lang/String;
    invoke-direct {p0}, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->supportOutputFlag()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "audioOutputFlag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"audioTrackParam\":[{\"streamType\":\"3\",\"sampleRate\":\"default\",\"format\":\"default\",\"flag\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}],\"audioRecordParam\":[{\"streamType\":\"3\",\"sampleRate\":\"default\",\"format\":\"default\",\"flag\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"source\":\"1\"}],\"isSupportListenRecordSame\":false,\"isSupportExtSpeakerParam\":false,\"isSupportMixerSoundType\":true,\"isSupportEqualizerType\":true,\"isSupportToneMode\":false,\"isSupportAppSupoort\":true}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "supportStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getKaraokeSupportParameters "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KaraokeMediaHelper-sdk"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-object v2
.end method

.method public whitelist getListenRecordSame()I
    .registers 2

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMicVolParam()I
    .registers 2

    .line 344
    iget v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mVolume:I

    return v0
.end method

.method public whitelist getPlayFeedbackParam()I
    .registers 2

    .line 335
    iget v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mEnabled:I

    return v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 98
    const/16 v0, 0x2710

    return v0
.end method

.method public whitelist isAppSupportKaraoke(Ljava/lang/String;)Z
    .registers 5
    .param p1, "appName"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "karaoke_app_support:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "support":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public whitelist isDeviceSupportKaraoke()Z
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "audio_karaoke_support"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "support":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public whitelist openKTVDevice()V
    .registers 4

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " openKTVDevice begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KaraokeMediaHelper-sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mInitialized:Z

    if-eqz v0, :cond_1f

    return-void

    .line 222
    :cond_1f
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mSp:Landroid/content/SharedPreferences;

    const/16 v1, 0x32

    const-string v2, "audio_karaoke_volume"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mVolume:I

    .line 223
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "audio_karaoke_EQ"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mEqMode:I

    .line 224
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "karaoke_Reverb"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mReverbMode:I

    .line 226
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "audio_karaoke_ktvmode=enable"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_karaoke_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_karaoke_EQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mEqMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "karaoke_Reverb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mReverbMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mInitialized:Z

    .line 231
    return-void
.end method

.method public whitelist setEqualizerType(I)V
    .registers 5
    .param p1, "equalizerType"    # I

    .line 371
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_karaoke_EQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 372
    iput p1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mEqMode:I

    .line 373
    const-string v0, "audio_karaoke_EQ"

    invoke-direct {p0, v0, p1}, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->setSharePreferenceKV(Ljava/lang/String;I)V

    .line 374
    return-void
.end method

.method public whitelist setExtSpeakerParam(I)V
    .registers 2
    .param p1, "param"    # I

    .line 316
    return-void
.end method

.method public whitelist setListenRecordSame(I)V
    .registers 2
    .param p1, "param"    # I

    .line 261
    return-void
.end method

.method public whitelist setMicVolParam(I)V
    .registers 5
    .param p1, "param"    # I

    .line 294
    const/16 v0, 0xf

    if-le p1, v0, :cond_6

    .line 295
    const/16 p1, 0xf

    .line 298
    :cond_6
    if-gez p1, :cond_9

    .line 299
    const/4 p1, 0x0

    .line 302
    :cond_9
    const/4 v0, 0x1

    iget v1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mEnabled:I

    if-ne v0, v1, :cond_2d

    .line 303
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_karaoke_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 304
    iput p1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mVolume:I

    .line 305
    const-string v0, "audio_karaoke_volume"

    invoke-direct {p0, v0, p1}, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->setSharePreferenceKV(Ljava/lang/String;I)V

    .line 307
    :cond_2d
    return-void
.end method

.method public whitelist setMixerSoundType(I)V
    .registers 5
    .param p1, "param"    # I

    .line 270
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "karaoke_Reverb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 271
    iput p1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mReverbMode:I

    .line 272
    const-string v0, "karaoke_Reverb"

    invoke-direct {p0, v0, p1}, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->setSharePreferenceKV(Ljava/lang/String;I)V

    .line 273
    return-void
.end method

.method public whitelist setPlayFeedbackParam(I)V
    .registers 5
    .param p1, "param"    # I

    .line 283
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_karaoke_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 284
    iput p1, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mEnabled:I

    .line 285
    const-string v0, "audio_karaoke_enable"

    invoke-direct {p0, v0, p1}, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->setSharePreferenceKV(Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method public whitelist setToneMode(I)V
    .registers 2
    .param p1, "toneValue"    # I

    .line 362
    return-void
.end method
