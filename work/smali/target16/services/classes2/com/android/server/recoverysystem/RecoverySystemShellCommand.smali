.class public Lcom/android/server/recoverysystem/RecoverySystemShellCommand;
.super Landroid/os/ShellCommand;
.source "RecoverySystemShellCommand.java"


# instance fields
.field public final mService:Landroid/os/IRecoverySystem;


# direct methods
.method public constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    return-void
.end method


# virtual methods
.method public final clearLskf()I
    .registers 3

    .line 85
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, v0}, Landroid/os/IRecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    if-eqz v1, :cond_14

    .line 89
    const-string/jumbo v1, "success"

    goto :goto_16

    :cond_14
    const-string v1, "failure"

    :goto_16
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 88
    const-string v1, "Clear LSKF for packageName: %s, status: %s\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0
.end method

.method public final isLskfCaptured()I
    .registers 3

    .line 94
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, v0}, Landroid/os/IRecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v1

    .line 96
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    if-eqz v1, :cond_14

    .line 97
    const-string/jumbo v1, "true"

    goto :goto_16

    :cond_14
    const-string v1, "false"

    :goto_16
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s LSKF capture status: %s\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 6

    if-nez p1, :cond_7

    .line 39
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 42
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_7c

    goto :goto_55

    :sswitch_f
    const-string/jumbo v0, "reboot-and-apply"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 50
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->rebootAndApply()I

    move-result p0

    return p0

    :catch_1d
    move-exception v0

    goto :goto_5a

    .line 42
    :sswitch_1f
    const-string/jumbo v0, "request-lskf"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 44
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->requestLskf()I

    move-result p0

    return p0

    .line 42
    :sswitch_2d
    const-string v0, "is-lskf-captured"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 48
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->isLskfCaptured()I

    move-result p0

    return p0

    .line 42
    :sswitch_3a
    const-string/jumbo v0, "wipe"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 52
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->wipe()I

    move-result p0

    return p0

    .line 42
    :sswitch_48
    const-string v0, "clear-lskf"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 46
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->clearLskf()I

    move-result p0

    return p0

    .line 54
    :cond_55
    :goto_55
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_59} :catch_1d

    return p0

    .line 57
    :goto_5a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while executing command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const/4 p0, -0x1

    return p0

    nop

    :sswitch_data_7c
    .sparse-switch
        -0x2e71d75e -> :sswitch_48
        0x37b047 -> :sswitch_3a
        0x485fa2c6 -> :sswitch_2d
        0x4aea45a0 -> :sswitch_1f
        0x53c163d0 -> :sswitch_f
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 2

    .line 115
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 116
    const-string v0, "Recovery system commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v0, "  request-lskf <package_name>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v0, "  clear-lskf"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v0, "  is-lskf-captured <package_name>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v0, "  reboot-and-apply <package_name> <reason>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v0, "  wipe <new filesystem type ext4/f2fs>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final rebootAndApply()I
    .registers 5

    .line 102
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Landroid/os/IRecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    move v1, v3

    .line 106
    :goto_14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    if-eqz v1, :cond_1e

    .line 109
    const-string/jumbo v1, "success"

    goto :goto_20

    :cond_1e
    const-string v1, "failure"

    :goto_20
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 108
    const-string v1, "%s Reboot and apply status: %s\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3
.end method

.method public final requestLskf()I
    .registers 4

    .line 76
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IRecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v1

    .line 78
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    if-eqz v1, :cond_15

    .line 80
    const-string/jumbo v1, "success"

    goto :goto_17

    :cond_15
    const-string v1, "failure"

    :goto_17
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 79
    const-string v1, "Request LSKF for packageName: %s, status: %s\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p0, 0x0

    return p0
.end method

.method public final wipe()I
    .registers 6

    .line 64
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "--wipe_data"

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n--reformat_data="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting into recovery with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {p0, v2}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
