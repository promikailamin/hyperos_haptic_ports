.class public Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AuthenticationPolicyServiceShellCommand.java"


# instance fields
.field public mCallingUser:Landroid/os/UserHandle;

.field public mService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;


# direct methods
.method public constructor <init>(Landroid/security/authenticationpolicy/IAuthenticationPolicyService;Landroid/content/Context;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mCallingUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final disableSecureLockDevice(Ljava/io/PrintWriter;)I
    .registers 5

    .line 106
    new-instance v0, Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;

    .line 107
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;-><init>(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mCallingUser:Landroid/os/UserHandle;

    .line 109
    invoke-interface {v1, v2, v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->disableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I

    move-result v0

    .line 110
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->setSecureLockDeviceTestStatus(Z)V

    if-nez v0, :cond_1f

    .line 112
    const-string p0, "Secure lock device disabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 114
    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Secure lock device disable failed, returned status = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 78
    const-string p0, "Secure Lock Device commands:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string p0, "  help"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string p0, "      Print this help text."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string p0, "  enable-secure-lock-device [some message]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string p0, "  disable-secure-lock-device [some message]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string p0, "  is-secure-lock-device-enabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string p0, "  get-secure-lock-device-availability"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string p0, "  on-strong-face-auth-success-confirmed"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string p0, "  set-secure-lock-device-test-status [true/false]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enableSecureLockDevice(Ljava/io/PrintWriter;)I
    .registers 5

    .line 91
    new-instance v0, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;

    .line 92
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->setSecureLockDeviceTestStatus(Z)V

    .line 94
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mCallingUser:Landroid/os/UserHandle;

    .line 95
    invoke-interface {v1, p0, v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->enableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I

    move-result p0

    if-nez p0, :cond_1f

    .line 97
    const-string v0, "Secure lock device enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p0

    .line 99
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Secure lock device enable failed, returned status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p0
.end method

.method public final getSecureLockDeviceAvailability(Ljava/io/PrintWriter;)I
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mCallingUser:Landroid/os/UserHandle;

    .line 129
    invoke-interface {v0, p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->getSecureLockDeviceAvailability(Landroid/os/UserHandle;)I

    move-result p0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSecureLockDeviceAvailability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final isSecureLockDeviceEnabled(Ljava/io/PrintWriter;)I
    .registers 4

    .line 121
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    invoke-interface {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->isSecureLockDeviceEnabled()Z

    move-result p0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSecureLockDeviceEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 48
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 50
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_7a

    goto :goto_78

    :sswitch_13
    const-string v1, "is-secure-lock-device-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->isSecureLockDeviceEnabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :catch_20
    move-exception p0

    goto :goto_64

    .line 50
    :sswitch_22
    const-string/jumbo v1, "set-secure-lock-device-test-status"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->setSecureLockDeviceTestStatus(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 50
    :sswitch_30
    const-string v1, "help"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 52
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->onHelp()V

    const/4 p0, 0x0

    return p0

    .line 50
    :sswitch_3d
    const-string v1, "get-secure-lock-device-availability"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->getSecureLockDeviceAvailability(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 50
    :sswitch_4a
    const-string v1, "enable-secure-lock-device"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->enableSecureLockDevice(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 50
    :sswitch_57
    const-string v1, "disable-secure-lock-device"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->disableSecureLockDevice(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_63} :catch_20

    return p0

    .line 66
    :goto_64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_78
    :goto_78
    const/4 p0, -0x1

    return p0

    :sswitch_data_7a
    .sparse-switch
        -0x738f4d19 -> :sswitch_57
        -0x293cc394 -> :sswitch_4a
        -0x6a01511 -> :sswitch_3d
        0x30cf41 -> :sswitch_30
        0x27966ed -> :sswitch_22
        0x33a306d9 -> :sswitch_13
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 2

    .line 73
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final setSecureLockDeviceTestStatus(Ljava/io/PrintWriter;)I
    .registers 4

    .line 136
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 137
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;->mService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    invoke-interface {p0, v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->setSecureLockDeviceTestStatus(Z)V

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecureLockDeviceTestStatus(isTestMode = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
