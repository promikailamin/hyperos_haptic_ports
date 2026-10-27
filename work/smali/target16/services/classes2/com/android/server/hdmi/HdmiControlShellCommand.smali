.class public final Lcom/android/server/hdmi/HdmiControlShellCommand;
.super Landroid/os/ShellCommand;
.source "HdmiControlShellCommand.java"


# instance fields
.field public final mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

.field public mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static bridge synthetic -$$Nest$mgetResultString(Lcom/android/server/hdmi/HdmiControlShellCommand;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getResultString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/hardware/hdmi/IHdmiControlService$Stub;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 44
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance p1, Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlShellCommand$1;-><init>(Lcom/android/server/hdmi/HdmiControlShellCommand;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    return-void
.end method


# virtual methods
.method public final cecSetting(Ljava/io/PrintWriter;)I
    .registers 7

    .line 204
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_b7

    .line 207
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, " = "

    if-nez v1, :cond_7b

    const-string/jumbo v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 221
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 224
    :try_start_2a
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v4, v0, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_44} :catch_45

    goto :goto_63

    .line 227
    :catch_45
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 228
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingIntValue(Ljava/lang/String;I)V

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_63
    return v2

    .line 234
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown operation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_7b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 212
    :try_start_7f
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v1, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_9a} :catch_9b

    goto :goto_b6

    .line 215
    :catch_9b
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result p0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b6
    return v2

    .line 205
    :cond_b7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected at least 1 argument (operation)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deviceSelect(Ljava/io/PrintWriter;)I
    .registers 5

    .line 131
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 134
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 136
    const-string v2, "Sending Device Select..."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 139
    const-string p1, "Device Select"

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    return v1

    .line 143
    :cond_24
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_2e

    const/4 p0, 0x0

    return p0

    :cond_2e
    return v1

    .line 132
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected exactly 1 argument."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getResultString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_2b

    const/4 p0, 0x1

    if-eq p1, p0, :cond_28

    const/4 p0, 0x2

    if-eq p1, p0, :cond_25

    const/4 p0, 0x3

    if-eq p1, p0, :cond_22

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1f

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1c

    const/4 p0, 0x7

    if-eq p1, p0, :cond_19

    .line 349
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 347
    :cond_19
    const-string p0, "Communication Failed"

    return-object p0

    .line 345
    :cond_1c
    const-string p0, "Incorrect mode"

    return-object p0

    .line 343
    :cond_1f
    const-string p0, "Exception"

    return-object p0

    .line 341
    :cond_22
    const-string p0, "Target not available"

    return-object p0

    .line 339
    :cond_25
    const-string p0, "Source not available"

    return-object p0

    .line 337
    :cond_28
    const-string p0, "Timeout"

    return-object p0

    .line 335
    :cond_2b
    const-string p0, "Success"

    return-object p0
.end method

