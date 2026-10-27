.class public Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;
.super Landroid/os/ShellCommand;
.source "BinderCallsStatsService.java"


# instance fields
.field public final mPrintWriter:Ljava/io/PrintWriter;

.field public final synthetic this$0:Lcom/android/server/BinderCallsStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V
    .registers 3

    .line 382
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 383
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public getOutPrintWriter()Ljava/io/PrintWriter;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_5

    return-object v0

    .line 391
    :cond_5
    invoke-super {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 8

    .line 396
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    if-nez p1, :cond_8

    return v1

    .line 401
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_104

    :goto_14
    move v2, v1

    goto/16 :goto_6e

    :sswitch_17
    const-string v2, "--enable-detailed-tracking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_14

    :cond_20
    const/4 v2, 0x7

    goto :goto_6e

    :sswitch_22
    const-string v2, "--disable-detailed-tracking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_14

    :cond_2b
    const/4 v2, 0x6

    goto :goto_6e

    :sswitch_2d
    const-string v2, "--enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_14

    :cond_36
    const/4 v2, 0x5

    goto :goto_6e

    :sswitch_38
    const-string v2, "--dump-worksource-provider"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_14

    :cond_41
    const/4 v2, 0x4

    goto :goto_6e

    :sswitch_43
    const-string v2, "--work-source-uid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_14

    :cond_4c
    const/4 v2, 0x3

    goto :goto_6e

    :sswitch_4e
    const-string v2, "--disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_14

    :cond_57
    const/4 v2, 0x2

    goto :goto_6e

    :sswitch_59
    const-string v2, "--no-sampling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    goto :goto_14

    :cond_62
    move v2, v4

    goto :goto_6e

    :sswitch_64
    const-string v2, "--reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_14

    :cond_6d
    move v2, v3

    .line 440
    :goto_6e
    const-string/jumbo v5, "persist.sys.binder_calls_detailed_tracking"

    packed-switch v2, :pswitch_data_126

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 416
    :pswitch_79
    const-string p1, "1"

    invoke-static {v5, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 418
    const-string p0, "Detailed tracking enabled"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_103

    .line 421
    :pswitch_8e
    const-string p1, ""

    invoke-static {v5, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 423
    const-string p0, "Detailed tracking disabled"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_103

    .line 407
    :pswitch_a2
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    goto :goto_103

    .line 426
    :pswitch_ac
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p1}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 427
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmWorkSourceProvider(Lcom/android/server/BinderCallsStatsService;)Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;)V

    goto :goto_103

    .line 430
    :pswitch_c3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 432
    :try_start_c7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 433
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BinderCallsStats;->recordAllCallsForWorkSourceUid(I)V
    :try_end_d4
    .catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_d4} :catch_d5

    goto :goto_103

    .line 435
    :catch_d5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid UID: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_ea
    const/4 p0, 0x0

    .line 410
    invoke-static {p0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    goto :goto_103

    .line 413
    :pswitch_ef
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    goto :goto_103

    .line 403
    :pswitch_f9
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService;->reset()V

    .line 404
    const-string p0, "binder_calls_stats reset."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_103
    return v3

    :sswitch_data_104
    .sparse-switch
        -0x60476451 -> :sswitch_64
        -0x4cd89b2d -> :sswitch_59
        -0x49c576b8 -> :sswitch_4e
        -0x1fdb9dc6 -> :sswitch_43
        -0x6594f87 -> :sswitch_38
        0x41a27323 -> :sswitch_2d
        0x565319ef -> :sswitch_22
        0x79b4630a -> :sswitch_17
    .end sparse-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_ef
        :pswitch_ea
        :pswitch_c3
        :pswitch_ac
        :pswitch_a2
        :pswitch_8e
        :pswitch_79
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 447
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 448
    const-string v0, "binder_calls_stats commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    const-string v0, "  --reset: Reset stats"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    const-string v0, "  --enable: Enable tracking binder calls"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    const-string v0, "  --disable: Disables tracking binder calls"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    const-string v0, "  --no-sampling: Tracks all calls"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    const-string v0, "  --enable-detailed-tracking: Enables detailed tracking"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    const-string v0, "  --disable-detailed-tracking: Disables detailed tracking"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    const-string v0, "  --work-source-uid <UID>: Track all binder calls from the UID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
