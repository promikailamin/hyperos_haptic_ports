.class public Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;
.super Landroid/os/ShellCommand;
.source "AdvancedProtectionShellCommand.java"


# instance fields
.field public mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    return-void
.end method


# virtual methods
.method public final dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 66
    const-string p0, "Advanced Protection Mode commands:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string p0, "  help"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string p0, "      Print this help text."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const-string p0, "  set-protection-enabled [true|false]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string p0, "  is-protection-enabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const-string p0, "  set-usb-data-protection-enabled [true|false]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string p0, "  is-usb-data-protection-enabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final isProtectionEnabled(Ljava/io/PrintWriter;)I
    .registers 2

    .line 86
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabled()Z

    move-result p0

    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final isUsbDataProtectedEnabled(Ljava/io/PrintWriter;)I
    .registers 2

    .line 103
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isUsbDataProtectionEnabled()Z

    move-result p0

    .line 104
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 36
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 38
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 40
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6e

    goto :goto_6c

    :sswitch_13
    const-string/jumbo v1, "set-protection-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 45
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->setProtectionEnabled()I

    move-result p0

    return p0

    :catch_21
    move-exception p0

    goto :goto_58

    .line 40
    :sswitch_23
    const-string v1, "is-protection-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->isProtectionEnabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 40
    :sswitch_30
    const-string/jumbo v1, "set-usb-data-protection-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 49
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->setUsbDataProtectedEnabled()I

    move-result p0

    return p0

    .line 40
    :sswitch_3e
    const-string v1, "help"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 42
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->onHelp()V

    const/4 p0, 0x0

    return p0

    .line 40
    :sswitch_4b
    const-string v1, "is-usb-data-protection-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->isUsbDataProtectedEnabled(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_57} :catch_21

    return p0

    .line 54
    :goto_58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    const/4 p0, -0x1

    return p0

    :sswitch_data_6e
    .sparse-switch
        -0x76fb381c -> :sswitch_4b
        0x30cf41 -> :sswitch_3e
        0x1433f31c -> :sswitch_30
        0x3be2cdd0 -> :sswitch_23
        0x5f33a398 -> :sswitch_13
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 2

    .line 61
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final setProtectionEnabled()I
    .registers 2

    .line 79
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->setAdvancedProtectionEnabled(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setUsbDataProtectedEnabled()I
    .registers 2

    .line 94
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->setUsbDataProtectionEnabled(Z)V

    const/4 p0, 0x0

    return p0
.end method
