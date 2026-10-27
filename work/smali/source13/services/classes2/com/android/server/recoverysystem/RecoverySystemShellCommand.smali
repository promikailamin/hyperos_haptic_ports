.class public Lcom/android/server/recoverysystem/RecoverySystemShellCommand;
.super Landroid/os/ShellCommand;
.source "RecoverySystemShellCommand.java"


# instance fields
.field private final mService:Landroid/os/IRecoverySystem;


# direct methods
.method public constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/recoverysystem/RecoverySystemService;

    .line 32
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    .line 34
    return-void
.end method

.method private clearLskf()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, v0}, Landroid/os/IRecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v1

    .line 73
    .local v1, "success":Z
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 74
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 75
    if-eqz v1, :cond_1a

    const-string/jumbo v5, "success"

    goto :goto_1c

    :cond_1a
    const-string v5, "failure"

    :goto_1c
    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 74
    const-string v5, "Clear LSKF for packageName: %s, status: %s\n"

    invoke-virtual {v2, v5, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 76
    return v4
.end method

.method private isLskfCaptured()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, v0}, Landroid/os/IRecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v1

    .line 82
    .local v1, "captured":Z
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 83
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    if-eqz v1, :cond_1a

    const-string/jumbo v5, "true"

    goto :goto_1c

    :cond_1a
    const-string v5, "false"

    :goto_1c
    const/4 v6, 0x1

    aput-object v5, v3, v6

    const-string v5, "%s LSKF capture status: %s\n"

    invoke-virtual {v2, v5, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 84
    return v4
.end method

.method private rebootAndApply()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "rebootReason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Landroid/os/IRecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_14

    move v2, v4

    goto :goto_15

    :cond_14
    move v2, v3

    .line 92
    .local v2, "success":Z
    :goto_15
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 94
    .local v5, "pw":Ljava/io/PrintWriter;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    .line 95
    if-eqz v2, :cond_24

    const-string/jumbo v7, "success"

    goto :goto_26

    :cond_24
    const-string v7, "failure"

    :goto_26
    aput-object v7, v6, v4

    .line 94
    const-string v4, "%s Reboot and apply status: %s\n"

    invoke-virtual {v5, v4, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 96
    return v3
.end method

.method private requestLskf()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IRecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v1

    .line 64
    .local v1, "success":Z
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 65
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 66
    if-eqz v1, :cond_1b

    const-string/jumbo v5, "success"

    goto :goto_1d

    :cond_1b
    const-string v5, "failure"

    :goto_1d
    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 65
    const-string v5, "Request LSKF for packageName: %s, status: %s\n"

    invoke-virtual {v2, v5, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 67
    return v4
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 38
    if-nez p1, :cond_7

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 42
    :cond_7
    const/4 v0, -0x1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_7c

    :cond_f
    goto :goto_3a

    :sswitch_10
    const-string/jumbo v1, "reboot-and-apply"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x3

    goto :goto_3b

    :sswitch_1b
    const-string/jumbo v1, "request-lskf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_3b

    :sswitch_26
    const-string v1, "is-lskf-captured"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    goto :goto_3b

    :sswitch_30
    const-string v1, "clear-lskf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_3b

    :goto_3a
    move v1, v0

    :goto_3b
    packed-switch v1, :pswitch_data_8e

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_57

    .line 50
    :pswitch_43
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->rebootAndApply()I

    move-result v0

    return v0

    .line 48
    :pswitch_48
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->isLskfCaptured()I

    move-result v0

    return v0

    .line 46
    :pswitch_4d
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->clearLskf()I

    move-result v0

    return v0

    .line 44
    :pswitch_52
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->requestLskf()I

    move-result v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_56} :catch_58

    return v0

    .line 52
    :goto_57
    return v0

    .line 54
    :catch_58
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while executing command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 57
    return v0

    nop

    :sswitch_data_7c
    .sparse-switch
        -0x2e71d75e -> :sswitch_30
        0x485fa2c6 -> :sswitch_26
        0x4aea45a0 -> :sswitch_1b
        0x53c163d0 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4d
        :pswitch_48
        :pswitch_43
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 101
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 102
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Recovery system commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "  request-lskf <package_name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "  clear-lskf"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "  is-lskf-captured <package_name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v1, "  reboot-and-apply <package_name> <reason>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    return-void
.end method
