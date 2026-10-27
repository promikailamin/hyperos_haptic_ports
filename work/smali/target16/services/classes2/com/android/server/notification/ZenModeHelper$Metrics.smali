.class public final Lcom/android/server/notification/ZenModeHelper$Metrics;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "ZenModeHelper.java"


# instance fields
.field public mModeLogTimeMs:J

.field public mNumZenRules:I

.field public mPreviousZenMode:I

.field public mPreviousZenType:I

.field public mRuleCountLogTime:J

.field public mTypeLogTimeMs:J

.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public static bridge synthetic -$$Nest$memit(Lcom/android/server/notification/ZenModeHelper$Metrics;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 4

    .line 2732
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    const/4 p1, -0x1

    .line 2742
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    const-wide/16 v0, 0x0

    .line 2743
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    .line 2745
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    .line 2746
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    .line 2749
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 2750
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public final emit()V
    .registers 2

    .line 2763
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmHandler(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostMetricsTimer(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 2764
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitZenMode()V

    .line 2765
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitRules()V

    .line 2766
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitDndType()V

    return-void
.end method

.method public final emitDndType()V
    .registers 11

    .line 2801
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2802
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    sub-long v2, v0, v2

    .line 2803
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmConfigLock(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2804
    :try_start_f
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v6, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v6, :cond_21

    .line 2806
    iget-object v6, v5, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_22

    :cond_1d
    const/4 v6, 0x2

    goto :goto_22

    :catchall_1f
    move-exception p0

    goto :goto_51

    :cond_21
    const/4 v6, 0x0

    .line 2807
    :goto_22
    iget v7, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    if-ne v6, v7, :cond_2d

    const-wide/32 v8, 0xea60

    cmp-long v8, v2, v8

    if-lez v8, :cond_4f

    :cond_2d
    const/4 v8, -0x1

    if-eq v7, v8, :cond_4b

    .line 2810
    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dnd_type_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    long-to-int v2, v2

    invoke-static {v5, v7, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2813
    :cond_4b
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    .line 2814
    iput v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 2816
    :cond_4f
    monitor-exit v4

    return-void

    :goto_51
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_f .. :try_end_52} :catchall_1f

    throw p0
.end method

.method public final emitRules()V
    .registers 8

    .line 2783
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2784
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    sub-long/2addr v0, v2

    .line 2785
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmConfigLock(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2786
    :try_start_e
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v3, v3, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 2787
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    if-ne v4, v3, :cond_23

    const-wide/32 v5, 0xea60

    cmp-long v5, v0, v5

    if-lez v5, :cond_3c

    :cond_23
    const/4 v5, -0x1

    if-eq v4, v5, :cond_38

    .line 2790
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "dnd_rule_count"

    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    sub-int v6, v3, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_38

    :catchall_36
    move-exception p0

    goto :goto_3e

    .line 2793
    :cond_38
    :goto_38
    iput v3, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    .line 2795
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    .line 2797
    :cond_3c
    monitor-exit v2

    return-void

    :goto_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_36

    throw p0
.end method

.method public final emitZenMode()V
    .registers 9

    .line 2770
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2771
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    sub-long v2, v0, v2

    .line 2772
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v6, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v4, v6, :cond_19

    const-wide/32 v6, 0xea60

    cmp-long v6, v2, v6

    if-lez v6, :cond_18

    goto :goto_19

    :cond_18
    return-void

    :cond_19
    :goto_19
    const/4 v6, -0x1

    if-eq v4, v6, :cond_37

    .line 2774
    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dnd_mode_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    long-to-int v2, v2

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2777
    :cond_37
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v2, v2, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iput v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 2778
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    return-void
.end method

.method public onConfigChanged()V
    .registers 1

    .line 2759
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    return-void
.end method

.method public onZenModeChanged()V
    .registers 1

    .line 2754
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    return-void
.end method
