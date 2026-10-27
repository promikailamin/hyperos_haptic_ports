.class final Lcom/android/server/hdmi/HdmiControlShellCommand;
.super Landroid/os/ShellCommand;
.source "HdmiControlShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiShellCommand"


# instance fields
.field private final mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

.field mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

.field final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static bridge synthetic -$$Nest$mgetResultString(Lcom/android/server/hdmi/HdmiControlShellCommand;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getResultString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/hardware/hdmi/IHdmiControlService$Stub;)V
    .registers 4
    .param p1, "binderService"    # Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 42
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 44
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlShellCommand$1;-><init>(Lcom/android/server/hdmi/HdmiControlShellCommand;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    .line 55
    return-void
.end method

.method private cecSetting(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d4

    .line 208
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "operation":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_dc

    :cond_14
    goto :goto_29

    :sswitch_15
    const-string/jumbo v3, "set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_2a

    :sswitch_1f
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v4

    goto :goto_2a

    :goto_29
    move v1, v2

    :goto_2a
    const-string v2, " = "

    packed-switch v1, :pswitch_data_e6

    .line 235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :pswitch_48
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "setting":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "value":Ljava/lang/String;
    :try_start_50
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v5, v1, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_6d} :catch_6e

    .line 231
    goto :goto_90

    .line 227
    :catch_6e
    move-exception v5

    .line 228
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 229
    .local v6, "intValue":I
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v7, v1, v6}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingIntValue(Ljava/lang/String;I)V

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "intValue":I
    :goto_90
    return v4

    .line 211
    .end local v1    # "setting":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_91
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 213
    .restart local v1    # "setting":Ljava/lang/String;
    :try_start_95
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v3, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .restart local v3    # "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_95 .. :try_end_b3} :catch_b4

    .line 218
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_d3

    .line 215
    :catch_b4
    move-exception v3

    .line 216
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v5, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v5

    .line 217
    .local v5, "intValue":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "intValue":I
    :goto_d3
    return v4

    .line 206
    .end local v0    # "operation":Ljava/lang/String;
    .end local v1    # "setting":Ljava/lang/String;
    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected at least 1 argument (operation)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_dc
    .sparse-switch
        0x18f56 -> :sswitch_1f
        0x1bc62 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_91
        :pswitch_48
    .end packed-switch
.end method

