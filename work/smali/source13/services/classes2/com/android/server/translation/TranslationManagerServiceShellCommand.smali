.class public Lcom/android/server/translation/TranslationManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "TranslationManagerServiceShellCommand.java"


# instance fields
.field private final mService:Lcom/android/server/translation/TranslationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/translation/TranslationManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/translation/TranslationManagerService;

    .line 27
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->mService:Lcom/android/server/translation/TranslationManagerService;

    .line 29
    return-void
.end method

.method private requestSet(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "what":Ljava/lang/String;
    const-string/jumbo v1, "temporary-service"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->setTemporaryService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 48
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    const/4 v1, -0x1

    return v1
.end method

.method private setTemporaryService(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 53
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "serviceName":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 56
    iget-object v3, p0, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->mService:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/translation/TranslationManagerService;->resetTemporaryService(I)V

    .line 57
    return v2

    .line 59
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 60
    .local v3, "duration":I
    iget-object v4, p0, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->mService:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v4, v0, v1, v3}, Lcom/android/server/translation/TranslationManagerService;->setTemporaryService(ILjava/lang/String;I)V

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TranslationService temporarily set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 33
    if-nez p1, :cond_7

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 36
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 37
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "set"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 38
    invoke-direct {p0, v0}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->requestSet(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 40
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public onHelp()V
    .registers 4

    .line 68
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 69
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_6
    const-string v2, "Translation Service (translation) commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string v2, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v2, "    Temporarily (for DURATION ms) changes the service implementation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v2, "    To reset, call with just the USER_ID argument."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_30

    .line 77
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 78
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_2f
    return-void

    .line 68
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :catchall_30
    move-exception v0

    if-eqz v1, :cond_3b

    :try_start_33
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v0
.end method
