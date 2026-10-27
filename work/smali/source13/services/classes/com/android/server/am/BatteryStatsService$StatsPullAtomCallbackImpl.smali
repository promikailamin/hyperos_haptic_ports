.class Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 2

    .line 801
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .registers 11
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 805
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_b2

    .line 842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tagId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :pswitch_1d
    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 817
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 818
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 819
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->powerProfileModeledOnly()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 820
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v1

    .line 821
    .local v1, "queryPowerProfile":Landroid/os/BatteryUsageStatsQuery;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryUsageStats;

    .line 822
    .local v2, "bus":Landroid/os/BatteryUsageStats;
    goto :goto_a6

    .line 807
    .end local v1    # "queryPowerProfile":Landroid/os/BatteryUsageStatsQuery;
    .end local v2    # "bus":Landroid/os/BatteryUsageStats;
    :pswitch_43
    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 809
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 810
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 811
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v1

    .line 812
    .local v1, "querySinceReset":Landroid/os/BatteryUsageStatsQuery;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryUsageStats;

    .line 813
    .restart local v2    # "bus":Landroid/os/BatteryUsageStats;
    goto :goto_a6

    .line 828
    .end local v1    # "querySinceReset":Landroid/os/BatteryUsageStatsQuery;
    .end local v2    # "bus":Landroid/os/BatteryUsageStats;
    :pswitch_65
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v1}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmBatteryUsageStatsStore(Lcom/android/server/am/BatteryStatsService;)Lcom/android/internal/os/BatteryUsageStatsStore;

    move-result-object v1

    .line 829
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryUsageStatsStore;->getLastBatteryUsageStatsBeforeResetAtomPullTimestamp()J

    move-result-wide v1

    .line 830
    .local v1, "sessionStart":J
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v3

    .line 831
    .local v3, "sessionEnd":J
    new-instance v5, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 833
    invoke-virtual {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v5

    .line 834
    invoke-virtual {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v5

    .line 835
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v5

    .line 836
    invoke-virtual {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v5

    .line 837
    .local v5, "queryBeforeReset":Landroid/os/BatteryUsageStatsQuery;
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v5}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryUsageStats;

    .line 838
    .local v6, "bus":Landroid/os/BatteryUsageStats;
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v7}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmBatteryUsageStatsStore(Lcom/android/server/am/BatteryStatsService;)Lcom/android/internal/os/BatteryUsageStatsStore;

    move-result-object v7

    .line 839
    invoke-virtual {v7, v3, v4}, Lcom/android/internal/os/BatteryUsageStatsStore;->setLastBatteryUsageStatsBeforeResetAtomPullTimestamp(J)V

    .line 840
    move-object v2, v6

    .line 844
    .end local v1    # "sessionStart":J
    .end local v3    # "sessionEnd":J
    .end local v5    # "queryBeforeReset":Landroid/os/BatteryUsageStatsQuery;
    .end local v6    # "bus":Landroid/os/BatteryUsageStats;
    .restart local v2    # "bus":Landroid/os/BatteryUsageStats;
    :goto_a6
    invoke-virtual {v2}, Landroid/os/BatteryUsageStats;->getStatsProto()[B

    move-result-object v1

    .line 846
    .local v1, "statsProto":[B
    invoke-static {p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    return v0

    :pswitch_data_b2
    .packed-switch 0x277f
        :pswitch_65
        :pswitch_43
        :pswitch_1d
    .end packed-switch
.end method
