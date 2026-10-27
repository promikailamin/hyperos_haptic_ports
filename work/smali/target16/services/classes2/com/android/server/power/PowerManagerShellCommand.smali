.class public Lcom/android/server/power/PowerManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PowerManagerShellCommand.java"


# instance fields
.field public final mAlarmListener:Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;

.field public mAlarmManager:Landroid/app/IAlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mService:Lcom/android/server/power/PowerManagerService$BinderService;

.field public final mWakelocks:Landroid/util/ArrayMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerShellCommand;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/power/PowerManagerShellCommand;)Lcom/android/server/power/PowerManagerService$BinderService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$BinderService;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mWakelocks:Landroid/util/ArrayMap;

    .line 76
    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 78
    const-string p1, "alarm"

    .line 79
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmManager:Landroid/app/IAlarmManager;

    .line 80
    new-instance p1, Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;

    invoke-direct {p1, p0}, Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;-><init>(Lcom/android/server/power/PowerManagerShellCommand;)V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmListener:Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;

    return-void
.end method


# virtual methods
.method public final getWakelock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .registers 7

    .line 266
    invoke-virtual {p0, p2}, Lcom/android/server/power/PowerManagerShellCommand;->stringToWakelockType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_55

    .line 270
    new-instance p2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mWakelocks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_54

    .line 275
    iget-object v1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerManagerShellCommand["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-virtual {v1, v0, v2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    .line 279
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mWakelocks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_54
    return-object v1

    .line 268
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wakelock type invalid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 86
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 89
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 91
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_be

    goto/16 :goto_a3

    :sswitch_14
    const-string/jumbo v1, "set-prox"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 103
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetProx()I

    move-result p0

    return p0

    :catch_22
    move-exception p0

    goto/16 :goto_a8

    .line 91
    :sswitch_25
    const-string/jumbo v1, "set-mode"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 95
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetMode()I

    move-result p0

    return p0

    .line 91
    :sswitch_33
    const-string/jumbo v1, "set-fixed-performance-mode-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 97
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetFixedPerformanceModeEnabled()I

    move-result p0

    return p0

    .line 91
    :sswitch_41
    const-string/jumbo v1, "suppress-ambient-display"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 99
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSuppressAmbientDisplay()I

    move-result p0

    return p0

    .line 91
    :sswitch_4f
    const-string v1, "list-ambient-display-suppression-tokens"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 101
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runListAmbientDisplaySuppressionTokens()I

    move-result p0

    return p0

    .line 91
    :sswitch_5c
    const-string/jumbo v1, "sleep"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 109
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSleep()I

    move-result p0

    return p0

    .line 91
    :sswitch_6a
    const-string/jumbo v1, "set-wakelock"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    const/4 p1, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerShellCommand;->runSetWakelock(Z)I

    move-result p0

    return p0

    .line 91
    :sswitch_79
    const-string/jumbo v1, "set-adaptive-power-saver-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 93
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetAdaptiveEnabled()I

    move-result p0

    return p0

    .line 91
    :sswitch_87
    const-string/jumbo v1, "wakeup"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 111
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runWakeUp()I

    move-result p0

    return p0

    .line 91
    :sswitch_95
    const-string/jumbo v1, "set-face-down-detector"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 107
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetFaceDownDetector()I

    move-result p0

    return p0

    .line 113
    :cond_a3
    :goto_a3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_a7} :catch_22

    return p0

    .line 116
    :goto_a8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :sswitch_data_be
    .sparse-switch
        -0x3a430f94 -> :sswitch_95
        -0x2f6638c1 -> :sswitch_87
        -0x1fb0eb0b -> :sswitch_79
        0x59779da -> :sswitch_6a
        0x6872ed7 -> :sswitch_5c
        0x22dac243 -> :sswitch_4f
        0x2e2d7375 -> :sswitch_41
        0x3d8ace98 -> :sswitch_33
        0x519c0c2e -> :sswitch_25
        0x519d75f6 -> :sswitch_14
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 4

    .line 407
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 408
    const-string v0, "Power manager (power) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const-string v1, "  set-adaptive-power-saver-enabled [true|false]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    const-string v1, "    enables or disables adaptive power saver."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    const-string v1, "  set-mode MODE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    const-string v1, "    sets the power mode of the device to MODE."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    const-string v1, "    1 turns low power mode on and 0 turns low power mode off."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const-string v1, "  set-fixed-performance-mode-enabled [true|false]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    const-string v1, "    enables or disables fixed performance mode"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    const-string v1, "    note: this will affect system performance and should only be used"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v1, "          during development"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    const-string v1, "  suppress-ambient-display <token> [none|all|dream|aod|true|false]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    const-string v1, "    suppresses the current ambient display configuration and disables"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    const-string v1, "    ambient display"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    const-string v1, "  list-ambient-display-suppression-tokens"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    const-string v1, "    prints the tokens used to suppress ambient display"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    const-string v1, "  set-prox [list|acquire|release] (-d <display_id>)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    const-string v1, "    Acquires the proximity sensor wakelock. Wakelock is associated with"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    const-string v1, "    a specific display if specified. \'list\' lists wakelocks previously"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    const-string v2, "    created by set-prox including their held status."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    const-string v2, "  set-wakelock [list|acquire|release] (-d <display_id>) [wakelock type]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    const-string v2, "    Acquires the specified wakelock. Wakelock is associated with"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    const-string v1, "    created by set-wakelock including their held status."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    const-string v1, "    Available wakelocks are described in PowerManager.*_WAKE_LOCK."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    const-string v1, "  set-face-down-detector [true|false]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    const-string v1, "    sets whether we use face down detector timeouts or not"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    const-string v1, "  sleep (--disable-wakelocks)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    const-string v1, "    requests to sleep the device"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    const-string v1, "      --disable-wakelocks: Force disable wakelocks before going to sleep."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    const-string v1, "  wakeup (<delay>) (--restore-wakelocks)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    const-string v1, "    requests to wake up the device. If a delay of milliseconds is specified,"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    const-string v1, "    alarm manager will schedule a wake up after the delay."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    const-string v1, "      --restore-wakelocks: Restore force-disabled wakelocks after wakeup."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    const-string v1, "        It will not restore wakelocks that are generically disabled."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 451
    invoke-static {p0, v0}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final runListAmbientDisplaySuppressionTokens()I
    .registers 3

    .line 190
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 191
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$BinderService;->getAmbientDisplaySuppressionTokens()Ljava/util/List;

    move-result-object p0

    .line 192
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 193
    const-string/jumbo p0, "none"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a

    .line 195
    :cond_17
    const-string v1, ", "

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "[%s]"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2a
    const/4 p0, 0x0

    return p0