.method public final handleShellCommand(Ljava/lang/String;)I
    .registers 5

    .line 106
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_a8

    goto/16 :goto_7c

    :sswitch_11
    const-string v1, "cec_setting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_7c

    :cond_1b
    const/16 v2, 0x8

    goto/16 :goto_7c

    :sswitch_1f
    const-string/jumbo v1, "vendorcommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_7c

    :cond_29
    const/4 v2, 0x7

    goto :goto_7c

    :sswitch_2b
    const-string/jumbo v1, "otp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    goto :goto_7c

    :cond_35
    const/4 v2, 0x6

    goto :goto_7c

    :sswitch_37
    const-string v1, "deviceselect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_7c

    :cond_40
    const/4 v2, 0x5

    goto :goto_7c

    :sswitch_42
    const-string/jumbo v1, "setsystemaudiomode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_7c

    :cond_4c
    const/4 v2, 0x4

    goto :goto_7c

    :sswitch_4e
    const-string/jumbo v1, "setsam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    goto :goto_7c

    :cond_58
    const/4 v2, 0x3

    goto :goto_7c

    :sswitch_5a
    const-string/jumbo v1, "setarc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_7c

    :cond_64
    const/4 v2, 0x2

    goto :goto_7c

    :sswitch_66
    const-string/jumbo v1, "onetouchplay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    goto :goto_7c

    :cond_70
    const/4 v2, 0x1

    goto :goto_7c

    :sswitch_72
    const-string v1, "history_size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v2, 0x0

    :goto_7c
    packed-switch v2, :pswitch_data_ce

    .line 127
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 115
    :pswitch_84
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->cecSetting(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 113
    :pswitch_89
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->vendorCommand(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 122
    :pswitch_8e
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->deviceSelect(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 118
    :pswitch_93
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->setSystemAudioMode(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 120
    :pswitch_98
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->setArcMode(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 111
    :pswitch_9d
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->oneTouchPlay(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 124
    :pswitch_a2
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->historySize(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    nop

    :sswitch_data_a8
    .sparse-switch
        -0x74f38f34 -> :sswitch_72
        -0x38ff28b3 -> :sswitch_66
        -0x35fd3550 -> :sswitch_5a
        -0x35fcf3c3 -> :sswitch_4e
        -0x1bd7bf78 -> :sswitch_42
        -0x18c452e -> :sswitch_37
        0x1af2b -> :sswitch_2b
        0x25083903 -> :sswitch_1f
        0x4ed06452 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_93
        :pswitch_8e
        :pswitch_9d
        :pswitch_89
        :pswitch_84
    .end packed-switch
.end method

.method public final historySize(Ljava/io/PrintWriter;)I
    .registers 6

    .line 285
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_92

    .line 289
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string v2, "get"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_77

    const-string/jumbo v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 297
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 300
    :try_start_24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_28} :catch_4b

    .line 305
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setMessageHistorySize(I)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting CEC dumpsys message history size to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a

    .line 308
    :cond_45
    const-string p0, "Message history size not changed, was it lower than the minimum size?"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4a
    return v3

    .line 302
    :catch_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set CEC dumpsys message history size to "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 315
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown operation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_77
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getMessageHistorySize()I

    move-result p0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CEC dumpsys message history size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 286
    :cond_92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use \'set\' or \'get\' for the command action"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 60
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 64
    :cond_7
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->handleShellCommand(Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    return p0

    :catch_c
    move-exception v0

    .line 66
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught error for command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error handling hdmi_control shell command: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiShellCommand"

    invoke-static {p1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onHelp()V
    .registers 2

    .line 75
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 77
    const-string v0, "HdmiControlManager (hdmi_control) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v0, "  onetouchplay, otp"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v0, "      Send the \"One Touch Play\" feature from a source to the TV"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v0, "  vendorcommand --device_type <originating device type>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v0, "                --destination <destination device>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v0, "                --args <vendor specific arguments>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v0, "                [--id <true if vendor command should be sent with vendor id>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v0, "      Send a Vendor Command to the given target device"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v0, "  cec_setting get <setting name>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v0, "      Get the current value of a CEC setting"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v0, "  cec_setting set <setting name> <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v0, "      Set the value of a CEC setting"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v0, "  setsystemaudiomode, setsam [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v0, "      Sets the System Audio Mode feature on or off on TV devices"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v0, "  setarc [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v0, "      Sets the ARC feature on or off on TV devices"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v0, "  deviceselect <device id>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v0, "      Switch to device with given id"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v0, "      The device\'s id is represented by its logical address."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v0, "  history_size get"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v0, "      Gets the number of messages that can be stored in dumpsys history"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v0, "  history_size set <new_size>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v0, "      Changes the number of messages that can be stored in dumpsys history to new_size"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final oneTouchPlay(Ljava/io/PrintWriter;)I
    .registers 3

    .line 147
    const-string v0, "Sending One Touch Play..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 150
    const-string p1, "One Touch Play"

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_16

    return v0

    .line 154
    :cond_16
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x0

    return p0

    :cond_20
    return v0
.end method

.method public final receiveCallback(Ljava/lang/String;)Z
    .registers 6

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 322
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timed out."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_24} :catch_26

    const/4 p0, 0x0

    return p0

    .line 326
    :catch_26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Caught InterruptedException"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_36
    const/4 p0, 0x1

    return p0
.end method

.method public final setArcMode(Ljava/io/PrintWriter;)I
    .registers 7

    .line 264
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const-string v1, "Please indicate if ARC mode should be turned \"on\" or \"off\"."

    const/4 v2, 0x1

    if-gt v2, v0, :cond_3c

    .line 269
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string/jumbo v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    .line 271
    const-string v0, "Setting ARC mode on"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    goto :goto_35

    .line 273
    :cond_22
    const-string/jumbo v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 274
    const-string v0, "Setting ARC mode off"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    :goto_35
    return v4

    .line 277
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSystemAudioMode(Ljava/io/PrintWriter;)I
    .registers 7

    .line 239
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const-string v1, "Please indicate if System Audio Mode should be turned \"on\" or \"off\"."

    const/4 v2, 0x1

    if-gt v2, v0, :cond_52

    .line 244
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string/jumbo v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    .line 246
    const-string v0, "Setting System Audio Mode on"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {p1, v2, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_39

    .line 248
    :cond_24
    const-string/jumbo v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 249
    const-string v0, "Setting System Audio Mode off"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {p1, v4, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 256
    :goto_39
    const-string p1, "Set System Audio Mode"

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_42

    return v2

    .line 260
    :cond_42
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_4b

    return v4

    :cond_4b
    return v2

    .line 252
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final vendorCommand(Ljava/io/PrintWriter;)I
    .registers 12

    .line 158
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x6

    if-gt v1, v0, :cond_dd

    .line 167
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, ""

    move v5, v2

    move v6, v5

    move v7, v3

    :goto_12
    if-eqz v0, :cond_b8

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_e6

    :goto_1e
    move v8, v2

    goto/16 :goto_78

    :sswitch_21
    const-string v8, "--args"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    goto :goto_1e

    :cond_2a
    const/4 v8, 0x7

    goto :goto_78

    :sswitch_2c
    const-string v8, "--id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    goto :goto_1e

    :cond_35
    move v8, v1

    goto :goto_78

    :sswitch_37
    const-string v8, "-t"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    goto :goto_1e

    :cond_40
    const/4 v8, 0x5

    goto :goto_78

    :sswitch_42
    const-string v8, "-i"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    goto :goto_1e

    :cond_4b
    const/4 v8, 0x4

    goto :goto_78

    :sswitch_4d
    const-string v8, "-d"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_56

    goto :goto_1e

    :cond_56
    const/4 v8, 0x3

    goto :goto_78

    :sswitch_58
    const-string v8, "-a"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    goto :goto_1e

    :cond_61
    const/4 v8, 0x2

    goto :goto_78

    :sswitch_63
    const-string v8, "--destination"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6c

    goto :goto_1e

    :cond_6c
    const/4 v8, 0x1

    goto :goto_78

    :sswitch_6e
    const-string v8, "--device_type"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_77

    goto :goto_1e

    :cond_77
    move v8, v3

    :goto_78
    packed-switch v8, :pswitch_data_108

    .line 187
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :pswitch_92
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_b2

    .line 180
    :pswitch_9b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_b2

    .line 176
    :pswitch_a1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_b2

    .line 172
    :pswitch_aa
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 189
    :goto_b2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 192
    :cond_b8
    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    array-length v1, v0

    new-array v2, v1, [B

    move v4, v3

    :goto_c2
    if-ge v4, v1, :cond_d2

    .line 195
    aget-object v8, v0, v4

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c2

    .line 198
    :cond_d2
    const-string v0, "Sending <Vendor Command>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v5, v6, v2, v7}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVendorCommand(II[BZ)V

    return v3

    .line 159
    :cond_dd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected 3 arguments."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_e6
    .sparse-switch
        -0x14b41a1d -> :sswitch_6e
        -0xdf78592 -> :sswitch_63
        0x5d4 -> :sswitch_58
        0x5d7 -> :sswitch_4d
        0x5dc -> :sswitch_42
        0x5e7 -> :sswitch_37
        0x152abb -> :sswitch_2c
        0x4f72067d -> :sswitch_21
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_a1
        :pswitch_9b
        :pswitch_a1
        :pswitch_92
        :pswitch_aa
        :pswitch_92
        :pswitch_9b
    .end packed-switch
.end method
