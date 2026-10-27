.class Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;
.super Landroid/os/ShellCommand;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinderCallsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderCallsStatsShellCommand"
.end annotation


# instance fields
.field private final mPrintWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/server/BinderCallsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V
    .registers 3
    .param p2, "printWriter"    # Ljava/io/PrintWriter;

    .line 396
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 397
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    .line 398
    return-void
.end method


# virtual methods
.method public getOutPrintWriter()Ljava/io/PrintWriter;
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_5

    .line 403
    return-object v0

    .line 405
    :cond_5
    invoke-super {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 410
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 411
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    if-nez p1, :cond_8

    .line 412
    return v1

    .line 415
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_fe

    :cond_11
    goto :goto_62

    :sswitch_12
    const-string v2, "--enable-detailed-tracking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x4

    goto :goto_63

    :sswitch_1c
    const-string v2, "--disable-detailed-tracking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x5

    goto :goto_63

    :sswitch_26
    const-string v2, "--enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v4

    goto :goto_63

    :sswitch_30
    const-string v2, "--dump-worksource-provider"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x6

    goto :goto_63

    :sswitch_3a
    const-string v2, "--work-source-uid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x7

    goto :goto_63

    :sswitch_44
    const-string v2, "--disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x2

    goto :goto_63

    :sswitch_4e
    const-string v2, "--no-sampling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x3

    goto :goto_63

    :sswitch_58
    const-string v2, "--reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v3

    goto :goto_63

    :goto_62
    move v2, v1

    :goto_63
    const-string/jumbo v5, "persist.sys.binder_calls_detailed_tracking"

    packed-switch v2, :pswitch_data_120

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 444
    :pswitch_6e
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "uidArg":Ljava/lang/String;
    :try_start_72
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 447
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v5}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/os/BinderCallsStats;->recordAllCallsForWorkSourceUid(I)V
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_7f} :catch_81

    .line 451
    .end local v4    # "uid":I
    goto/16 :goto_fc

    .line 448
    :catch_81
    move-exception v3

    .line 449
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    return v1

    .line 440
    .end local v2    # "uidArg":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :pswitch_99
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 441
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmWorkSourceProvider(Lcom/android/server/BinderCallsStatsService;)Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;)V

    .line 442
    goto :goto_fc

    .line 435
    :pswitch_b0
    const-string v1, ""

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 437
    const-string v1, "Detailed tracking disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    goto :goto_fc

    .line 430
    :pswitch_c4
    const-string v1, "1"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 432
    const-string v1, "Detailed tracking enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    goto :goto_fc

    .line 427
    :pswitch_d8
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 428
    goto :goto_fc

    .line 424
    :pswitch_e2
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 425
    goto :goto_fc

    .line 421
    :pswitch_e7
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 422
    goto :goto_fc

    .line 417
    :pswitch_f1
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-virtual {v1}, Lcom/android/server/BinderCallsStatsService;->reset()V

    .line 418
    const-string v1, "binder_calls_stats reset."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    nop

    .line 456
    :goto_fc
    return v3

    nop

    :sswitch_data_fe
    .sparse-switch
        -0x60476451 -> :sswitch_58
        -0x4cd89b2d -> :sswitch_4e
        -0x49c576b8 -> :sswitch_44
        -0x1fdb9dc6 -> :sswitch_3a
        -0x6594f87 -> :sswitch_30
        0x41a27323 -> :sswitch_26
        0x565319ef -> :sswitch_1c
        0x79b4630a -> :sswitch_12
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_e7
        :pswitch_e2
        :pswitch_d8
        :pswitch_c4
        :pswitch_b0
        :pswitch_99
        :pswitch_6e
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 461
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 462
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "binder_calls_stats commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    const-string v1, "  --reset: Reset stats"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    const-string v1, "  --enable: Enable tracking binder calls"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    const-string v1, "  --disable: Disables tracking binder calls"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    const-string v1, "  --no-sampling: Tracks all calls"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    const-string v1, "  --enable-detailed-tracking: Enables detailed tracking"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    const-string v1, "  --disable-detailed-tracking: Disables detailed tracking"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    const-string v1, "  --work-source-uid <UID>: Track all binder calls from the UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    return-void
.end method