.end method

.method public final runSetAdaptiveEnabled()I
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/power/PowerManagerService$BinderService;->setAdaptivePowerSaveEnabled(Z)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetFaceDownDetector()I
    .registers 4

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$BinderService;->setUseFaceDownDetector(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    const/4 p0, 0x0

    return p0

    :catch_f
    move-exception v0

    .line 307
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runSetFixedPerformanceModeEnabled()I
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 142
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    .line 140
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/PowerManagerService$BinderService;->setPowerModeChecked(IZ)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 144
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 145
    const-string v1, "Failed to set FIXED_PERFORMANCE mode"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    const-string v1, "This is likely because Power HAL AIDL is not implemented on this device"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    if-eqz v0, :cond_23

    const/4 p0, 0x0

    return p0

    :cond_23
    const/4 p0, -0x1

    return p0
.end method

.method public final runSetMode()I
    .registers 4

    .line 127
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 130
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_c} :catch_18

    .line 135
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->setPowerSaveModeEnabled(Z)Z

    return v1

    :catch_18
    move-exception p0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runSetProx()I
    .registers 2

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetWakelock(Z)I

    move-result p0

    return p0
.end method

.method public final runSetWakelock(Z)I
    .registers 8

    .line 206
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_112

    :goto_19
    move v1, v5

    goto :goto_3c

    :sswitch_1b
    const-string/jumbo v2, "release"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_19

    :cond_25
    const/4 v1, 0x2

    goto :goto_3c

    :sswitch_27
    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_19

    :cond_30
    move v1, v3

    goto :goto_3c

    :sswitch_32
    const-string v2, "acquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_19

    :cond_3b
    move v1, v4

    :goto_3c
    packed-switch v1, :pswitch_data_120

    .line 224
    const-string p0, "Error: Allowed options are \'list\' \'acquire\' and \'release\'."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_45
    move v3, v4

    goto :goto_a1

    .line 210
    :pswitch_47
    const-string p1, "Wakelocks:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p1, v4

    .line 211
    :goto_4d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mWakelocks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge p1, v1, :cond_a0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerShellCommand;->mWakelocks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", wakelock type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerShellCommand;->mWakelocks:Landroid/util/ArrayMap;

    .line 213
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->getLockLevelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerShellCommand;->mWakelocks:Landroid/util/ArrayMap;

    .line 214
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_a0
    return v4

    :goto_a1
    :pswitch_a1
    move v1, v5

    .line 230
    :goto_a2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ee

    .line 231
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v1, "-d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    .line 233
    :cond_c8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_ec

    .line 236
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: Specified displayId ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") must be a non-negative int."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_ec
    move v1, v2

    goto :goto_a2

    :cond_ee
    if-eqz p1, :cond_f7

    const/16 p1, 0x20

    .line 251
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->getLockLevelString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_101

    .line 253
    :cond_f7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 254
    :goto_101
    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/PowerManagerShellCommand;->getWakelock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    if-eqz v3, :cond_10b

    .line 257
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_10e

    .line 259
    :cond_10b
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 261
    :goto_10e
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v4

    :sswitch_data_112
    .sparse-switch
        -0x45649f2a -> :sswitch_32
        0x32b09e -> :sswitch_27
        0x41012807 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_47
        :pswitch_45
    .end packed-switch
