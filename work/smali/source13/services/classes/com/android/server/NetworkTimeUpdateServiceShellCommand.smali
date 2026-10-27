.class Lcom/android/server/NetworkTimeUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "NetworkTimeUpdateServiceShellCommand.java"


# static fields
.field private static final SET_SERVER_CONFIG_HOSTNAME_ARG:Ljava/lang/String; = "--hostname"

.field private static final SET_SERVER_CONFIG_PORT_ARG:Ljava/lang/String; = "--port"

.field private static final SET_SERVER_CONFIG_TIMEOUT_ARG:Ljava/lang/String; = "--timeout_millis"

.field private static final SHELL_COMMAND_CLEAR_TIME:Ljava/lang/String; = "clear_time"

.field private static final SHELL_COMMAND_FORCE_REFRESH:Ljava/lang/String; = "force_refresh"

.field private static final SHELL_COMMAND_SERVICE_NAME:Ljava/lang/String; = "network_time_update_service"

.field private static final SHELL_COMMAND_SET_SERVER_CONFIG:Ljava/lang/String; = "set_server_config"


# instance fields
.field private final mNetworkTimeUpdateService:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .registers 3
    .param p1, "networkTimeUpdateService"    # Lcom/android/server/NetworkTimeUpdateService;

    .line 55
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkTimeUpdateService;

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/NetworkTimeUpdateService;

    .line 57
    return-void
.end method

.method private runClearTime()I
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v0}, Lcom/android/server/NetworkTimeUpdateService;->clearTimeForTests()V

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method private runForceRefresh()I
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v0}, Lcom/android/server/NetworkTimeUpdateService;->forceRefreshForTests()Z

    move-result v0

    .line 85
    .local v0, "success":Z
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 86
    const/4 v1, 0x0

    return v1
.end method

.method private runSetServerConfig()I
    .registers 8

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "hostname":Ljava/lang/String;
    const/4 v1, 0x0

    .line 92
    .local v1, "port":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 94
    .local v2, "timeout":Ljava/time/Duration;
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_6f

    .line 95
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_76

    :cond_13
    goto :goto_31

    :sswitch_14
    const-string v5, "--port"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    goto :goto_32

    :sswitch_1e
    const-string v6, "--hostname"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_32

    :sswitch_27
    const-string v5, "--timeout_millis"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x2

    goto :goto_32

    :goto_31
    move v5, v3

    :goto_32
    packed-switch v5, :pswitch_data_84

    .line 109
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :pswitch_4e
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    .line 106
    goto :goto_6e

    .line 101
    :pswitch_5c
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 102
    goto :goto_6e

    .line 97
    :pswitch_69
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 98
    nop

    .line 109
    :goto_6e
    goto :goto_3

    .line 113
    :cond_6f
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/NetworkTimeUpdateService;->setServerConfigForTests(Ljava/lang/String;Ljava/lang/Integer;Ljava/time/Duration;)V

    .line 114
    return v5

    nop

    :sswitch_data_76
    .sparse-switch
        -0x3a1da77c -> :sswitch_27
        -0x10ee3e2d -> :sswitch_1e
        0x4f78ce21 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_69
        :pswitch_5c
        :pswitch_4e
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 61
    if-nez p1, :cond_7

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 65
    :cond_7
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    :cond_f
    goto :goto_2e

    :sswitch_10
    const-string v1, "force_refresh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_2e

    :sswitch_1a
    const-string/jumbo v1, "set_server_config"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x2

    goto :goto_2e

    :sswitch_25
    const-string v1, "clear_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    :goto_2e
    packed-switch v0, :pswitch_data_54

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 71
    :pswitch_36
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->runSetServerConfig()I

    move-result v0

    return v0

    .line 69
    :pswitch_3b
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->runForceRefresh()I

    move-result v0

    return v0

    .line 67
    :pswitch_40
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->runClearTime()I

    move-result v0

    return v0

    nop

    :sswitch_data_46
    .sparse-switch
        -0x2badc281 -> :sswitch_25
        -0x14d1955f -> :sswitch_1a
        0x70bba987 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3b
        :pswitch_36
    .end packed-switch
.end method

.method public onHelp()V
    .registers 7

    .line 119
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 120
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "network_time_update_service"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Network Time Update Service (%s) commands:\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 121
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "  help\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 122
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "    Print this help text.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 123
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "clear_time"

    aput-object v3, v2, v4

    const-string v3, "  %s\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 124
    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    Clears the latest time.\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 125
    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "force_refresh"

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 126
    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    Refreshes the latest time. Prints whether it was successful.\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 127
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "set_server_config"

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 128
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "    Sets the NTP server config for tests. The config is not persisted.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 129
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "--hostname"

    aput-object v3, v2, v4

    const-string v3, "--port"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "--timeout_millis"

    aput-object v3, v2, v1

    const-string v1, "      Options: [%s <hostname>] [%s <port>] [%s <millis>]\n"

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 132
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "      Each key/value is optional and must be specified to override the\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 133
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "      normal value, not specifying a key causes it to reset to the original.\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 134
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 135
    return-void
.end method
