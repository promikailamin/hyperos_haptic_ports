.class Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
.super Landroid/os/ShellCommand;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThermalShellCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/ThermalManagerService;

    .line 546
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method private runOverrideStatus()I
    .registers 8

    .line 573
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 575
    .local v0, "token":J
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6e

    .line 578
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, -0x1

    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_11} :catch_4e
    .catchall {:try_start_9 .. :try_end_11} :catchall_6e

    .line 582
    .local v4, "status":I
    nop

    .line 583
    :try_start_12
    invoke-static {v4}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v5

    if-nez v5, :cond_33

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_6e

    .line 585
    nop

    .line 593
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 585
    return v3

    .line 587
    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_6e

    .line 588
    :try_start_3a
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fputmIsStatusOverride(Lcom/android/server/power/ThermalManagerService;Z)V

    .line 589
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v5, v4}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$msetStatusLocked(Lcom/android/server/power/ThermalManagerService;I)V

    .line 590
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_4b

    .line 591
    const/4 v3, 0x0

    .line 593
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    return v3

    .line 590
    :catchall_4b
    move-exception v5

    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    :try_start_4d
    throw v5

    .line 579
    .end local v4    # "status":I
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    :catch_4e
    move-exception v4

    .line 580
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_6e

    .line 581
    nop

    .line 593
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 581
    return v3

    .line 593
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :catchall_6e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 594
    throw v2
.end method

.method private runReset()I
    .registers 6

    .line 560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 562
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1e

    .line 563
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fputmIsStatusOverride(Lcom/android/server/power/ThermalManagerService;Z)V

    .line 564
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$monTemperatureMapChangedLocked(Lcom/android/server/power/ThermalManagerService;)V

    .line 565
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 568
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 565
    return v4

    .line 566
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    :try_start_1d
    throw v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 568
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 569
    throw v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 549
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    const-string v0, ""

    :goto_6
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_36

    :cond_e
    goto :goto_24

    :sswitch_f
    const-string/jumbo v2, "override-status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    goto :goto_24

    :sswitch_1a
    const-string/jumbo v2, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :goto_24
    packed-switch v1, :pswitch_data_40

    .line 555
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 553
    :pswitch_2c
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->runReset()I

    move-result v0

    return v0

    .line 551
    :pswitch_31
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->runOverrideStatus()I

    move-result v0

    return v0

    :sswitch_data_36
    .sparse-switch
        0x6761d4f -> :sswitch_1a
        0x16fa8113 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 599
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 600
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Thermal service (thermalservice) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    const-string v1, "  override-status STATUS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const-string v1, "    sets and locks the thermal status of the device to STATUS."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const-string v1, "    status code is defined in android.os.Temperature."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    const-string v1, "  reset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    const-string v1, "    unlocks the thermal status of the device."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 610
    return-void
.end method