.end method

.method public final runSleep()I
    .registers 6

    .line 315
    const-string v0, "--disable-wakelocks"

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 317
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 318
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setForceDisableWakelocks(Z)V

    .line 321
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 321
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/server/power/PowerManagerService$BinderService;->goToSleep(JII)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_23

    return v4

    :catch_23
    move-exception v0

    .line 326
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runSuppressAmbientDisplay()I
    .registers 10

    .line 152
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 155
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1a
    if-ge v5, v3, :cond_5e

    aget-object v7, v2, v5

    .line 159
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_7e

    goto :goto_5b

    :sswitch_26
    const-string v8, "false"

    :goto_28
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    goto :goto_5b

    :catch_2c
    move-exception p0

    goto :goto_64

    :sswitch_2e
    const-string v8, "dream"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    or-int/lit8 v6, v6, 0x1

    goto :goto_5b

    :sswitch_39
    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    goto :goto_5a

    :sswitch_43
    const-string/jumbo v8, "none"

    goto :goto_28

    :sswitch_47
    const-string v8, "aod"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    or-int/lit8 v6, v6, 0x2

    goto :goto_5b

    :sswitch_52
    const-string v8, "all"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    :goto_5a
    const/4 v6, 0x3

    :cond_5b
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 176
    :cond_5e
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0, v1, v6}, Lcom/android/server/power/PowerManagerService$BinderService;->suppressAmbientDisplayBehavior(Ljava/lang/String;I)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_63} :catch_2c

    return v4

    .line 182
    :goto_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :sswitch_data_7e
    .sparse-switch
        0x179a1 -> :sswitch_52
        0x179f6 -> :sswitch_47
        0x33af38 -> :sswitch_43
        0x36758e -> :sswitch_39
        0x5b68803 -> :sswitch_2e
        0x5cb1923 -> :sswitch_26
    .end sparse-switch
.end method

