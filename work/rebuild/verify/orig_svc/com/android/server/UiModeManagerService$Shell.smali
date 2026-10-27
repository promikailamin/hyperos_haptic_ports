.class public Lcom/android/server/UiModeManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UiModeManagerService.java"


# instance fields
.field public final mInterface:Landroid/app/IUiModeManager;


# direct methods
.method public static bridge synthetic -$$Nest$smnightModeToStr(II)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/IUiModeManager;)V
    .registers 2

    .line 2515
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2516
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    return-void
.end method

.method public static nightModeToStr(II)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_c

    goto :goto_16

    :cond_c
    if-nez p1, :cond_11

    .line 2630
    const-string p0, "custom_schedule"

    return-object p0

    :cond_11
    if-ne p1, v0, :cond_16

    .line 2633
    const-string p0, "custom_bedtime"

    return-object p0

    .line 2636
    :cond_16
    :goto_16
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 2623
    :cond_1a
    const-string/jumbo p0, "yes"

    return-object p0

    .line 2625
    :cond_1e
    const-string/jumbo p0, "no"

    return-object p0

    .line 2627
    :cond_22
    const-string p0, "auto"

    return-object p0
.end method

.method public static strToNightMode(Ljava/lang/String;)I
    .registers 7

    .line 2641
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_52

    :goto_f
    move p0, v5

    goto :goto_49

    :sswitch_11
    const-string v0, "custom_schedule"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 p0, 0x4

    goto :goto_49

    :sswitch_1c
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_f

    :cond_25
    move p0, v1

    goto :goto_49

    :sswitch_27
    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_f

    :cond_31
    move p0, v2

    goto :goto_49

    :sswitch_33
    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_f

    :cond_3d
    move p0, v3

    goto :goto_49

    :sswitch_3f
    const-string v0, "custom_bedtime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_f

    :cond_48
    move p0, v4

    :goto_49
    packed-switch p0, :pswitch_data_68

    return v5

    :pswitch_4d
    return v4

    :pswitch_4e
    return v2

    :pswitch_4f
    return v3

    :pswitch_50
    return v1

    nop

    :sswitch_data_52
    .sparse-switch
        -0x2d2c2800 -> :sswitch_3f
        0xdc1 -> :sswitch_33
        0x1d2e7 -> :sswitch_27
        0x2dddaf -> :sswitch_1c
        0x9cc87a5 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_50
    .end packed-switch
.end method

.method public static strToNightModeCustomType(Ljava/lang/String;)I
    .registers 2

    .line 2657
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const-string v0, "custom_bedtime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "custom_schedule"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, -0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final handleCarMode()I
    .registers 5

    .line 2668
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2669
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 2671
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    return v2

    .line 2675
    :cond_f
    const-string/jumbo v3, "yes"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2676
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    const-string v1, ""

    invoke-interface {v0, v2, v2, v1}, Landroid/app/IUiModeManager;->enableCarMode(IILjava/lang/String;)V

    .line 2677
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    return v2

    .line 2679
    :cond_23
    const-string/jumbo v3, "no"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2680
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v0, v2}, Landroid/app/IUiModeManager;->disableCarMode(I)V

    .line 2681
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    return v2

    .line 2684
    :cond_35
    const-string p0, "Error: mode must be \'yes\', or \'no\'"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final handleCustomTime()I
    .registers 5

    .line 2559
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2561
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCustomTime()V

    return v1

    .line 2564
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string v2, "end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2574
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "command must be in [start|end]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 2566
    :cond_2a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2567
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-static {v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$smtoMilliSeconds(Ljava/time/LocalTime;)J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Landroid/app/IUiModeManager;->setCustomNightModeStart(J)V

    return v1

    .line 2570
    :cond_3c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2571
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-static {v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$smtoMilliSeconds(Ljava/time/LocalTime;)J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Landroid/app/IUiModeManager;->setCustomNightModeEnd(J)V

    return v1
.end method

.method public final handleNightMode()I
    .registers 5

    .line 2587
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2588
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 2590
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    return v2

    .line 2594
    :cond_f
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->strToNightMode(Ljava/lang/String;)I

    move-result v3

    .line 2595
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->strToNightModeCustomType(Ljava/lang/String;)I

    move-result v1

    if-ltz v3, :cond_2a

    .line 2597
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v0, v3}, Landroid/app/IUiModeManager;->setNightMode(I)V

    const/4 v0, 0x3

    if-ne v3, v0, :cond_26

    .line 2599
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v0, v1}, Landroid/app/IUiModeManager;->setNightModeCustomType(I)V

    .line 2601
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    return v2

    .line 2604
    :cond_2a
    const-string p0, "Error: mode must be \'yes\', \'no\', or \'auto\', or \'custom_schedule\', or \'custom_bedtime\'"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 2537
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2541
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x17fd4

    if-eq v0, v1, :cond_39

    const v1, 0x3652cd

    if-eq v0, v1, :cond_2b

    const v1, 0x63f6418

    if-eq v0, v1, :cond_1b

    goto :goto_46

    :cond_1b
    const-string/jumbo v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2543
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleNightMode()I

    move-result p0

    return p0

    :catch_29
    move-exception p1

    goto :goto_4b

    .line 2541
    :cond_2b
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2547
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleCustomTime()I

    move-result p0

    return p0

    .line 2541
    :cond_39
    const-string v0, "car"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2545
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleCarMode()I

    move-result p0

    return p0

    .line 2549
    :cond_46
    :goto_46
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_4a} :catch_29

    return p0

    .line 2552
    :goto_4b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 2553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public onHelp()V
    .registers 2

    .line 2521
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 2522
    const-string v0, "UiModeManager service (uimode) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2523
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2524
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2525
    const-string v0, "  night [yes|no|auto|custom_schedule|custom_bedtime]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2526
    const-string v0, "    Set or read night mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2527
    const-string v0, "  car [yes|no]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2528
    const-string v0, "    Set or read car mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2529
    const-string v0, "  time [start|end] <ISO time>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2530
    const-string v0, "    Set custom start/end schedule time (night mode must be set to custom to apply)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printCurrentCarMode()V
    .registers 4

    .line 2690
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2691
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/app/IUiModeManager;->getCurrentModeType(I)I

    move-result p0

    .line 2692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Car mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1c

    const-string/jumbo p0, "yes"

    goto :goto_1f

    :cond_1c
    const-string/jumbo p0, "no"

    :goto_1f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printCurrentNightMode()V
    .registers 4

    .line 2613
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2614
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IUiModeManager;->getNightMode(I)I

    move-result v1

    .line 2615
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {p0}, Landroid/app/IUiModeManager;->getNightModeCustomType()I

    move-result p0

    .line 2616
    invoke-static {v1, p0}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    move-result-object p0

    .line 2617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Night mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printCustomTime()V
    .registers 5

    .line 2580
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 2581
    invoke-interface {v2}, Landroid/app/IUiModeManager;->getCustomNightModeStart()J

    move-result-wide v2

    .line 2580
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$smfromMilliseconds(J)Ljava/time/LocalTime;

    move-result-object v2

    .line 2581
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2580
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2582
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 2583
    invoke-interface {p0}, Landroid/app/IUiModeManager;->getCustomNightModeEnd()J

    move-result-wide v2

    .line 2582
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$smfromMilliseconds(J)Ljava/time/LocalTime;

    move-result-object p0

    .line 2583
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2582
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
