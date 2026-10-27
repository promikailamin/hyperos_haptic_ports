.class public Lcom/android/server/app/GameManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "GameManagerShellCommand.java"


# static fields
.field public static final UNSUPPORTED_MODE_NUM:Ljava/lang/String;


# instance fields
.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 50
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/app/GameManagerShellCommand;->UNSUPPORTED_MODE_NUM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/app/GameManagerShellCommand;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static gameModeIntToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    .line 389
    const-string p0, ""

    return-object p0

    .line 383
    :cond_11
    const-string p0, "custom"

    return-object p0

    .line 379
    :cond_14
    const-string p0, "battery"

    return-object p0

    .line 381
    :cond_17
    const-string/jumbo p0, "performance"

    return-object p0

    .line 385
    :cond_1b
    const-string/jumbo p0, "standard"

    return-object p0

    .line 387
    :cond_1f
    const-string/jumbo p0, "unsupported"

    return-object p0
.end method


# virtual methods
.method public final isPackageGame(Ljava/lang/String;ILjava/io/PrintWriter;)Z
    .registers 8

    .line 102
    const-string v0, "Package "

    const/4 v1, 0x0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/app/GameManagerShellCommand;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x20000

    .line 103
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 104
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    move p0, v1

    :goto_12
    if-nez p0, :cond_2b

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not of game type, to use the game mode commands, it must specify game category in the manifest as android:appCategory=\"game\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_2b} :catch_2c

    :cond_2b
    return p0

    .line 112
    :catch_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not found for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 64
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 66
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_76

    goto :goto_5b

    :sswitch_13
    const-string/jumbo v1, "reset"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runResetGameModeConfig(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :catch_21
    move-exception p0

    goto :goto_60

    .line 66
    :sswitch_23
    const-string/jumbo v1, "mode"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runSetGameMode(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 66
    :sswitch_31
    const-string/jumbo v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runSetGameModeConfig(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 66
    :sswitch_3f
    const-string/jumbo v1, "list-modes"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runListGameModes(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 66
    :sswitch_4d
    const-string/jumbo v1, "list-configs"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runListGameModeConfigs(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 92
    :cond_5b
    :goto_5b
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5f} :catch_21

    return p0

    .line 95
    :goto_60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :sswitch_data_76
    .sparse-switch
        -0x47fb04be -> :sswitch_4d
        -0x2b7aaebf -> :sswitch_3f
        0x1bc62 -> :sswitch_31
        0x3339a3 -> :sswitch_23
        0x6761d4f -> :sswitch_13
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 4

    .line 394
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 395
    const-string v0, "Game manager (game) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    const-string v0, "  downscale"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    const-string v0, "      Deprecated. Please use `custom` command."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    const-string v0, "  list-configs <PACKAGE_NAME>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    const-string v0, "      Lists the current intervention configs of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    const-string v0, "  list-modes <PACKAGE_NAME>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    const-string v0, "      Lists the current selected and available game modes of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    const-string v0, "  mode [--user <USER_ID>] [1|2|3|4|standard|performance|battery|custom] <PACKAGE_NAME>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    const-string v0, "      Set app to run in the specified game mode, if supported."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    const-string v0, "      --user <USER_ID>: apply for the given user,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    const-string v1, "                        the current user is used when unspecified."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    const-string v2, "  set [intervention configs] <PACKAGE_NAME>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    const-string v2, "      Set app to run at custom mode using provided intervention configs"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    const-string v2, "      Intervention configs consists of:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const-string v2, "      --downscale [0.3|0.35|0.4|0.45|0.5|0.55|0.6|0.65"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    const-string v2, "                  |0.7|0.75|0.8|0.85|0.9|disable]: Set app to run at the"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    const-string v2, "                                                   specified scaling ratio."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    const-string v2, "      --fps: Integer value to set app to run at the specified fps,"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    const-string v2, "             if supported. 0 to disable."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const-string v2, "  reset [--mode [2|3|performance|battery] --user <USER_ID>] <PACKAGE_NAME>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    const-string v2, "      Resets the game mode of the app to device configuration."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    const-string v2, "      This should only be used to reset any override to non custom game mode"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v2, "      applied using the deprecated `set` command"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    const-string v2, "      --mode [2|3|performance|battery]: apply for the given mode,"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    const-string v2, "                                        resets all modes when unspecified."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runListGameModeConfigs(Ljava/io/PrintWriter;)I
    .registers 4

    .line 138
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 140
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/app/GameManagerShellCommand;->isPackageGame(Ljava/lang/String;ILjava/io/PrintWriter;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, -0x1

    return p0

    .line 143
    :cond_10
    const-string p0, "game"

    .line 144
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService;

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/android/server/app/GameManagerService;->getInterventionList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_33

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No interventions found for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a

    .line 152
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " interventions: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4a
    const/4 p0, 0x0

    return p0
.end method

.method public final runListGameModes(Ljava/io/PrintWriter;)I
    .registers 9

    .line 118
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 120
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/app/GameManagerShellCommand;->isPackageGame(Ljava/lang/String;ILjava/io/PrintWriter;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, -0x1

    return p0

    .line 123
    :cond_10
    const-string p0, "game"

    .line 124
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService;

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v2

    .line 125
    invoke-static {v2}, Lcom/android/server/app/GameManagerShellCommand;->gameModeIntToString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    new-instance v3, Ljava/util/StringJoiner;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/android/server/app/GameManagerService;->getAvailableGameModes(Ljava/lang/String;I)[I

    move-result-object p0

    array-length v1, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_2e
    if-ge v5, v1, :cond_3c

    aget v6, p0, v5

    .line 129
    invoke-static {v6}, Lcom/android/server/app/GameManagerShellCommand;->gameModeIntToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 131
    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " current mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", available game modes: ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runResetGameModeConfig(Ljava/io/PrintWriter;)I
    .registers 11

    const/4 v0, 0x0

    move-object v1, v0

    .line 320
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_72

    .line 321
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v4, "--mode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Duplicate option \'"

    const-string v6, "\'"

    if-nez v4, :cond_55

    const-string v4, "--user"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 339
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_38
    if-nez v0, :cond_3f

    .line 324
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 326
    :cond_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_55
    if-nez v1, :cond_5c

    .line 332
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 334
    :cond_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 344
    :cond_72
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_7d

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_81

    .line 346
    :cond_7d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 347
    :goto_81
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/app/GameManagerShellCommand;->isPackageGame(Ljava/lang/String;ILjava/io/PrintWriter;)Z

    move-result p0

    if-nez p0, :cond_88

    return v3

    .line 351
    :cond_88
    const-string p0, "game"

    .line 352
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService;

    const/4 v4, 0x0

    if-nez v1, :cond_97

    .line 354
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/app/GameManagerService;->resetGameModeConfigOverride(Ljava/lang/String;II)V

    return v4

    .line 358
    :cond_97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v6, :sswitch_data_fa

    :goto_ab
    move v5, v3

    goto :goto_d9

    :sswitch_ad
    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    goto :goto_ab

    :cond_b6
    move v5, v7

    goto :goto_d9

    :sswitch_b8
    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c1

    goto :goto_ab

    :cond_c1
    move v5, v8

    goto :goto_d9

    :sswitch_c3
    const-string v6, "battery"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cc

    goto :goto_ab

    :cond_cc
    const/4 v5, 0x1

    goto :goto_d9

    :sswitch_ce
    const-string/jumbo v6, "performance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d8

    goto :goto_ab

    :cond_d8
    move v5, v4

    :goto_d9
    packed-switch v5, :pswitch_data_10c

    .line 370
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid game mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 366
    :pswitch_f1
    invoke-virtual {p0, v2, v0, v7}, Lcom/android/server/app/GameManagerService;->resetGameModeConfigOverride(Ljava/lang/String;II)V

    goto :goto_f8

    .line 361
    :pswitch_f5
    invoke-virtual {p0, v2, v0, v8}, Lcom/android/server/app/GameManagerService;->resetGameModeConfigOverride(Ljava/lang/String;II)V

    :goto_f8
    return v4

    nop

    :sswitch_data_fa
    .sparse-switch
        -0x583cefd0 -> :sswitch_ce
        -0x13be51f3 -> :sswitch_c3
        0x32 -> :sswitch_b8
        0x33 -> :sswitch_ad
    .end sparse-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_f1
        :pswitch_f5
        :pswitch_f1
    .end packed-switch
.end method

.method public final runSetGameMode(Ljava/io/PrintWriter;)I
    .registers 19

    move-object/from16 v0, p1

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 160
    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 163
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_27

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_24
    move-object/from16 v4, p0

    goto :goto_2c

    .line 166
    :cond_27
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    goto :goto_24

    .line 167
    :goto_2c
    invoke-virtual {v4, v3, v1, v0}, Lcom/android/server/app/GameManagerShellCommand;->isPackageGame(Ljava/lang/String;ILjava/io/PrintWriter;)Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_34

    return v5

    .line 170
    :cond_34
    const-string v4, "game"

    .line 171
    invoke-static {v4}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 170
    invoke-static {v4}, Landroid/app/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;

    move-result-object v4

    .line 174
    invoke-interface {v4, v3, v1}, Landroid/app/IGameManagerService;->getAvailableGameModes(Ljava/lang/String;I)[I

    move-result-object v6

    .line 175
    array-length v7, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_46
    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v9, v7, :cond_57

    aget v15, v6, v9

    if-ne v15, v13, :cond_51

    move v11, v14

    goto :goto_54

    :cond_51
    if-ne v15, v12, :cond_54

    move v10, v14

    :cond_54
    :goto_54
    add-int/lit8 v9, v9, 0x1

    goto :goto_46

    .line 182
    :cond_57
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v9, 0x4

    sparse-switch v7, :sswitch_data_1a2

    :goto_66
    move v6, v5

    goto/16 :goto_c2

    :sswitch_69
    const-string/jumbo v7, "standard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    goto :goto_66

    :cond_73
    const/4 v6, 0x7

    goto :goto_c2

    :sswitch_75
    const-string v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    goto :goto_66

    :cond_7e
    const/4 v6, 0x6

    goto :goto_c2

    :sswitch_80
    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_89

    goto :goto_66

    :cond_89
    const/4 v6, 0x5

    goto :goto_c2

    :sswitch_8b
    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_94

    goto :goto_66

    :cond_94
    move v6, v9

    goto :goto_c2

    :sswitch_96
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9f

    goto :goto_66

    :cond_9f
    move v6, v12

    goto :goto_c2

    :sswitch_a1
    const-string v7, "battery"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_aa

    goto :goto_66

    :cond_aa
    move v6, v13

    goto :goto_c2

    :sswitch_ac
    const-string v7, "custom"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b5

    goto :goto_66

    :cond_b5
    move v6, v14

    goto :goto_c2

    :sswitch_b7
    const-string/jumbo v7, "performance"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c1

    goto :goto_66

    :cond_c1
    const/4 v6, 0x0

    .line 224
    :goto_c2
    const-string v7, " not supported by "

    const-string v15, "Game mode: "

    move/from16 p0, v5

    const-string v5, "`"

    const/16 v16, 0x0

    const-string v8, "` in game `"

    packed-switch v6, :pswitch_data_1c4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid game mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p0

    .line 187
    :pswitch_e6
    invoke-interface {v4, v3, v14, v1}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set game mode to `STANDARD` for user `"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_187

    :pswitch_108
    if-eqz v10, :cond_12b

    .line 207
    invoke-interface {v4, v3, v12, v1}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set game mode to `BATTERY` for user `"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_187

    .line 212
    :cond_12b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p0

    .line 219
    :pswitch_144
    invoke-interface {v4, v3, v9, v1}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set game mode to `CUSTOM` for user `"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_187

    :pswitch_165
    if-eqz v11, :cond_188

    .line 194
    invoke-interface {v4, v3, v13, v1}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set game mode to `PERFORMANCE` for user `"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_187
    return v16

    .line 199
    :cond_188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p0

    nop

    :sswitch_data_1a2
    .sparse-switch
        -0x583cefd0 -> :sswitch_b7
        -0x5069748f -> :sswitch_ac
        -0x13be51f3 -> :sswitch_a1
        0x31 -> :sswitch_96
        0x32 -> :sswitch_8b
        0x33 -> :sswitch_80
        0x34 -> :sswitch_75
        0x4e3d1ebd -> :sswitch_69
    .end sparse-switch

    :pswitch_data_1c4
    .packed-switch 0x0
        :pswitch_165
        :pswitch_144
        :pswitch_108
        :pswitch_e6
        :pswitch_165
        :pswitch_108
        :pswitch_144
        :pswitch_e6
    .end packed-switch
.end method

.method public final runSetGameModeConfig(Ljava/io/PrintWriter;)I
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x4

    move-object v5, v0

    move-object v6, v5

    :goto_4
    move v4, v1

    .line 241
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v2, -0x1

    if-eqz v1, :cond_108

    .line 242
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_168

    :goto_17
    move v7, v2

    goto :goto_43

    :sswitch_19
    const-string v3, "--downscale"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_17

    :cond_22
    const/4 v7, 0x3

    goto :goto_43

    :sswitch_24
    const-string v3, "--user"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_17

    :cond_2d
    const/4 v7, 0x2

    goto :goto_43

    :sswitch_2f
    const-string v3, "--mode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_17

    :cond_38
    const/4 v7, 0x1

    goto :goto_43

    :sswitch_3a
    const-string v3, "--fps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto :goto_17

    .line 287
    :cond_43
    :goto_43
    const-string v3, "Duplicate option \'"

    const-string v8, "\'"

    packed-switch v7, :pswitch_data_17a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_62
    if-nez v6, :cond_90

    .line 256
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 257
    const-string v3, "disable"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 258
    const-string v1, "-1"

    :goto_72
    move-object v6, v1

    goto :goto_5

    .line 261
    :cond_74
    :try_start_74
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_72

    .line 263
    :catch_78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid scaling ratio \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 268
    :cond_90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_a6
    if-nez v0, :cond_ae

    .line 248
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 250
    :cond_ae
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 244
    :pswitch_c4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :pswitch_ce
    if-nez v5, :cond_f2

    .line 274
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 276
    :try_start_d4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d7
    .catch Ljava/lang/NumberFormatException; {:try_start_d4 .. :try_end_d7} :catch_da

    move-object v5, v1

    goto/16 :goto_5

    .line 278
    :catch_da
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid frame rate: \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 282
    :cond_f2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_108
    move v1, v2

    .line 292
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_115

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_113
    move v3, v0

    goto :goto_11a

    .line 295
    :cond_115
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_113

    .line 296
    :goto_11a
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/app/GameManagerShellCommand;->isPackageGame(Ljava/lang/String;ILjava/io/PrintWriter;)Z

    move-result p0

    if-nez p0, :cond_121

    return v1

    .line 300
    :cond_121
    const-string p0, "game"

    .line 301
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService;

    if-nez p0, :cond_131

    .line 303
    const-string p0, "Failed to find GameManagerService on device"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_131
    move-object v1, p0

    .line 306
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/app/GameManagerService;->setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set custom mode intervention config for user `"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "` in game `"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "` as: `downscaling-ratio: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";fps-override: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "`"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    nop

    :sswitch_data_168
    .sparse-switch
        0x2902349 -> :sswitch_3a
        0x4f776f43 -> :sswitch_2f
        0x4f7b216b -> :sswitch_24
        0x6bb7c848 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_c4
        :pswitch_a6
        :pswitch_62
    .end packed-switch
.end method