.method public final runWakeUp()I
    .registers 27

    move-object/from16 v0, p0

    .line 334
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    .line 337
    :cond_9
    :goto_9
    invoke-virtual {v0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 338
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 339
    const-string v6, "--restore-wakelocks"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v4, 0x1

    goto :goto_9

    .line 341
    :cond_1d
    invoke-virtual {v5}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v6

    new-instance v7, Lcom/android/server/power/PowerManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/power/PowerManagerShellCommand$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v2, v5

    goto :goto_9

    .line 345
    :cond_2e
    const-string v5, "Error: "

    const/4 v6, -0x1

    if-nez v2, :cond_68

    .line 347
    :try_start_33
    iget-object v7, v0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-string v11, "PowerManagerShellCommand"

    iget-object v0, v0, Lcom/android/server/power/PowerManagerShellCommand;->mContext:Landroid/content/Context;

    .line 351
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x2

    .line 347
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_45} :catch_54

    if-eqz v4, :cond_10f

    .line 357
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 358
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 359
    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setForceDisableWakelocks(Z)V

    goto/16 :goto_10f

    :catch_54
    move-exception v0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    .line 364
    :cond_68
    :try_start_68
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_6c} :catch_123

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-gez v2, :cond_87

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Can\'t set a negative delay: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    .line 373
    :cond_87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long v14, v9, v7

    .line 374
    iget-object v2, v0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmManager:Landroid/app/IAlarmManager;

    if-nez v2, :cond_9d

    .line 377
    const-string v2, "alarm"

    .line 378
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 377
    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmManager:Landroid/app/IAlarmManager;

    .line 381
    :cond_9d
    :try_start_9d
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 382
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 384
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_cf

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not an android package. Cannot schedule a delayed wakeup on behalf of it."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :catch_cd
    move-exception v0

    goto :goto_110

    .line 390
    :cond_cf
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Schedule an alarm to wakeup in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms, on behalf of "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 390
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    iget-object v7, v0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmListener:Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;

    iput-boolean v4, v7, Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;->restoreWakelocks:Z

    .line 393
    iget-object v11, v0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmManager:Landroid/app/IAlarmManager;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmListener:Lcom/android/server/power/PowerManagerShellCommand$PowerManagerShellCommandAlarmListener;

    const-string v23, "PowerManagerShellCommand"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x40

    const/16 v21, 0x0

    move-object/from16 v22, v0

    invoke-interface/range {v11 .. v25}, Landroid/app/IAlarmManager;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_10f} :catch_cd

    :cond_10f
    :goto_10f
    return v3

    .line 398
    :goto_110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :catch_123
    move-exception v0

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Can\'t parse arg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as a long: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6
.end method

.method public final stringToWakelockType(Ljava/lang/String;)I
    .registers 5

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p0, :sswitch_data_90

    :goto_d
    move p0, v2

    goto/16 :goto_74

    :sswitch_10
    const-string p0, "SCREEN_TIMEOUT_OVERRIDE_WAKE_LOCK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_d

    :cond_19
    const/16 p0, 0x8

    goto/16 :goto_74

    :sswitch_1d
    const-string p0, "SCREEN_DIM_WAKE_LOCK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_d

    :cond_26
    const/4 p0, 0x7

    goto :goto_74

    :sswitch_28
    const-string p0, "DRAW_WAKE_LOCK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_d

    :cond_31
    move p0, v0

    goto :goto_74

    :sswitch_33
    const-string p0, "PARTIAL_SLEEP_WAKE_LOCK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_d

    :cond_3c
    const/4 p0, 0x5

    goto :goto_74

    :sswitch_3e
    const-string p0, "PARTIAL_WAKE_LOCK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto :goto_d

    :cond_47
    const/4 p0, 0x4

    goto :goto_74

    :sswitch_49
    const-string p0, "SCREEN_BRIGHT_WAKE_LOCK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto :goto_d

    :cond_52
    const/4 p0, 0x3

    goto :goto_74

    :sswitch_54
    const-string p0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto :goto_d

    :cond_5d
    const/4 p0, 0x2

    goto :goto_74

    :sswitch_5f
    const-string p0, "FULL_WAKE_LOCK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    goto :goto_d

    :cond_68
    move p0, v1

    goto :goto_74

    :sswitch_6a
    const-string p0, "DOZE_WAKE_LOCK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73

    goto :goto_d

    :cond_73
    const/4 p0, 0x0

    :goto_74
    packed-switch p0, :pswitch_data_b6

    return v2

    :pswitch_78
    const/16 p0, 0x100

    return p0

    :pswitch_7b
    return v0

    :pswitch_7c
    const/16 p0, 0x80

    return p0

    :pswitch_7f
    const/16 p0, 0x200

    return p0

    :pswitch_82
    return v1

    :pswitch_83
    const/16 p0, 0xa

    return p0

    :pswitch_86
    const/16 p0, 0x20

    return p0

    :pswitch_89
    const/16 p0, 0x1a

    return p0

    :pswitch_8c
    const/16 p0, 0x40

    return p0

    nop

    :sswitch_data_90
    .sparse-switch
        -0x2b4fd123 -> :sswitch_6a
        -0x29f83eca -> :sswitch_5f
        -0x29c482bd -> :sswitch_54
        -0x1a2c6cac -> :sswitch_49
        -0xf36e278 -> :sswitch_3e
        0x10a19480 -> :sswitch_33
        0x57f4adab -> :sswitch_28
        0x5a8b4d3c -> :sswitch_1d
        0x7d7265a4 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_7b
        :pswitch_78
    .end packed-switch
.end method
