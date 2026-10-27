.class public Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "NetworkTimeUpdateServiceShellCommand.java"


# instance fields
.field public final mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 61
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 67
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 70
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_4c

    goto :goto_35

    :sswitch_13
    const-string v0, "force_refresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_35

    :cond_1c
    const/4 v1, 0x2

    goto :goto_35

    :sswitch_1e
    const-string/jumbo v0, "reset_server_config_for_tests"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_35

    :cond_28
    const/4 v1, 0x1

    goto :goto_35

    :sswitch_2a
    const-string/jumbo v0, "set_server_config_for_tests"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    packed-switch v1, :pswitch_data_5a

    .line 78
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 72
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->runForceRefresh()I

    move-result p0

    return p0

    .line 76
    :pswitch_42
    invoke-virtual {p0}, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->runResetServerConfig()I

    move-result p0

    return p0

    .line 74
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->runSetServerConfig()I

    move-result p0

    return p0

    :sswitch_data_4c
    .sparse-switch
        -0x641cecf3 -> :sswitch_2a
        0x3eebcfa -> :sswitch_1e
        0x70bba987 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_47
        :pswitch_42
        :pswitch_3d
    .end packed-switch
.end method

.method public onHelp()V
    .registers 6

    .line 134
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 135
    const-string/jumbo v0, "network_time_update_service"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Network Time Update Service (%s) commands:\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 136
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "  help\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 137
    const-string v1, "    Print this help text.\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 138
    const-string v1, "force_refresh"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "  %s\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 139
    const-string v1, "    Refreshes the latest time. Prints whether it was successful.\n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 140
    const-string/jumbo v1, "set_server_config_for_tests"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 141
    const-string v3, "    Sets the NTP server config for tests. The config is not persisted.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 142
    const-string v3, "--server"

    const-string v4, "--timeout_millis"

    filled-new-array {v3, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "      Options: %s <uri> [%s <additional uris>]+ %s <millis>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 145
    const-string v3, "      NTP server URIs must be in the form \"ntp://hostname\" or \"ntp://hostname:port\"\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 147
    const-string/jumbo v0, "reset_server_config_for_tests"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 148
    const-string v0, "    Resets/clears the NTP server config set via %s.\n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 150
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runForceRefresh()I
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-virtual {v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->forceRefreshForTests()Z

    move-result v0

    .line 85
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runResetServerConfig()I
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetServerConfig()I
    .registers 5

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 93
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v3, "--timeout_millis"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "--server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 97
    :try_start_1f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/NtpTrustedTime;->parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/net/URISyntaxException; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_6

    :catch_2b
    move-exception p0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad NTP server value"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 108
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_4b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    goto :goto_6

    .line 113
    :cond_59
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_75

    if-eqz v1, :cond_6d

    .line 122
    new-instance v2, Landroid/util/NtpTrustedTime$NtpConfig;

    invoke-direct {v2, v0, v1}, Landroid/util/NtpTrustedTime$NtpConfig;-><init>(Ljava/util/List;Ljava/time/Duration;)V

    .line 123
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-virtual {p0, v2}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V

    const/4 p0, 0x0

    return p0

    .line 118
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing required option: ----timeout_millis"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing required option: ----server"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
