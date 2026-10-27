.class public Lcom/android/server/pm/UserManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "UserManagerServiceShellCommand.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mService:Lcom/android/server/pm/UserManagerService;

.field public final mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;


# direct methods
.method public static synthetic $r8$lambda$hoyxLnyq522ZTdCgpQjg0pEm61U()V
    .registers 3

    .line 392
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "To switch headless / full system user mode"

    const/4 v2, 0x0

    .line 391
    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserSystemPackageInstaller;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    .line 73
    iput-object p2, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 74
    iput-object p3, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 75
    iput-object p4, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final confirmBuildIsDebuggable()Z
    .registers 2

    .line 621
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 624
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Command not available on user builds"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final confirmIsCalledByRoot()Z
    .registers 2

    .line 634
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 637
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Command only available on root user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getRequiredUserIdNextArg()I
    .registers 4

    const/16 v0, -0x2710

    .line 652
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_2d

    if-eq v1, v0, :cond_1b

    const/4 v2, -0x3

    if-eq v1, v2, :cond_1b

    const/4 v2, -0x2

    if-eq v1, v2, :cond_16

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    return v1

    .line 664
    :cond_16
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    return p0

    .line 661
    :cond_1b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid value (%d) for userId argument\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0

    :catch_2d
    move-exception v1

    .line 654
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v2, "Exception (%s) parsing userId argument\n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0
.end method

