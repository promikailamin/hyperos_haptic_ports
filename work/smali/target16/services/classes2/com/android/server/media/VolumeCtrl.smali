.class public abstract Lcom/android/server/media/VolumeCtrl;
.super Ljava/lang/Object;
.source "VolumeCtrl.java"


# static fields
.field public static final USAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "the options are as follows: \n\t\t--stream STREAM selects the stream to control, see AudioManager.STREAM_*\n\t\t                controls AudioManager.STREAM_MUSIC if no stream is specified\n\t\t--set INDEX     sets the volume index value\n\t\t--adj DIRECTION adjusts the volume, use raise|same|lower for the direction\n\t\t--get           outputs the current volume\n\t\t--show          shows the UI during the volume change\n\texamples:\n\t\tadb shell media volume --show --stream 3 --set 11\n\t\tadb shell media volume --stream 0 --adj lower\n\t\tadb shell media volume --stream 3 --get\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/media/VolumeCtrl;->USAGE:Ljava/lang/String;

    return-void
.end method

.method public static run(Lcom/android/server/media/MediaShellCommand;)V
    .registers 16

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v0

    move v4, v2

    move v6, v4

    move v7, v6

    .line 78
    :goto_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x2

    const-string v11, "[V]"

    const/4 v12, 0x1

    if-eqz v8, :cond_df

    .line 79
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_1ee

    goto :goto_54

    :sswitch_1e
    const-string v13, "--stream"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_27

    goto :goto_54

    :cond_27
    const/4 v9, 0x4

    goto :goto_54

    :sswitch_29
    const-string v13, "--show"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_32

    goto :goto_54

    :cond_32
    move v9, v0

    goto :goto_54

    :sswitch_34
    const-string v13, "--set"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3d

    goto :goto_54

    :cond_3d
    move v9, v10

    goto :goto_54

    :sswitch_3f
    const-string v13, "--get"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_48

    goto :goto_54

    :cond_48
    move v9, v12

    goto :goto_54

    :sswitch_4a
    const-string v13, "--adj"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_53

    goto :goto_54

    :cond_53
    move v9, v2

    :goto_54
    packed-switch v9, :pswitch_data_204

    .line 103
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :pswitch_6e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "will control stream="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-static {v5}, Lcom/android/server/media/VolumeCtrl;->streamName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-virtual {p0, v11, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_a2
    move v6, v12

    goto/16 :goto_8

    .line 93
    :pswitch_a5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "will set volume to index="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v11, v4}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v12

    goto/16 :goto_8

    .line 85
    :pswitch_c9
    const-string/jumbo v7, "will get volume"

    invoke-virtual {p0, v11, v7}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v12

    goto/16 :goto_8

    .line 99
    :pswitch_d2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string/jumbo v4, "will adjust volume"

    invoke-virtual {p0, v11, v4}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v10

    goto/16 :goto_8

    :cond_df
    if-ne v4, v10, :cond_146

    if-nez v3, :cond_e9

    .line 111
    const-string v0, "Error: no valid volume adjustment (null)"

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_e9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string/jumbo v8, "raise"

    const-string v13, "lower"

    const-string/jumbo v14, "same"

    sparse-switch v0, :sswitch_data_212

    :goto_fb
    move v0, v9

    goto :goto_117

    :sswitch_fd
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_104

    goto :goto_fb

    :cond_104
    move v0, v10

    goto :goto_117

    :sswitch_106
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10d

    goto :goto_fb

    :cond_10d
    move v0, v12

    goto :goto_117

    :sswitch_10f
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_116

    goto :goto_fb

    :cond_116
    move v0, v2

    :goto_117
    packed-switch v0, :pswitch_data_220

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: no valid volume adjustment, was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void

    :cond_146
    :pswitch_146
    move v2, v12

    goto :goto_149

    :pswitch_148
    move v2, v9

    .line 128
    :goto_149
    :pswitch_149
    const-string v0, "Connecting to AudioService"

    invoke-virtual {p0, v11, v0}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-eqz v0, :cond_1de

    if-ne v4, v12, :cond_18e

    .line 138
    invoke-interface {v0, v5}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v3

    if-gt v1, v3, :cond_168

    .line 139
    invoke-interface {v0, v5}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v3

    if-ge v1, v3, :cond_18e

    .line 141
    :cond_168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 142
    invoke-interface {v0, v5}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 143
    invoke-interface {v0, v5}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 140
    const-string v1, "Error: invalid volume index %d for stream %d (should be in [%d..%d])"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void

    .line 151
    :cond_18e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne v4, v12, :cond_1a0

    .line 153
    invoke-interface {v0, v5, v1, v6, v3}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V

    goto :goto_1a5

    :cond_1a0
    if-ne v4, v10, :cond_1a5

    .line 155
    invoke-interface {v0, v5, v2, v6, v3}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    :cond_1a5
    :goto_1a5
    if-eqz v7, :cond_1dd

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volume is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-interface {v0, v5}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-interface {v0, v5}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v11, v0}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1dd
    return-void

    .line 132
    :cond_1de
    const-string v0, "[E]"

    const-string v1, "Error type 2"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance p0, Landroid/util/AndroidException;

    const-string v0, "Can\'t connect to audio service; is the system running?"

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_1ee
    .sparse-switch
        0x2900f07 -> :sswitch_4a
        0x29025b6 -> :sswitch_3f
        0x29052c2 -> :sswitch_34
        0x4f7a109d -> :sswitch_29
        0x59e29d20 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_c9
        :pswitch_a5
        :pswitch_a2
        :pswitch_6e
    .end packed-switch

    :sswitch_data_212
    .sparse-switch
        0x35c066 -> :sswitch_10f
        0x6262b01 -> :sswitch_106
        0x67427ec -> :sswitch_fd
    .end sparse-switch

    :pswitch_data_220
    .packed-switch 0x0
        :pswitch_149
        :pswitch_148
        :pswitch_146
    .end packed-switch
.end method

.method public static streamName(I)Ljava/lang/String;
    .registers 2

    .line 166
    :try_start_0
    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 168
    :catch_5
    const-string p0, "invalid stream"

    return-object p0
.end method
