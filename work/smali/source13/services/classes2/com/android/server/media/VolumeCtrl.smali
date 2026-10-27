.class public Lcom/android/server/media/VolumeCtrl;
.super Ljava/lang/Object;
.source "VolumeCtrl.java"


# static fields
.field private static final ADJUST_LOWER:Ljava/lang/String; = "lower"

.field private static final ADJUST_RAISE:Ljava/lang/String; = "raise"

.field private static final ADJUST_SAME:Ljava/lang/String; = "same"

.field private static final LOG_E:Ljava/lang/String; = "[E]"

.field private static final LOG_V:Ljava/lang/String; = "[V]"

.field private static final TAG:Ljava/lang/String; = "VolumeCtrl"

.field public static final USAGE:Ljava/lang/String;

.field private static final VOLUME_CONTROL_MODE_ADJUST:I = 0x2

.field private static final VOLUME_CONTROL_MODE_SET:I = 0x1


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

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static run(Lcom/android/server/media/MediaShellCommand;)V
    .registers 18
    .param p0, "cmd"    # Lcom/android/server/media/MediaShellCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 68
    .local v1, "stream":I
    const/4 v2, 0x5

    .line 69
    .local v2, "volIndex":I
    const/4 v3, 0x0

    .line 70
    .local v3, "mode":I
    const/4 v4, 0x1

    .line 71
    .local v4, "adjDir":I
    const/4 v5, 0x0

    .line 72
    .local v5, "showUi":Z
    const/4 v6, 0x0

    .line 77
    .local v6, "doGet":Z
    const/4 v7, 0x0

    .line 78
    .local v7, "adjustment":Ljava/lang/String;
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "option":Ljava/lang/String;
    const/4 v11, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x2

    const-string v12, "[V]"

    if-eqz v8, :cond_e1

    .line 79
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_20a

    :cond_1c
    goto :goto_4f

    :sswitch_1d
    const-string v8, "--stream"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    move v10, v15

    goto :goto_50

    :sswitch_27
    const-string v8, "--show"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const/4 v10, 0x0

    goto :goto_50

    :sswitch_31
    const-string v8, "--set"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const/4 v10, 0x3

    goto :goto_50

    :sswitch_3b
    const-string v8, "--get"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    move v10, v14

    goto :goto_50

    :sswitch_45
    const-string v8, "--adj"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    move v10, v11

    goto :goto_50

    :goto_4f
    const/4 v10, -0x1

    :goto_50
    packed-switch v10, :pswitch_data_220

    .line 103
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown argument "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 98
    :pswitch_6c
    const/4 v3, 0x2

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 100
    const-string/jumbo v8, "will adjust volume"

    invoke-virtual {v0, v12, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    goto :goto_df

    .line 93
    :pswitch_78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 94
    const/4 v3, 0x1

    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "will set volume to index="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v12, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    goto :goto_df

    .line 88
    :pswitch_9d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "will control stream="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 90
    invoke-static {v1}, Lcom/android/server/media/VolumeCtrl;->streamName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-virtual {v0, v12, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    goto :goto_df

    .line 84
    :pswitch_d5
    const/4 v6, 0x1

    .line 85
    const-string/jumbo v8, "will get volume"

    invoke-virtual {v0, v12, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    goto :goto_df

    .line 81
    :pswitch_dd
    const/4 v5, 0x1

    .line 82
    nop

    .line 103
    :goto_df
    goto/16 :goto_9

    .line 109
    :cond_e1
    if-ne v3, v15, :cond_154

    .line 110
    if-nez v7, :cond_eb

    .line 111
    const-string v8, "Error: no valid volume adjustment (null)"

    invoke-virtual {v0, v8}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 112
    return-void

    .line 114
    :cond_eb
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string/jumbo v10, "raise"

    const-string v15, "lower"

    const-string/jumbo v13, "same"

    sparse-switch v8, :sswitch_data_22e

    :cond_fa
    goto :goto_116

    :sswitch_fb
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fa

    const/16 v16, 0x0

    goto :goto_118

    :sswitch_104
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fa

    const/16 v16, 0x2

    goto :goto_118

    :sswitch_10d
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fa

    move/from16 v16, v14

    goto :goto_118

    :goto_116
    const/16 v16, -0x1

    :goto_118
    packed-switch v16, :pswitch_data_23c

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: no valid volume adjustment, was "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", expected "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "|"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 122
    return-void

    .line 117
    :pswitch_14f
    const/4 v4, -0x1

    goto :goto_154

    .line 116
    :pswitch_151
    const/4 v4, 0x0

    goto :goto_154

    .line 115
    :pswitch_153
    const/4 v4, 0x1

    .line 128
    :cond_154
    :goto_154
    const-string v8, "Connecting to AudioService"

    invoke-virtual {v0, v12, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v8, "audio"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v8

    .line 131
    .local v8, "audioService":Landroid/media/IAudioService;
    if-eqz v8, :cond_1fb

    .line 137
    if-ne v3, v14, :cond_1a2

    .line 138
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v10

    if-gt v2, v10, :cond_173

    .line 139
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v10

    if-ge v2, v10, :cond_1a2

    .line 140
    :cond_173
    new-array v10, v11, [Ljava/lang/Object;

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v14

    .line 142
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 143
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 140
    const-string v11, "Error: invalid volume index %d for stream %d (should be in [%d..%d])"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 144
    return-void

    .line 150
    :cond_1a2
    move v10, v5

    .line 151
    .local v10, "flag":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v11

    .line 152
    .local v11, "pack":Ljava/lang/String;
    if-ne v3, v14, :cond_1b5

    .line 153
    invoke-interface {v8, v1, v2, v10, v11}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V

    goto :goto_1bb

    .line 154
    :cond_1b5
    const/4 v13, 0x2

    if-ne v3, v13, :cond_1bb

    .line 155
    invoke-interface {v8, v1, v4, v10, v11}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 157
    :cond_1bb
    :goto_1bb
    if-eqz v6, :cond_1fa

    .line 158
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "volume is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in range ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 159
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 160
    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 158
    invoke-virtual {v0, v12, v13}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1fa
    return-void

    .line 132
    .end local v10    # "flag":I
    .end local v11    # "pack":Ljava/lang/String;
    :cond_1fb
    const-string v10, "[E]"

    const-string v11, "Error type 2"

    invoke-virtual {v0, v10, v11}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v10, Landroid/util/AndroidException;

    const-string v11, "Can\'t connect to audio service; is the system running?"

    invoke-direct {v10, v11}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v10

    :sswitch_data_20a
    .sparse-switch
        0x2900f07 -> :sswitch_45
        0x29025b6 -> :sswitch_3b
        0x29052c2 -> :sswitch_31
        0x4f7a109d -> :sswitch_27
        0x59e29d20 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_220
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_d5
        :pswitch_9d
        :pswitch_78
        :pswitch_6c
    .end packed-switch

    :sswitch_data_22e
    .sparse-switch
        0x35c066 -> :sswitch_10d
        0x6262b01 -> :sswitch_104
        0x67427ec -> :sswitch_fb
    .end sparse-switch

    :pswitch_data_23c
    .packed-switch 0x0
        :pswitch_153
        :pswitch_151
        :pswitch_14f
    .end packed-switch
.end method

.method static streamName(I)Ljava/lang/String;
    .registers 3
    .param p0, "stream"    # I

    .line 166
    :try_start_0
    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 167
    :catch_5
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "invalid stream"

    return-object v1
.end method
