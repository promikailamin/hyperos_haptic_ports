.class public Landroid/media/MQSUtils;
.super Ljava/lang/Object;
.source "MQSUtils.java"


# static fields
.field private static final blacklist AUDIO_CAMERA_GAIN:Ljava/lang/String; = "vendor.audio.camera.gain"

.field private static final blacklist AUDIO_CAMERA_GAIN_SUPPORT:Ljava/lang/String; = "audio_camera_gain_support"

.field private static final blacklist AUDIO_CAMERA_LOOPBACK_SUPPORT:Ljava/lang/String; = "audio_camera_loopback_support"

.field private static final blacklist AUDIO_KARAOK_ENABLE:Ljava/lang/String; = "vendor.audio.karaoke.enable"

.field private static final blacklist TAG:Ljava/lang/String; = "AudioParaManger.MQSUtils"


# instance fields
.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mMiuiXlog:Landroid/media/MiuiXlog;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/media/MiuiXlog;

    invoke-direct {v0}, Landroid/media/MiuiXlog;-><init>()V

    iput-object v0, p0, Landroid/media/MQSUtils;->mMiuiXlog:Landroid/media/MiuiXlog;

    .line 25
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/MQSUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 26
    return-void
.end method

.method private blacklist getCameraGain()Ljava/lang/String;
    .registers 4

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "CameraGain":Ljava/lang/String;
    invoke-direct {p0}, Landroid/media/MQSUtils;->isCameraGainSupport()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 70
    const-string v1, "vendor.audio.camera.gain"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraGain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioParaManger.MQSUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_25
    return-object v0
.end method

.method private blacklist isAudioKaraokeOpen()Ljava/lang/String;
    .registers 4

    .line 41
    const-string v0, "false"

    .line 42
    .local v0, "isKaraokeOpen":Ljava/lang/String;
    invoke-direct {p0}, Landroid/media/MQSUtils;->isAudioKaraokeSupport()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 43
    const-string v1, "vendor.audio.karaoke.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAudioKaraokeOpen :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioParaManger.MQSUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 46
    const-string v1, "isAudioKaraokeOpen is open"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 48
    :cond_34
    const-string v0, "false"

    .line 50
    :goto_36
    const-string v1, "isAudioKaraokeOpen is false"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_3b
    return-object v0
.end method

.method private blacklist isAudioKaraokeSupport()Z
    .registers 5

    .line 30
    iget-object v0, p0, Landroid/media/MQSUtils;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "audio_camera_loopback_support"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "isCameraLoopbackSupport":Ljava/lang/String;
    const-string v1, "audio_camera_loopback_support=true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AudioParaManger.MQSUtils"

    if-eqz v1, :cond_2a

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCameraLoopbackSupport:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v1, 0x1

    return v1

    .line 35
    :cond_2a
    const-string v1, "isAudioKaraokeSupport is not support"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isCameraGainSupport()Z
    .registers 4

    .line 57
    iget-object v0, p0, Landroid/media/MQSUtils;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "audio_camera_gain_support"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "isGainSupport":Ljava/lang/String;
    const-string v1, "audio_camera_gain_support=true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AudioParaManger.MQSUtils"

    if-eqz v1, :cond_19

    .line 59
    const-string v1, "isCameraGainSupport is support"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, 0x1

    return v1

    .line 62
    :cond_19
    const-string v1, "isCameraGainSupport is not support"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist reportCameraRecordDailyUse(III)V
    .registers 11
    .param p1, "vendor"    # I
    .param p2, "wnd_ns"    # I
    .param p3, "recType"    # I

    .line 77
    const-string v0, "AudioParaManger.MQSUtils"

    const-string v1, "reportCameraRecordDailyUse start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    packed-switch p1, :pswitch_data_b0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the vendor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 85
    :pswitch_21
    const-string v1, "nokia"

    .line 86
    .local v1, "vendor_str":Ljava/lang/String;
    goto :goto_27

    .line 82
    .end local v1    # "vendor_str":Ljava/lang/String;
    :pswitch_24
    const-string v1, "forte"

    .line 83
    .restart local v1    # "vendor_str":Ljava/lang/String;
    nop

    .line 93
    :goto_27
    packed-switch p2, :pswitch_data_b8

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the wnd_ns is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 98
    :pswitch_41
    const-string v2, "open"

    .line 99
    .local v2, "wnd_ns_str":Ljava/lang/String;
    goto :goto_47

    .line 95
    .end local v2    # "wnd_ns_str":Ljava/lang/String;
    :pswitch_44
    const-string v2, "close"

    .line 96
    .restart local v2    # "wnd_ns_str":Ljava/lang/String;
    nop

    .line 106
    :goto_47
    packed-switch p3, :pswitch_data_c0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the recType is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 117
    :pswitch_61
    const-string v3, "3d_stereo"

    .line 118
    .local v3, "recType_str":Ljava/lang/String;
    goto :goto_6d

    .line 114
    .end local v3    # "recType_str":Ljava/lang/String;
    :pswitch_64
    const-string v3, "audio_zoom"

    .line 115
    .restart local v3    # "recType_str":Ljava/lang/String;
    goto :goto_6d

    .line 111
    .end local v3    # "recType_str":Ljava/lang/String;
    :pswitch_67
    const-string v3, "standard"

    .line 112
    .restart local v3    # "recType_str":Ljava/lang/String;
    goto :goto_6d

    .line 108
    .end local v3    # "recType_str":Ljava/lang/String;
    :pswitch_6a
    const-string v3, "front_fixed_focus"

    .line 109
    .restart local v3    # "recType_str":Ljava/lang/String;
    nop

    .line 125
    :goto_6d
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const/4 v5, 0x3

    invoke-direct {p0}, Landroid/media/MQSUtils;->isAudioKaraokeOpen()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-direct {p0}, Landroid/media/MQSUtils;->getCameraGain()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "{\"name\":\"camera_record\",\"audio_event\":{\"camera_record_vendor\":\"%s\",\"cam_intelligent_noise_reduction\":\"%s\",\"cam_record_3d_stereo\":\"%s\",\"cam_audio_karaoke\":\"%s\",\"camera_record_gain\":\"%s\"},\"dgt\":\"null\",\"audio_ext\":\"null\" }"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "result":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportCameraRecordDailyUse:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_a3
    iget-object v5, p0, Landroid/media/MQSUtils;->mMiuiXlog:Landroid/media/MiuiXlog;

    invoke-virtual {v5, v4}, Landroid/media/MiuiXlog;->miuiXlogSend(Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_a9

    .line 132
    goto :goto_af

    .line 130
    :catchall_a9
    move-exception v5

    .line 131
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "can not use miuiXlogSend!!!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_af
    return-void

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_21
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_44
        :pswitch_41
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
    .end packed-switch
.end method
