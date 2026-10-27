.class Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;
.super Landroid/os/ShellCommand;
.source "NetworkWatchlistShellCommand.java"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;


# direct methods
.method constructor <init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;Landroid/content/Context;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/net/watchlist/NetworkWatchlistService;
    .param p2, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mContext:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 41
    return-void
.end method

.method private runForceGenerateReport()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 90
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 93
    .local v1, "ident":J
    const/4 v3, -0x1

    :try_start_9
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 94
    const-string v4, "Error: Cannot force generate report under production config"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_41
    .catchall {:try_start_9 .. :try_end_18} :catchall_3f

    .line 95
    nop

    .line 105
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    return v3

    .line 97
    :cond_1d
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "network_watchlist_last_report_time"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 99
    iget-object v4, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->forceReportWatchlistForTest(J)Z

    .line 100
    const-string v4, "Success!"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_39} :catch_41
    .catchall {:try_start_1d .. :try_end_39} :catchall_3f

    .line 105
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    nop

    .line 107
    const/4 v3, 0x0

    return v3

    .line 105
    :catchall_3f
    move-exception v3

    goto :goto_5d

    .line 101
    :catch_41
    move-exception v4

    .line 102
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_3f

    .line 103
    nop

    .line 105
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    return v3

    .line 105
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_5d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    throw v3
.end method

.method private runSetTestConfig()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 71
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "configXmlPath":Ljava/lang/String;
    const-string/jumbo v3, "r"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 73
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v3, :cond_29

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: can\'t open input file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    return v1

    .line 77
    :cond_29
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_4a

    .line 78
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_2e
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/net/watchlist/WatchlistConfig;->setTestMode(Ljava/io/InputStream;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_40

    .line 79
    :try_start_35
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 80
    .end local v4    # "inputStream":Ljava/io/InputStream;
    const-string v4, "Success!"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3d} :catch_4a

    .line 84
    .end local v2    # "configXmlPath":Ljava/lang/String;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 85
    const/4 v1, 0x0

    return v1

    .line 77
    .restart local v2    # "configXmlPath":Ljava/lang/String;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catchall_40
    move-exception v5

    :try_start_41
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v6

    :try_start_46
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;
    :goto_49
    throw v5
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4a} :catch_4a

    .line 81
    .end local v2    # "configXmlPath":Ljava/lang/String;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;
    :catch_4a
    move-exception v2

    .line 82
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 45
    if-nez p1, :cond_7

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 49
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 51
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_56

    :cond_13
    goto :goto_29

    :sswitch_14
    const-string v2, "force-generate-report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_2a

    :sswitch_1e
    const-string/jumbo v2, "set-test-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    goto :goto_2a

    :goto_29
    move v2, v1

    :goto_2a
    packed-switch v2, :pswitch_data_60

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto :goto_3c

    .line 55
    :pswitch_32
    invoke-direct {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->runForceGenerateReport()I

    move-result v1

    return v1

    .line 53
    :pswitch_37
    invoke-direct {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->runSetTestConfig()I

    move-result v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3b} :catch_3d

    return v1

    .line 57
    :goto_3c
    return v1

    .line 59
    :catch_3d
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .end local v2    # "e":Ljava/lang/Exception;
    return v1

    nop

    :sswitch_data_56
    .sparse-switch
        0x68c30bf2 -> :sswitch_1e
        0x6e84e1aa -> :sswitch_14
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_37
        :pswitch_32
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 112
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 113
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Network watchlist manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v1, "  set-test-config your_watchlist_config.xml"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v1, "    Set network watchlist test config file."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v1, "  force-generate-report"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v1, "    Force generate watchlist test report."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    return-void
.end method
