.class Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "WebViewUpdateServiceShellCommand.java"


# instance fields
.field final mInterface:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method constructor <init>(Landroid/webkit/IWebViewUpdateService;)V
    .registers 2
    .param p1, "service"    # Landroid/webkit/IWebViewUpdateService;

    .line 27
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    .line 29
    return-void
.end method

.method private enableMultiProcess(Z)I
    .registers 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 78
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v1, p1}, Landroid/webkit/IWebViewUpdateService;->enableMultiProcess(Z)V

    .line 79
    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    return v1
.end method

.method private setWebViewImplementation()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 57
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "shellChosenPackage":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 59
    const-string v3, "Failed to switch, no PACKAGE provided."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->helpSetWebViewImplementation()V

    .line 62
    return v2

    .line 64
    :cond_19
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v3, v1}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "newPackage":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2c

    .line 66
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    return v5

    .line 69
    :cond_2c
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v3, v4, v2

    const-string v5, "Failed to switch to %s, the WebView implementation is now provided by %s."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    return v2
.end method


# virtual methods
.method public helpSetWebViewImplementation()V
    .registers 3

    .line 84
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 85
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "  set-webview-implementation PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "    Set the WebView implementation to the specified package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 33
    if-nez p1, :cond_7

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 37
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 39
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_66

    :cond_15
    goto :goto_35

    :sswitch_16
    const-string v2, "disable-multiprocess"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x2

    goto :goto_36

    :sswitch_20
    const-string/jumbo v2, "set-webview-implementation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v3

    goto :goto_36

    :sswitch_2b
    const-string v2, "enable-multiprocess"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v4

    goto :goto_36

    :goto_35
    move v2, v1

    :goto_36
    packed-switch v2, :pswitch_data_74

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto :goto_4d

    .line 45
    :pswitch_3e
    invoke-direct {p0, v3}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableMultiProcess(Z)I

    move-result v1

    return v1

    .line 43
    :pswitch_43
    invoke-direct {p0, v4}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableMultiProcess(Z)I

    move-result v1

    return v1

    .line 41
    :pswitch_48
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->setWebViewImplementation()I

    move-result v1
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_4c} :catch_4e

    return v1

    .line 47
    :goto_4d
    return v1

    .line 49
    :catch_4e
    move-exception v2

    .line 50
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    :sswitch_data_66
    .sparse-switch
        -0x6ebb0ce0 -> :sswitch_2b
        -0x52550e2f -> :sswitch_20
        0x19ffa1db -> :sswitch_16
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_48
        :pswitch_43
        :pswitch_3e
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 91
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 92
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "WebView updater commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->helpSetWebViewImplementation()V

    .line 97
    const-string v1, "  enable-multiprocess"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    Enable multi-process mode for WebView"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v1, "  disable-multiprocess"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "    Disable multi-process mode for WebView"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 102
    return-void
.end method
