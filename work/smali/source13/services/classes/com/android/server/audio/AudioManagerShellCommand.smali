.class Lcom/android/server/audio/AudioManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "AudioManagerShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioManagerShellCommand"


# instance fields
.field private final mService:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/audio/AudioService;

    .line 31
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    .line 33
    return-void
.end method

.method private getEncodedSurroundMode()I
    .registers 6

    .line 160
    iget-object v0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 161
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 162
    .local v1, "am":Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoded surround mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/AudioManager;->getEncodedSurroundMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x0

    return v2
.end method

.method private getIsSurroundFormatEnabled()I
    .registers 8

    .line 106
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "surroundFormatText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 109
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no surroundFormat specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    return v1

    .line 113
    :cond_11
    const/4 v2, -0x1

    .line 115
    .local v2, "surroundFormat":I
    :try_start_12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_16} :catch_5a

    move v2, v3

    .line 119
    nop

    .line 121
    if-gez v2, :cond_24

    .line 122
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid value of surroundFormat"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    return v1

    .line 125
    :cond_24
    iget-object v1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 126
    .local v1, "context":Landroid/content/Context;
    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 127
    .local v3, "am":Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value of enabled for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 128
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->isSurroundFormatEnabled(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    const/4 v4, 0x0

    return v4

    .line 116
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "am":Landroid/media/AudioManager;
    :catch_5a
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: wrong format specified for surroundFormat"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    return v1
.end method

.method private setEncodedSurroundMode()I
    .registers 7

    .line 133
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "encodedSurroundModeText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 136
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no encodedSurroundMode specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    return v1

    .line 140
    :cond_11
    const/4 v2, -0x1

    .line 142
    .local v2, "encodedSurroundMode":I
    :try_start_12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_16} :catch_35

    move v2, v3

    .line 146
    nop

    .line 148
    if-gez v2, :cond_24

    .line 149
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid value of encodedSurroundMode"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    return v1

    .line 153
    :cond_24
    iget-object v1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 154
    .local v1, "context":Landroid/content/Context;
    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 155
    .local v3, "am":Landroid/media/AudioManager;
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setEncodedSurroundMode(I)Z

    .line 156
    const/4 v4, 0x0

    return v4

    .line 143
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "am":Landroid/media/AudioManager;
    :catch_35
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: wrong format specified for encoded surround mode"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    return v1
.end method

.method private setSurroundFormatEnabled()I
    .registers 9

    .line 72
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "surroundFormatText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "isSurroundFormatEnabledText":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v0, :cond_15

    .line 76
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no surroundFormat specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    return v2

    .line 80
    :cond_15
    if-nez v1, :cond_21

    .line 81
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no enabled value for surroundFormat specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    return v2

    .line 85
    :cond_21
    const/4 v3, -0x1

    .line 86
    .local v3, "surroundFormat":I
    const/4 v4, 0x0

    .line 88
    .local v4, "isSurroundFormatEnabled":Z
    :try_start_23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2c} :catch_4b

    move v4, v5

    .line 93
    nop

    .line 94
    if-gez v3, :cond_3a

    .line 95
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: invalid value of surroundFormat"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    return v2

    .line 99
    :cond_3a
    iget-object v2, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 100
    .local v2, "context":Landroid/content/Context;
    const-class v5, Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 101
    .local v5, "am":Landroid/media/AudioManager;
    invoke-virtual {v5, v3, v4}, Landroid/media/AudioManager;->setSurroundFormatEnabled(IZ)Z

    .line 102
    const/4 v6, 0x0

    return v6

    .line 90
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "am":Landroid/media/AudioManager;
    :catch_4b
    move-exception v5

    .line 91
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Error: wrong format specified for surroundFormat"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 37
    if-nez p1, :cond_7

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 40
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 41
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_56

    :cond_14
    goto :goto_3e

    :sswitch_15
    const-string v2, "get-encoded-surround-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x3

    goto :goto_3e

    :sswitch_1f
    const-string v2, "get-is-surround-format-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    goto :goto_3e

    :sswitch_29
    const-string/jumbo v2, "set-surround-format-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v1, v3

    goto :goto_3e

    :sswitch_34
    const-string/jumbo v2, "set-encoded-surround-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x2

    :goto_3e
    packed-switch v1, :pswitch_data_68

    .line 51
    return v3

    .line 49
    :pswitch_42
    invoke-direct {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getEncodedSurroundMode()I

    move-result v1

    return v1

    .line 47
    :pswitch_47
    invoke-direct {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setEncodedSurroundMode()I

    move-result v1

    return v1

    .line 45
    :pswitch_4c
    invoke-direct {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getIsSurroundFormatEnabled()I

    move-result v1

    return v1

    .line 43
    :pswitch_51
    invoke-direct {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setSurroundFormatEnabled()I

    move-result v1

    return v1

    :sswitch_data_56
    .sparse-switch
        -0x6fa638d8 -> :sswitch_34
        -0x4fdec891 -> :sswitch_29
        0x37e12d0e -> :sswitch_1f
        0x5e162b1c -> :sswitch_15
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4c
        :pswitch_47
        :pswitch_42
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 56
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 57
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Audio manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 61
    const-string v1, "  set-surround-format-enabled SURROUND_FORMAT IS_ENABLED"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    const-string v1, "    Enables/disabled the SURROUND_FORMAT based on IS_ENABLED"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v1, "  get-is-surround-format-enabled SURROUND_FORMAT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v1, "    Returns if the SURROUND_FORMAT is enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string v1, "  set-encoded-surround-mode SURROUND_SOUND_MODE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    const-string v1, "    Sets the encoded surround sound mode to SURROUND_SOUND_MODE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v1, "  get-encoded-surround-mode"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string v1, "    Returns the encoded surround sound mode"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    return-void
.end method