.method public final getUserManagerForUser(I)Landroid/os/UserManager;
    .registers 3

    .line 610
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 611
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 612
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public final grantOrRevokeAdmin(Z)I
    .registers 6

    .line 582
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->confirmBuildIsDebuggable()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->confirmIsCalledByRoot()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_58

    .line 585
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->getRequiredUserIdNextArg()I

    move-result v0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_17

    return v1

    .line 590
    :cond_17
    const-string v2, "UserManagerServiceShellCommand"

    if-eqz p1, :cond_2f

    .line 591
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Calling setUserAdmin(%d)"

    invoke-static {v2, v3, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    iget-object p1, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerService;->setUserAdminInternal(I)Z

    move-result p1

    goto :goto_42

    .line 594
    :cond_2f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Calling revokeUserAdmin(%d)"

    invoke-static {v2, v3, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    iget-object p1, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerService;->revokeUserAdminInternal(I)Z

    move-result p1

    :goto_42
    if-eqz p1, :cond_4f

    .line 598
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Success"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 601
    :cond_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Failed"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_58
    :goto_58
    return v1
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 140
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 144
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_d2

    goto/16 :goto_b3

    :sswitch_11
    const-string v0, "is-user-visible"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 158
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsUserVisible()I

    move-result p0

    return p0

    :catch_1e
    move-exception p1

    goto/16 :goto_b8

    .line 144
    :sswitch_21
    const-string/jumbo v0, "set-system-user-mode-emulation"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 150
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runSetSystemUserModeEmulation()I

    move-result p0

    return p0

    .line 144
    :sswitch_2f
    const-string v0, "get-main-user"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 160
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runGetMainUserId()I

    move-result p0

    return p0

    .line 144
    :sswitch_3c
    const-string/jumbo v0, "report-system-user-package-whitelist-problems"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 148
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runReportPackageAllowlistProblems()I

    move-result p0

    return p0

    .line 144
    :sswitch_4a
    const-string v0, "is-visible-background-users-on-default-display-supported"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 156
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsVisibleBackgroundUserOnDefaultDisplaySupported()I

    move-result p0

    return p0

    .line 144
    :sswitch_57
    const-string v0, "is-main-user-permanent-admin"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 164
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsMainUserPermanentAdmin()I

    move-result p0

    return p0

    .line 144
    :sswitch_64
    const-string v0, "can-switch-to-headless-system-user"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 162
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runCanSwitchToHeadlessSystemUser()I

    move-result p0

    return p0

    .line 144
    :sswitch_71
    const-string v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 146
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runList()I

    move-result p0

    return p0

    .line 144
    :sswitch_7e
    const-string v0, "is-headless-system-user-mode"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 152
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsHeadlessSystemUserMode()I

    move-result p0

    return p0

    .line 144
    :sswitch_8b
    const-string v0, "grant-admin"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 166
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runGrantAdmin()I

    move-result p0

    return p0

    .line 144
    :sswitch_98
    const-string/jumbo v0, "revoke-admin"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 168
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runRevokeAdmin()I

    move-result p0

    return p0

    .line 144
    :sswitch_a6
    const-string v0, "is-visible-background-users-supported"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 154
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsVisibleBackgroundUserSupported()I

    move-result p0

    return p0

    .line 170
    :cond_b3
    :goto_b3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b7} :catch_1e

    return p0

    .line 173
    :goto_b8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :sswitch_data_d2
    .sparse-switch
        -0x653759b8 -> :sswitch_a6
        -0x54e056b8 -> :sswitch_98
        -0x33f56ca2 -> :sswitch_8b
        -0x3fcd2c8 -> :sswitch_7e
        0x32b09e -> :sswitch_71
        0x144d7a6b -> :sswitch_64
        0x28a0f01f -> :sswitch_57
        0x3a76b28f -> :sswitch_4a
        0x40afebbe -> :sswitch_3c
        0x56a171a8 -> :sswitch_2f
        0x5faf535b -> :sswitch_21
        0x6b6f1033 -> :sswitch_11
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 4

    .line 80
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 81
    const-string v0, "User manager (user) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v0, "    Prints this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 85
    const-string v0, "  list [-v | --verbose] [-V | --very-verbose] [--all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v0, "    Prints all users on the system."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 88
    const-string v0, "  report-system-user-package-whitelist-problems [-v | --verbose] [--critical-only] [--mode MODE]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v0, "    Reports all issues on user-type package allowlist XML files. Options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v0, "    -v | --verbose: shows extra info, like number of issues"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v0, "    --critical-only: show only critical issues, excluding warnings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v0, "    --mode MODE: shows what errors would be if device used mode MODE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v0, "      (where MODE is the allowlist mode integer as defined by config_userTypePackageWhitelistMode)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 97
    const-string v0, "  set-system-user-mode-emulation [--reboot | --no-restart] <headless | full | default>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v0, "    Changes whether the system user is headless, full, or default (as defined by OEM)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v0, "    WARNING: this command is meant just for development and debugging purposes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v0, "             It should NEVER be used on automated tests."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v0, "    NOTE: by default it restarts the Android runtime, unless called with"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v0, "          --reboot (which does a full reboot) or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v0, "          --no-restart (which requires a manual restart)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 108
    const-string v0, "  is-headless-system-user-mode [-v | --verbose]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v0, "    Checks whether the device uses headless system user mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v0, "  is-visible-background-users-on-default-display-supported [-v | --verbose]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v0, "    Checks whether the device allows users to be start visible on background in the default display."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    const-string v0, "    It returns the effective mode, even when using emulation"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string v1, "    (to get the real mode as well, use -v or --verbose)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 116
    const-string v2, "  is-visible-background-users-supported [-v | --verbose]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v2, "    Checks whether the device allows users to be start visible on background."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 121
    const-string v0, "  is-user-visible [--display DISPLAY_ID] <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v0, "    Checks if the given user is visible in the given display."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    const-string v0, "    If the display option is not set, it uses the user\'s context to check"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    const-string v0, "    (so it emulates what apps would get from UserManager.isUserVisible())"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 126
    const-string v0, "  get-main-user "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const-string v0, "    Displays main user id or message if there is no main user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 129
    const-string v0, "  grant-admin <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v0, "    Grants admin privileges to the given user (requires adb root)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 132
    const-string v0, "  revoke-admin <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    const-string v0, "    Revokes admin privileges from the given user (requires adb root)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runCanSwitchToHeadlessSystemUser()I
    .registers 2

    .line 560
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 561
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->canSwitchToHeadlessSystemUser()Z

    move-result p0

    .line 562
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGetMainUserId()I
    .registers 3

    .line 549
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 550
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserId()I

    move-result p0

    const/16 v1, -0x2710

    if-ne p0, v1, :cond_15

    .line 552
    const-string p0, "None"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 555
    :cond_15
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGrantAdmin()I
    .registers 2

    const/4 v0, 0x1

    .line 574
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->grantOrRevokeAdmin(Z)I

    move-result p0

    return p0
.end method

.method public final runIsHeadlessSystemUserMode()I
    .registers 5

    .line 463
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 467
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 468
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    const-string v2, "-v"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "--verbose"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 474
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_35
    const/4 v2, 0x1

    goto :goto_6

    .line 478
    :cond_37
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p0

    if-nez v2, :cond_43

    .line 482
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_56

    .line 484
    :cond_43
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    .line 485
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    .line 484
    const-string v2, "effective=%b real=%b\n"

    invoke-virtual {v0, v2, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_56
    return v1
.end method

.method public final runIsMainUserPermanentAdmin()I
    .registers 2

    .line 567
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 568
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isMainUserPermanentAdmin()Z

    move-result p0

    .line 569
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIsUserVisible()I
    .registers 4

    .line 436
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 439
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 440
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v1, "--display"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 445
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 442
    :cond_2c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 449
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->getRequiredUserIdNextArg()I

    move-result v2

    if-eqz v1, :cond_4a

    .line 453
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/UserManagerService;->isUserVisibleOnDisplay(II)Z

    move-result p0

    goto :goto_52

    .line 455
    :cond_4a
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerServiceShellCommand;->getUserManagerForUser(I)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserVisible()Z

    move-result p0

    .line 458
    :goto_52
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIsVisibleBackgroundUserOnDefaultDisplaySupported()I
    .registers 5

    .line 520
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 524
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 525
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    const-string v2, "-v"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "--verbose"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 531
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_35
    const/4 v2, 0x1

    goto :goto_6

    .line 536
    :cond_37
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    move-result p0

    if-nez v2, :cond_41

    .line 540
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_5d

    .line 542
    :cond_41
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110217

    .line 543
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 542
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "effective=%b real=%b\n"

    invoke-virtual {v0, v2, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_5d
    return v1
.end method

.method public final runIsVisibleBackgroundUserSupported()I
    .registers 5

    .line 491
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 495
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 496
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    const-string v2, "-v"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "--verbose"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 502
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_35
    const/4 v2, 0x1

    goto :goto_6

    .line 507
    :cond_37
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result p0

    if-nez v2, :cond_41

    .line 511
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_5d

    .line 513
    :cond_41
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110216

    .line 514
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 513
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "effective=%b real=%b\n"

    invoke-virtual {v0, v2, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_5d
    return v1
.end method

.method public final runList()I
    .registers 36

    move-object/from16 v0, p0

    .line 179
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_9
    move v5, v4

    .line 184
    :goto_a
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_72

    .line 185
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_1d6

    :goto_1c
    move v8, v9

    goto :goto_54

    :sswitch_1e
    const-string v8, "--verbose"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    goto :goto_1c

    :cond_27
    const/4 v8, 0x4

    goto :goto_54

    :sswitch_29
    const-string v8, "--very-verbose"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    goto :goto_1c

    :cond_32
    const/4 v8, 0x3

    goto :goto_54

    :sswitch_34
    const-string v8, "--all"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    goto :goto_1c

    :cond_3d
    const/4 v8, 0x2

    goto :goto_54

    :sswitch_3f
    const-string v8, "-v"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_48

    goto :goto_1c

    :cond_48
    move v8, v7

    goto :goto_54

    :sswitch_4a
    const-string v8, "-V"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_53

    goto :goto_1c

    :cond_53
    move v8, v2

    :goto_54
    packed-switch v8, :pswitch_data_1ec

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :pswitch_6c
    move v3, v7

    goto :goto_a

    :pswitch_6e
    move v4, v7

    goto :goto_a

    :pswitch_70
    move v4, v7

    goto :goto_9

    .line 204
    :cond_72
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    .line 205
    iget-object v8, v0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    xor-int/2addr v3, v7

    invoke-virtual {v8, v3, v2}, Lcom/android/server/pm/UserManagerService;->getUsersWithUnresolvedNames(ZZ)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_85

    .line 208
    const-string v0, "Error: couldn\'t get users"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 211
    :cond_85
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, -0x2710

    if-eqz v4, :cond_a1

    .line 214
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%d users:\n\n"

    invoke-virtual {v1, v11, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 215
    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    goto :goto_a7

    .line 220
    :cond_a1
    const-string v10, "Users:"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v10, v9

    :goto_a7
    move v11, v2

    :goto_a8
    if-ge v11, v8, :cond_1d3

    .line 223
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 224
    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v6, v13, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v13

    .line 225
    const-string v14, ""

    if-eqz v4, :cond_1b9

    .line 226
    const-class v15, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 227
    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v15, :cond_ee

    .line 231
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move/from16 v18, v2

    .line 234
    :try_start_ca
    invoke-virtual {v15}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerUserId()I

    move-result v2

    iget v7, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v7, :cond_d7

    .line 235
    const-string v2, " (device-owner)"

    goto :goto_d8

    :catchall_d5
    move-exception v0

    goto :goto_ea

    :cond_d7
    move-object v2, v14

    .line 237
    :goto_d8
    invoke-virtual {v15, v7}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_e1

    .line 238
    const-string v7, " (profile-owner)"
    :try_end_e0
    .catchall {:try_start_ca .. :try_end_e0} :catchall_d5

    goto :goto_e2

    :cond_e1
    move-object v7, v14

    .line 241
    :goto_e2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v31, v2

    move-object/from16 v32, v7

    goto :goto_f4

    :goto_ea
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    throw v0

    :cond_ee
    move/from16 v18, v2

    move-object/from16 v31, v14

    move-object/from16 v32, v31

    .line 244
    :goto_f4
    iget v2, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v10, :cond_fa

    const/4 v7, 0x1

    goto :goto_fc

    :cond_fa
    move/from16 v7, v18

    .line 245
    :goto_fc
    iget v15, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v15, v2, :cond_104

    if-eq v15, v9, :cond_104

    const/4 v15, 0x1

    goto :goto_106

    :cond_104
    move/from16 v15, v18

    .line 247
    :goto_106
    iget-object v9, v0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v9, v2}, Lcom/android/server/pm/UserManagerService;->isUserVisible(I)Z

    move-result v2

    .line 249
    iget-object v9, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v9, :cond_113

    :goto_110
    move-object/from16 v21, v9

    goto :goto_11a

    :cond_113
    iget-object v9, v0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v9, v12}, Lcom/android/server/pm/UserManagerService;->getName(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v9

    goto :goto_110

    :goto_11a
    if-eqz v5, :cond_132

    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", unresolvedName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_134

    :cond_132
    move-object/from16 v22, v14

    .line 258
    :goto_134
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v0, v12, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    const-string v9, "android.os.usertype."

    .line 262
    invoke-virtual {v0, v9, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    iget v0, v12, Landroid/content/pm/UserInfo;->flags:I

    .line 263
    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v24

    if-eqz v15, :cond_169

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (parentId="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    goto :goto_16b

    :cond_169
    move-object/from16 v25, v14

    :goto_16b
    if-eqz v13, :cond_172

    .line 265
    const-string v0, " (running)"

    move-object/from16 v26, v0

    goto :goto_174

    :cond_172
    move-object/from16 v26, v14

    .line 266
    :goto_174
    iget-boolean v0, v12, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v0, :cond_17d

    const-string v0, " (partial)"

    move-object/from16 v27, v0

    goto :goto_17f

    :cond_17d
    move-object/from16 v27, v14

    .line 267
    :goto_17f
    iget-boolean v0, v12, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v0, :cond_188

    const-string v0, " (guestToRemove)"

    move-object/from16 v28, v0

    goto :goto_18a

    :cond_188
    move-object/from16 v28, v14

    .line 268
    :goto_18a
    iget-boolean v0, v12, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_193

    const-string v0, " (pre-created)"

    move-object/from16 v29, v0

    goto :goto_195

    :cond_193
    move-object/from16 v29, v14

    .line 269
    :goto_195
    iget-boolean v0, v12, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v0, :cond_19e

    const-string v0, " (converted)"

    move-object/from16 v30, v0

    goto :goto_1a0

    :cond_19e
    move-object/from16 v30, v14

    :goto_1a0
    if-eqz v7, :cond_1a7

    .line 271
    const-string v0, " (current)"

    move-object/from16 v33, v0

    goto :goto_1a9

    :cond_1a7
    move-object/from16 v33, v14

    :goto_1a9
    if-eqz v2, :cond_1ad

    .line 272
    const-string v14, " (visible)"

    :cond_1ad
    move-object/from16 v34, v14

    filled-new-array/range {v19 .. v34}, [Ljava/lang/Object;

    move-result-object v0

    .line 256
    const-string v2, "%d: id=%d, name=%s%s, type=%s, flags=%s%s%s%s%s%s%s%s%s%s%s\n"

    invoke-virtual {v1, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1c8

    :cond_1b9
    move/from16 v18, v2

    if-eqz v13, :cond_1bf

    .line 278
    const-string v14, " running"

    :cond_1bf
    filled-new-array {v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\t%s%s\n"

    invoke-virtual {v1, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_1c8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v18

    const/4 v7, 0x1

    const/16 v9, -0x2710

    goto/16 :goto_a8

    :cond_1d3
    move/from16 v18, v2

    return v18

    :sswitch_data_1d6
    .sparse-switch
        0x5c9 -> :sswitch_4a
        0x5e9 -> :sswitch_3f
        0x2901001 -> :sswitch_34
        0x1fb0898b -> :sswitch_29
        0x6789dfe2 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_1ec
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6e
        :pswitch_6c
        :pswitch_70
        :pswitch_6e
    .end packed-switch
.end method

.method public final runReportPackageAllowlistProblems()I
    .registers 10

    .line 286
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, -0x3e8

    move v3, v1

    move v4, v3

    .line 291
    :goto_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6d

    .line 292
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    sparse-switch v6, :sswitch_data_b2

    :goto_1b
    move v6, v7

    goto :goto_48

    :sswitch_1d
    const-string v6, "--verbose"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v6, 0x3

    goto :goto_48

    :sswitch_28
    const-string v6, "--mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    goto :goto_1b

    :cond_31
    const/4 v6, 0x2

    goto :goto_48

    :sswitch_33
    const-string v6, "-v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    goto :goto_1b

    :cond_3c
    move v6, v8

    goto :goto_48

    :sswitch_3e
    const-string v6, "--critical-only"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    goto :goto_1b

    :cond_47
    move v6, v1

    :goto_48
    packed-switch v6, :pswitch_data_c4

    .line 304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 301
    :pswitch_60
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_9

    :pswitch_69
    move v3, v8

    goto :goto_9

    :pswitch_6b
    move v4, v8

    goto :goto_9

    .line 309
    :cond_6d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "runReportPackageAllowlistProblems(): verbose="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", criticalOnly="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    const-string v6, "UserManagerServiceShellCommand"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v5, Landroid/util/IndentingPrintWriter;

    const-string v6, "  "

    invoke-direct {v5, v0, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 314
    :try_start_9f
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageAllowlistProblems(Landroid/util/IndentingPrintWriter;IZZ)V
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_a8

    .line 316
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V

    return v1

    :catchall_a8
    move-exception p0

    .line 313
    :try_start_a9
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_ad

    goto :goto_b1

    :catchall_ad
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b1
    throw p0

    :sswitch_data_b2
    .sparse-switch
        -0x513a2c86 -> :sswitch_3e
        0x5e9 -> :sswitch_33
        0x4f776f43 -> :sswitch_28
        0x6789dfe2 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_69
        :pswitch_60
        :pswitch_69
    .end packed-switch
.end method

.method public final runRevokeAdmin()I
    .registers 2

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->grantOrRevokeAdmin(Z)I

    move-result p0

    return p0
.end method

.method public final runSetSystemUserModeEmulation()I
    .registers 12

    .line 321
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->confirmBuildIsDebuggable()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_14c

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->confirmIsCalledByRoot()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_14c

    .line 325
    :cond_f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 330
    iget-object v2, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 331
    const-string p0, "Cannot change system user mode when it has a credential"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_22
    const/4 v2, 0x1

    move v5, v2

    move v4, v3

    .line 338
    :goto_25
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_57

    .line 339
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    const-string v7, "--no-restart"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    const-string v4, "--reboot"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid option: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_53
    move v4, v2

    goto :goto_25

    :cond_55
    move v5, v3

    goto :goto_25

    :cond_57
    if-eqz v4, :cond_65

    if-nez v5, :cond_65

    .line 352
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "You can use --reboot or --no-restart, but not both"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 356
    :cond_65
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 358
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v7

    .line 361
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v9, "full"

    const-string v10, "headless"

    sparse-switch v8, :sswitch_data_14e

    :goto_7b
    move v8, v1

    goto :goto_99

    :sswitch_7d
    const-string v8, "default"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_86

    goto :goto_7b

    :cond_86
    const/4 v8, 0x2

    goto :goto_99

    :sswitch_88
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8f

    goto :goto_7b

    :cond_8f
    move v8, v2

    goto :goto_99

    :sswitch_91
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_98

    goto :goto_7b

    :cond_98
    move v8, v3

    :goto_99
    packed-switch v8, :pswitch_data_15c

    .line 372
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Invalid arg: %s\n"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v1

    :pswitch_aa
    move v2, v7

    goto :goto_ae

    :pswitch_ac
    xor-int/lit8 v2, v7, 0x1

    :goto_ae
    :pswitch_ae
    if-nez v2, :cond_bd

    if-eqz v7, :cond_b3

    move-object v9, v10

    .line 378
    :cond_b3
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object p0

    .line 377
    const-string v1, "No change needed, system user is already %s\n"

    invoke-virtual {v0, v1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3

    .line 382
    :cond_bd
    const-string p0, "Updating system property %s to %s"

    const-string/jumbo v1, "persist.debug.user_mode_emulation"

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v2

    const-string v7, "UserManagerServiceShellCommand"

    invoke-static {v7, p0, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_e7

    .line 388
    const-string p0, "Rebooting to finalize the changes"

    invoke-static {v7, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string p0, "Rebooting to finalize changes"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/pm/UserManagerServiceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerServiceShellCommand$$ExternalSyntheticLambda0;-><init>()V

    .line 391
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14b

    :cond_e7
    if-eqz v5, :cond_141

    .line 396
    const-string p0, "Shutting PackageManager down"

    invoke-static {v7, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0}, Landroid/content/pm/PackageManagerInternal;->shutdown()V

    .line 399
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_11f

    .line 402
    :try_start_ff
    const-string v1, "Shutting ActivityManager down"

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2710

    .line 403
    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_109} :catch_10a

    goto :goto_11f

    :catch_10a
    move-exception p0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to shut down ActivityManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_11f
    :goto_11f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    .line 410
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Restarting Android runtime(PID=%d) to finalize changes"

    invoke-static {v7, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    const-string v1, "Restarting Android runtime to finalize changes"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const-string v1, "The restart may trigger a \'Broken pipe\' message; this is to be expected."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 421
    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_14b

    .line 423
    :cond_141
    const-string p0, "System user mode changed - please reboot (or restart Android runtime) to continue"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    const-string p0, "NOTICE: after restart, some apps might be uninstalled (and their data will be lost)"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_14b
    return v3

    :cond_14c
    :goto_14c
    return v1

    nop

    :sswitch_data_14e
    .sparse-switch
        -0x42768087 -> :sswitch_91
        0x30228f -> :sswitch_88
        0x5c13d641 -> :sswitch_7d
    .end sparse-switch

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_aa
        :pswitch_ae
    .end packed-switch
.end method
