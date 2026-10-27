.class public Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "WallpaperEffectsGenerationManagerServiceShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 35
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->mService:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 37
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 10
    .param p1, "cmd"    # Ljava/lang/String;

    .line 41
    if-nez p1, :cond_7

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 44
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 45
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_94

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
    packed-switch v1, :pswitch_data_9a

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 47
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "what":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_a0

    :cond_34
    goto :goto_3f

    :pswitch_35
    const-string/jumbo v4, "temporary-service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    move v2, v3

    :goto_3f
    packed-switch v2, :pswitch_data_a6

    goto :goto_91

    .line 50
    :pswitch_43
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 51
    .local v2, "userId":I
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "serviceName":Ljava/lang/String;
    if-nez v4, :cond_5c

    .line 53
    iget-object v5, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->mService:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->resetTemporaryService(I)V

    .line 54
    const-string v5, "WallpaperEffectsGenerationService temporarily reset. "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    return v3

    .line 57
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 58
    .local v5, "duration":I
    iget-object v6, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->mService:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->setTemporaryService(ILjava/lang/String;I)V

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WallpaperEffectsGenerationService temporarily set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    nop

    .line 65
    .end local v1    # "what":Ljava/lang/String;
    .end local v2    # "userId":I
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "duration":I
    :goto_91
    nop

    .line 69
    return v3

    nop

    :pswitch_data_94
    .packed-switch 0x1bc62
        :pswitch_15
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_29
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x77724739
        :pswitch_35
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_43
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 74
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 75
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_6
    const-string v2, "WallpaperEffectsGenerationService commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v2, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v2, "    Temporarily (for DURATION ms) changes the service implemtation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v2, "    To reset, call with just the USER_ID argument."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_30

    .line 83
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 84
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_2f
    return-void

    .line 74
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
