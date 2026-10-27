.class public Lcom/android/server/am/ActivityManagerShellCommand$1;
.super Ljava/lang/Object;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;)V
    .registers 2

    .line 621
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .registers 11

    .line 624
    const-string v0, "-D"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 625
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;)I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 626
    :cond_16
    const-string v0, "--suspend"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 627
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;)I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 628
    :cond_2b
    const-string v0, "-N"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 629
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 630
    :cond_40
    const-string v0, "-W"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 631
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmWaitOption(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_29e

    .line 632
    :cond_4f
    const-string v0, "-P"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 633
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmProfileFile(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V

    .line 634
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAutoStop(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_29e

    .line 635
    :cond_67
    const-string v0, "--start-profiler"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_80

    .line 636
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmProfileFile(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V

    .line 637
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAutoStop(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_29e

    .line 638
    :cond_80
    const-string v0, "--sampling"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 639
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmSamplingInterval(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 640
    :cond_97
    const-string v0, "--clock-type"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 641
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 642
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1}, Landroid/app/ProfilerInfo;->getClockTypeFromString(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmClockType(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 643
    :cond_b0
    const-string v0, "--profiler-output-version"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 644
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmProfilerOutputVersion(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 645
    :cond_c7
    const-string v0, "--streaming"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 646
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmStreaming(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_29e

    .line 647
    :cond_d6
    const-string v0, "--attach-agent"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Multiple --attach-agent(-bind) not supported"

    if-eqz v0, :cond_100

    .line 648
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmAgent(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f0

    .line 649
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 653
    :cond_f0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAgent(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V

    .line 654
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAttachAgentDuringBind(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_29e

    .line 655
    :cond_100
    const-string v0, "--attach-agent-bind"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 656
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmAgent(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_118

    .line 657
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 661
    :cond_118
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAgent(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V

    .line 662
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAttachAgentDuringBind(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_29e

    .line 663
    :cond_128
    const-string p2, "-R"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13f

    .line 664
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmRepeat(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 665
    :cond_13f
    const-string p2, "-S"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14e

    .line 666
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmStopOption(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_29e

    .line 667
    :cond_14e
    const-string p2, "--track-allocation"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_163

    .line 668
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;)I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 669
    :cond_163
    const-string p2, "--user"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17a

    .line 670
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmUserId(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 671
    :cond_17a
    const-string p2, "--receiver-permission"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18d

    .line 672
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmReceiverPermission(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V

    goto/16 :goto_29e

    .line 673
    :cond_18d
    const-string p2, "--display"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a4

    .line 674
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmDisplayId(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 675
    :cond_1a4
    const-string p2, "--task-display-area-feature-id"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1bb

    .line 676
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmTaskDisplayAreaFeatureId(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 677
    :cond_1bb
    const-string p2, "--windowingMode"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d2

    .line 678
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmWindowingMode(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 679
    :cond_1d2
    const-string p2, "--activityType"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e9

    .line 680
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmActivityType(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 681
    :cond_1e9
    const-string p2, "--task"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_200

    .line 682
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmTaskId(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_29e

    .line 683
    :cond_200
    const-string p2, "--task-overlay"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20f

    .line 684
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmIsTaskOverlay(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_29e

    .line 685
    :cond_20f
    const-string p2, "--lock-task"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21e

    .line 686
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmIsLockTask(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_29e

    .line 687
    :cond_21e
    const-string p2, "--allow-background-activity-starts"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_241

    .line 688
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;)Landroid/app/BroadcastOptions;

    move-result-object p1

    if-nez p1, :cond_237

    .line 689
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/app/BroadcastOptions;)V

    .line 691
    :cond_237
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;)Landroid/app/BroadcastOptions;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    goto :goto_29e

    .line 692
    :cond_241
    const-string p2, "--async"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24f

    .line 693
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAsync(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto :goto_29e

    .line 694
    :cond_24f
    const-string p2, "--splashscreen-show-icon"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25d

    .line 695
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmShowSplashScreen(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto :goto_29e

    .line 696
    :cond_25d
    const-string p2, "--dismiss-keyguard-if-insecure"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_299

    const-string p2, "--dismiss-keyguard"

    .line 697
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26e

    goto :goto_299

    .line 699
    :cond_26e
    const-string p2, "--allow-fgs-start-reason"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_298

    .line 700
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 701
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/app/BroadcastOptions;)V

    .line 702
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;)Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v5, 0x0

    const-string v7, ""

    const-wide/16 v3, 0x2710

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    goto :goto_29e

    :cond_298
    return v2

    .line 698
    :cond_299
    :goto_299
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmDismissKeyguardIfInsecure(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    :goto_29e
    return v1
.end method