.method private deviceSelect(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 135
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "deviceId":I
    const-string v2, "Sending Device Select..."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {v2, v0, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 140
    const-string v2, "Device Select"

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 141
    return v1

    .line 144
    :cond_24
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_2d

    const/4 v1, 0x0

    :cond_2d
    return v1

    .line 133
    .end local v0    # "deviceId":I
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected exactly 1 argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getResultString(I)Ljava/lang/String;
    .registers 3
    .param p1, "result"    # I

    .line 334
    packed-switch p1, :pswitch_data_1e

    .line 350
    :pswitch_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 348
    :pswitch_8
    const-string v0, "Communication Failed"

    return-object v0

    .line 346
    :pswitch_b
    const-string v0, "Incorrect mode"

    return-object v0

    .line 344
    :pswitch_e
    const-string v0, "Exception"

    return-object v0

    .line 342
    :pswitch_11
    const-string v0, "Target not available"

    return-object v0

    .line 340
    :pswitch_14
    const-string v0, "Source not available"

    return-object v0

    .line 338
    :pswitch_17
    const-string v0, "Timeout"

    return-object v0

    .line 336
    :pswitch_1a
    const-string v0, "Success"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_3
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private handleShellCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 108
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_b2

    :cond_c
    goto :goto_6f

    :sswitch_d
    const-string v1, "cec_setting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    goto :goto_70

    :sswitch_17
    const-string/jumbo v1, "vendorcommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    goto :goto_70

    :sswitch_22
    const-string/jumbo v1, "otp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_70

    :sswitch_2d
    const-string v1, "deviceselect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x7

    goto :goto_70

    :sswitch_37
    const-string/jumbo v1, "setsystemaudiomode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x4

    goto :goto_70

    :sswitch_42
    const-string/jumbo v1, "setsam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x5

    goto :goto_70

    :sswitch_4d
    const-string/jumbo v1, "setarc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x6

    goto :goto_70

    :sswitch_58
    const-string/jumbo v1, "onetouchplay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_70

    :sswitch_63
    const-string/jumbo v1, "history_size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    goto :goto_70

    :goto_6f
    const/4 v1, -0x1

    :goto_70
    packed-switch v1, :pswitch_data_d8

    .line 127
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    return v2

    .line 124
    :pswitch_8e
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->historySize(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 122
    :pswitch_93
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->deviceSelect(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 120
    :pswitch_98
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->setArcMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 118
    :pswitch_9d
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->setSystemAudioMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 115
    :pswitch_a2
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->cecSetting(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 113
    :pswitch_a7
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->vendorCommand(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 111
    :pswitch_ac
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->oneTouchPlay(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    :sswitch_data_b2
    .sparse-switch
        -0x74f38f34 -> :sswitch_63
        -0x38ff28b3 -> :sswitch_58
        -0x35fd3550 -> :sswitch_4d
        -0x35fcf3c3 -> :sswitch_42
        -0x1bd7bf78 -> :sswitch_37
        -0x18c452e -> :sswitch_2d
        0x1af2b -> :sswitch_22
        0x25083903 -> :sswitch_17
        0x4ed06452 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private historySize(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_a8

    .line 290
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "operation":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_b0

    :cond_14
    goto :goto_29

    :sswitch_15
    const-string/jumbo v3, "set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v2, v1

    goto :goto_29

    :sswitch_20
    const-string v3, "get"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v2, v4

    :goto_29
    packed-switch v2, :pswitch_data_ba

    .line 316
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "arg":Ljava/lang/String;
    :try_start_49
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_4d} :catch_73

    .line 305
    .local v1, "value":I
    nop

    .line 306
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v3, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setMessageHistorySize(I)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting CEC dumpsys message history size to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_72

    .line 309
    :cond_6d
    const-string v3, "Message history size not changed, was it lower than the minimum size?"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    :goto_72
    return v4

    .line 302
    .end local v1    # "value":I
    :catch_73
    move-exception v3

    .line 303
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set CEC dumpsys message history size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    return v1

    .line 293
    .end local v2    # "arg":Ljava/lang/String;
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :pswitch_8b
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getMessageHistorySize()I

    move-result v1

    .line 294
    .restart local v1    # "value":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CEC dumpsys message history size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    return v4

    .line 287
    .end local v0    # "operation":Ljava/lang/String;
    .end local v1    # "value":I
    :cond_a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use \'set\' or \'get\' for the command action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_b0
    .sparse-switch
        0x18f56 -> :sswitch_20
        0x1bc62 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_45
    .end packed-switch
.end method

.method private oneTouchPlay(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const-string v0, "Sending One Touch Play..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 151
    const-string v0, "One Touch Play"

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 152
    return v1

    .line 155
    :cond_16
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1f

    const/4 v1, 0x0

    :cond_1f
    return v1
.end method

.method private receiveCallback(Ljava/lang/String;)Z
    .registers 6
    .param p1, "command"    # Ljava/lang/String;

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 323
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timed out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_26} :catch_29

    .line 324
    const/4 v0, 0x0

    return v0

    .line 329
    :cond_28
    goto :goto_3a

    .line 326
    :catch_29
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Caught InterruptedException"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 330
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3a
    const/4 v0, 0x1

    return v0
.end method

.method private setArcMode(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getRemainingArgsCount()I

    move-result v0

    const-string v1, "Please indicate if ARC mode should be turned \"on\" or \"off\"."

    const/4 v2, 0x1

    if-gt v2, v0, :cond_3c

    .line 270
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    .line 272
    const-string v1, "Setting ARC mode on"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    goto :goto_35

    .line 274
    :cond_22
    const-string/jumbo v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 275
    const-string v1, "Setting ARC mode off"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v1, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    .line 282
    :goto_35
    return v4

    .line 278
    :cond_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    .end local v0    # "arg":Ljava/lang/String;
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSystemAudioMode(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getRemainingArgsCount()I

    move-result v0

    const-string v1, "Please indicate if System Audio Mode should be turned \"on\" or \"off\"."

    const/4 v2, 0x1

    if-gt v2, v0, :cond_52

    .line 245
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    .line 247
    const-string v1, "Setting System Audio Mode on"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_39

    .line 249
    :cond_24
    const-string/jumbo v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 250
    const-string v1, "Setting System Audio Mode off"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {v1, v4, v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 257
    :goto_39
    const-string v1, "Set System Audio Mode"

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 258
    return v2

    .line 261
    :cond_42
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_4b

    move v2, v4

    :cond_4b
    return v2

    .line 253
    :cond_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v0    # "arg":Ljava/lang/String;
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private vendorCommand(Ljava/io/PrintWriter;)I
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x6

    if-gt v1, v0, :cond_d4

    .line 163
    const/4 v0, -0x1

    .line 164
    .local v0, "deviceType":I
    const/4 v2, -0x1

    .line 165
    .local v2, "destination":I
    const-string v3, ""

    .line 166
    .local v3, "parameters":Ljava/lang/String;
    const/4 v4, 0x0

    .line 168
    .local v4, "hasVendorId":Z
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "arg":Ljava/lang/String;
    :goto_10
    const/4 v6, 0x0

    if-eqz v5, :cond_ae

    .line 170
    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_dc

    :cond_1b
    goto :goto_6b

    :sswitch_1c
    const-string v6, "--args"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x5

    goto :goto_6c

    :sswitch_26
    const-string v6, "--id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x7

    goto :goto_6c

    :sswitch_30
    const-string v8, "-t"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    goto :goto_6c

    :sswitch_39
    const-string v6, "-i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    move v6, v1

    goto :goto_6c

    :sswitch_43
    const-string v6, "-d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x2

    goto :goto_6c

    :sswitch_4d
    const-string v6, "-a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x4

    goto :goto_6c

    :sswitch_57
    const-string v6, "--destination"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x3

    goto :goto_6c

    :sswitch_61
    const-string v6, "--device_type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x1

    goto :goto_6c

    :goto_6b
    move v6, v7

    :goto_6c
    packed-switch v6, :pswitch_data_fe

    .line 188
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :pswitch_88
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 186
    goto :goto_a8

    .line 181
    :pswitch_91
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 182
    goto :goto_a8

    .line 177
    :pswitch_96
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 178
    goto :goto_a8

    .line 173
    :pswitch_9f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 174
    nop

    .line 190
    :goto_a8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_10

    .line 193
    :cond_ae
    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "parts":[Ljava/lang/String;
    array-length v7, v1

    new-array v7, v7, [B

    .line 195
    .local v7, "params":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_b8
    array-length v9, v7

    if-ge v8, v9, :cond_c9

    .line 196
    aget-object v9, v1, v8

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 195
    add-int/lit8 v8, v8, 0x1

    goto :goto_b8

    .line 199
    .end local v8    # "i":I
    :cond_c9
    const-string v8, "Sending <Vendor Command>"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    iget-object v8, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v8, v0, v2, v7, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVendorCommand(II[BZ)V

    .line 201
    return v6

    .line 160
    .end local v0    # "deviceType":I
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "destination":I
    .end local v3    # "parameters":Ljava/lang/String;
    .end local v4    # "hasVendorId":Z
    .end local v5    # "arg":Ljava/lang/String;
    .end local v7    # "params":[B
    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected 3 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_dc
    .sparse-switch
        -0x14b41a1d -> :sswitch_61
        -0xdf78592 -> :sswitch_57
        0x5d4 -> :sswitch_4d
        0x5d7 -> :sswitch_43
        0x5dc -> :sswitch_39
        0x5e7 -> :sswitch_30
        0x152abb -> :sswitch_26
        0x4f72067d -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_9f
        :pswitch_96
        :pswitch_96
        :pswitch_91
        :pswitch_91
        :pswitch_88
        :pswitch_88
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 59
    if-nez p1, :cond_7

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 64
    :cond_7
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->handleShellCommand(Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 65
    :catch_c
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught error for command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error handling hdmi_control shell command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiShellCommand"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 v1, 0x1

    return v1
.end method

.method public onHelp()V
    .registers 3

    .line 75
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 77
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "HdmiControlManager (hdmi_control) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "  onetouchplay, otp"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v1, "      Send the \"One Touch Play\" feature from a source to the TV"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "  vendorcommand --device_type <originating device type>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "                --destination <destination device>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "                --args <vendor specific arguments>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v1, "                [--id <true if vendor command should be sent with vendor id>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "      Send a Vendor Command to the given target device"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "  cec_setting get <setting name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "      Get the current value of a CEC setting"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "  cec_setting set <setting name> <value>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "      Set the value of a CEC setting"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "  setsystemaudiomode, setsam [on|off]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "      Sets the System Audio Mode feature on or off on TV devices"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  setarc [on|off]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "      Sets the ARC feature on or off on TV devices"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "  deviceselect <device id>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, "      Switch to device with given id"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "      The device\'s id is represented by its logical address."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "  history_size get"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v1, "      Gets the number of messages that can be stored in dumpsys history"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "  history_size set <new_size>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v1, "      Changes the number of messages that can be stored in dumpsys history to new_size"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    return-void
.end method
