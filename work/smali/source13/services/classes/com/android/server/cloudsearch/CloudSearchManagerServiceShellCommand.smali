.class public Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "CloudSearchManagerServiceShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/android/server/cloudsearch/CloudSearchManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/cloudsearch/CloudSearchManagerService;

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->mService:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    .line 36
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 11
    .param p1, "cmd"    # Ljava/lang/String;

    .line 40
    if-nez p1, :cond_7

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 43
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 44
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_9e

    :cond_14
    goto :goto_20

    :pswitch_15
    const-string/jumbo v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v3

    goto :goto_21

    :goto_20
    move v1, v2

    :goto_21
    packed-switch v1, :pswitch_data_a4

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 46
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "what":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_aa

    :cond_34
    goto :goto_3f

    :pswitch_35
    const-string/jumbo v4, "temporary-service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    move v2, v3

    :goto_3f
    packed-switch v2, :pswitch_data_b0

    goto :goto_9b

    .line 49
    :pswitch_43
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 50
    .local v2, "userId":I
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "serviceName":Ljava/lang/String;
    if-nez v4, :cond_5c

    .line 52
    iget-object v5, p0, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->mService:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->resetTemporaryService(I)V

    .line 53
    const-string v5, "CloudSearchService temporarily reset. "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    return v3

    .line 56
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 57
    .local v5, "duration":I
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "services":[Ljava/lang/String;
    array-length v7, v6

    if-nez v7, :cond_6e

    .line 59
    return v3

    .line 61
    :cond_6e
    iget-object v7, p0, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->mService:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-virtual {v7, v2, v6, v5}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->setTemporaryServices(I[Ljava/lang/String;I)V

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CloudSearchService temporarily set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    nop

    .line 69
    .end local v1    # "what":Ljava/lang/String;
    .end local v2    # "userId":I
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "duration":I
    .end local v6    # "services":[Ljava/lang/String;
    :goto_9b
    nop

    .line 73
    return v3

    nop

    :pswitch_data_9e
    .packed-switch 0x1bc62
        :pswitch_15
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_29
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x77724739
        :pswitch_35
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_43
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 78
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 79
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_6
    const-string v2, "CloudSearchManagerService commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v2, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v2, "    Temporarily (for DURATION ms) changes the service implemtation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v2, "    To reset, call with just the USER_ID argument."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_30

    .line 87
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 88
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_2f
    return-void

    .line 78
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
