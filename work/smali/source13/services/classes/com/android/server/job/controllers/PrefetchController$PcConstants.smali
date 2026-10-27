.class Lcom/android/server/job/controllers/PrefetchController$PcConstants;
.super Ljava/lang/Object;
.source "PrefetchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/PrefetchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PcConstants"
.end annotation


# static fields
.field private static final DEFAULT_LAUNCH_TIME_ALLOWANCE_MS:J = 0x124f80L

.field private static final DEFAULT_LAUNCH_TIME_THRESHOLD_MS:J = 0x1808580L

.field static final KEY_LAUNCH_TIME_ALLOWANCE_MS:Ljava/lang/String; = "pc_launch_time_allowance_ms"

.field static final KEY_LAUNCH_TIME_THRESHOLD_MS:Ljava/lang/String; = "pc_launch_time_threshold_ms"

.field private static final PC_CONSTANT_PREFIX:Ljava/lang/String; = "pc_"


# instance fields
.field public LAUNCH_TIME_ALLOWANCE_MS:J

.field public LAUNCH_TIME_THRESHOLD_MS:J

.field private mShouldReevaluateConstraints:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/PrefetchController$PcConstants;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/PrefetchController$PcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/job/controllers/PrefetchController$PcConstants;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/job/controllers/PrefetchController;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/job/controllers/PrefetchController;

    .line 500
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    .line 517
    const-wide/32 v0, 0x1808580

    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    .line 523
    const-wide/32 v0, 0x124f80

    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    return-void
.end method

.method private dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 558
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 559
    const-class v0, Lcom/android/server/job/controllers/PrefetchController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 560
    const-string v0, ":"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 563
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "pc_launch_time_threshold_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 564
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "pc_launch_time_allowance_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 566
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 567
    return-void
.end method


# virtual methods
.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 11
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .param p2, "key"    # Ljava/lang/String;

    .line 528
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_88

    :cond_8
    goto :goto_1f

    :sswitch_9
    const-string/jumbo v0, "pc_launch_time_threshold_ms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_20

    :sswitch_14
    const-string/jumbo v0, "pc_launch_time_allowance_ms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_20

    :goto_1f
    const/4 v0, -0x1

    :goto_20
    packed-switch v0, :pswitch_data_92

    goto :goto_86

    .line 541
    :pswitch_24
    const-wide/32 v2, 0x1808580

    .line 542
    invoke-virtual {p1, p2, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    .line 544
    const-wide/32 v4, 0x5265c00

    const-wide/32 v6, 0x36ee80

    .line 545
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 544
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 546
    .local v2, "newLaunchTimeThresholdMs":J
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v0}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_86

    .line 547
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v0, v2, v3}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fputmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;J)V

    .line 548
    iput-boolean v1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    .line 550
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v0}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmThresholdAlarmListener(Lcom/android/server/job/controllers/PrefetchController;)Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v1}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->setMinTimeBetweenAlarmsMs(J)V

    goto :goto_86

    .line 530
    .end local v2    # "newLaunchTimeThresholdMs":J
    :pswitch_5f
    const-wide/32 v2, 0x124f80

    .line 531
    invoke-virtual {p1, p2, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    .line 533
    const-wide/32 v4, 0x6ddd00

    const-wide/16 v6, 0x0

    .line 534
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 533
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 535
    .local v2, "newLaunchTimeAllowanceMs":J
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v0}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmLaunchTimeAllowanceMs(Lcom/android/server/job/controllers/PrefetchController;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_86

    .line 536
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v0, v2, v3}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fputmLaunchTimeAllowanceMs(Lcom/android/server/job/controllers/PrefetchController;J)V

    .line 537
    iput-boolean v1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    .line 555
    .end local v2    # "newLaunchTimeAllowanceMs":J
    :cond_86
    :goto_86
    return-void

    nop

    :sswitch_data_88
    .sparse-switch
        0x5ab6429f -> :sswitch_14
        0x5d59316c -> :sswitch_9
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_24
    .end packed-switch
.end method
