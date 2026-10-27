.class public Lcom/android/server/locales/LocaleManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "LocaleManagerShellCommand.java"


# instance fields
.field private final mBinderService:Landroid/app/ILocaleManager;


# direct methods
.method constructor <init>(Landroid/app/ILocaleManager;)V
    .registers 2
    .param p1, "localeManager"    # Landroid/app/ILocaleManager;

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    .line 36
    return-void
.end method

.method private parseLocales()Landroid/os/LocaleList;
    .registers 4

    .line 151
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getRemainingArgsCount()I

    move-result v0

    if-gtz v0, :cond_b

    .line 152
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0

    .line 154
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "args":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 156
    .local v1, "inputLocales":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    .line 157
    .local v2, "locales":Landroid/os/LocaleList;
    return-object v2
.end method

.method private runGetAppLocales()I
    .registers 8

    .line 116
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 117
    .local v0, "err":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_c3

    .line 120
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 122
    .local v2, "userId":I
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "option":Ljava/lang/String;
    if-nez v3, :cond_15

    .line 124
    goto :goto_26

    .line 126
    :cond_15
    const-string v4, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 127
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 128
    nop

    .line 134
    .end local v3    # "option":Ljava/lang/String;
    :goto_26
    :try_start_26
    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    invoke-interface {v3, v1, v2}, Landroid/app/ILocaleManager;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v3

    .line 135
    .local v3, "locales":Landroid/os/LocaleList;
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locales for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " are ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 136
    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_64} :catch_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_64} :catch_65

    .end local v3    # "locales":Landroid/os/LocaleList;
    goto :goto_a6

    .line 139
    :catch_65
    move-exception v3

    .line 140
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a7

    .line 137
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8b
    move-exception v3

    .line 138
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_a6
    nop

    .line 143
    .end local v2    # "userId":I
    :goto_a7
    nop

    .line 147
    const/4 v2, 0x0

    return v2

    .line 130
    .restart local v2    # "userId":I
    .local v3, "option":Ljava/lang/String;
    :cond_aa
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    .end local v2    # "userId":I
    .end local v3    # "option":Ljava/lang/String;
    :cond_c3
    const-string v2, "Error: no package specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    const/4 v2, -0x1

    return v2
.end method

.method private runSetAppLocales()I
    .registers 10

    .line 74
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 75
    .local v0, "err":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, -0x1

    if-eqz v1, :cond_ad

    .line 78
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 79
    .local v3, "userId":I
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v4

    .line 81
    .local v4, "locales":Landroid/os/LocaleList;
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "option":Ljava/lang/String;
    const/4 v6, 0x0

    if-nez v5, :cond_65

    .line 83
    nop

    .line 101
    .end local v5    # "option":Ljava/lang/String;
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    invoke-interface {v2, v1, v3, v4}, Landroid/app/ILocaleManager;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_62

    .line 104
    :catch_21
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for userId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 102
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_47
    move-exception v2

    .line 103
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_62
    nop

    .line 108
    .end local v3    # "userId":I
    .end local v4    # "locales":Landroid/os/LocaleList;
    :goto_63
    nop

    .line 112
    return v6

    .line 85
    .restart local v3    # "userId":I
    .restart local v4    # "locales":Landroid/os/LocaleList;
    .restart local v5    # "option":Ljava/lang/String;
    :cond_65
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_b4

    :cond_6c
    goto :goto_80

    :sswitch_6d
    const-string v6, "--locales"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    const/4 v6, 0x1

    goto :goto_81

    :sswitch_77
    const-string v7, "--user"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    goto :goto_81

    :goto_80
    move v6, v2

    :goto_81
    packed-switch v6, :pswitch_data_be

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :pswitch_9d
    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->parseLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 92
    goto :goto_ab

    .line 87
    :pswitch_a2
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 88
    nop

    .line 98
    .end local v5    # "option":Ljava/lang/String;
    :goto_ab
    goto/16 :goto_13

    .line 109
    .end local v3    # "userId":I
    .end local v4    # "locales":Landroid/os/LocaleList;
    :cond_ad
    const-string v3, "Error: no package specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    return v2

    nop

    :sswitch_data_b4
    .sparse-switch
        0x4f7b216b -> :sswitch_77
        0x66c823b9 -> :sswitch_6d
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_9d
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 39
    if-nez p1, :cond_7

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 42
    :cond_7
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_36

    :cond_f
    goto :goto_24

    :sswitch_10
    const-string/jumbo v1, "set-app-locales"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    goto :goto_24

    :sswitch_1b
    const-string v1, "get-app-locales"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :goto_24
    packed-switch v0, :pswitch_data_40

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 46
    :pswitch_2c
    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->runGetAppLocales()I

    move-result v0

    return v0

    .line 44
    :pswitch_31
    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->runSetAppLocales()I

    move-result v0

    return v0

    :sswitch_data_36
    .sparse-switch
        0x30dbb9b6 -> :sswitch_1b
        0x6724b4c2 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 55
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 56
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Locale manager (locale) shell commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string v1, "  set-app-locales <PACKAGE_NAME> [--user <USER_ID>] [--locales <LOCALE_INFO>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    const-string v1, "      Set the locales for the specified app."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    const-string v1, "      --user <USER_ID>: apply for the given user, the current user is used when unspecified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v1, "      --locales <LOCALE_INFO>: The language tags of locale to be included as a single String separated by commas"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string v1, "                 Empty locale list is used when unspecified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    const-string v1, "                 eg. en,en-US,hi "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v1, "  get-app-locales <PACKAGE_NAME> [--user <USER_ID>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string v1, "      Get the locales for the specified app."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const-string v1, "      --user <USER_ID>: get for the given user, the current user is used when unspecified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    return-void
.end method
