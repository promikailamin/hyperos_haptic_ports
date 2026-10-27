.class public Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# static fields
.field public static final BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 973
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    .line 974
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 2

    .line 972
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .registers 11

    const/16 v0, 0x27e1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq p1, v0, :cond_ba

    packed-switch p1, :pswitch_data_112

    .line 1051
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tagId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_22
    const/4 p0, 0x1

    return p0

    .line 986
    :pswitch_24
    const-string v0, "backstage_power"

    const-string/jumbo v5, "min_consumed_power_threshold"

    .line 987
    invoke-static {v0, v5, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    .line 989
    new-instance v5, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 991
    invoke-virtual {v5, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 992
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 993
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 994
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 995
    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMinConsumedPowerThreshold(D)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 996
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    .line 997
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryUsageStats;

    goto :goto_9f

    .line 1008
    :pswitch_5c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 1009
    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getLastBatteryUsageStatsBeforeResetAtomPullTimestamp()J

    move-result-wide v0

    .line 1011
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v5, v5, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v5

    .line 1012
    :try_start_67
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v6, v6, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v6

    .line 1013
    monitor-exit v5
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_b7

    .line 1014
    new-instance v5, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 1016
    invoke-virtual {v5, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 1017
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 1018
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    .line 1019
    invoke-virtual {v2, v0, v1, v6, v7}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    .line 1021
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryUsageStats;

    .line 1022
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->setLastBatteryUsageStatsBeforeResetAtomPullTimestamp(J)V

    move-object p0, v0

    .line 1053
    :goto_9f
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsProto()[B

    move-result-object v0

    .line 1055
    :try_start_a3
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_af

    :catch_a7
    move-exception p0

    .line 1057
    const-string v1, "BatteryStatsService"

    const-string v2, "Failure close BatteryUsageStats"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    :goto_af
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v4

    :catchall_b7
    move-exception p0

    .line 1013
    :try_start_b8
    monitor-exit v5
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw p0

    .line 1027
    :cond_ba
    const-string p1, "backstage_power"

    const-string/jumbo v0, "min_consumed_power_threshold"

    .line 1028
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    float-to-double v0, p1

    .line 1032
    new-instance p1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 1033
    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    .line 1034
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    .line 1035
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    .line 1036
    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMinConsumedPowerThreshold(D)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    .line 1037
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->accumulated()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    sget-wide v0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J

    .line 1038
    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    .line 1040
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryUsageStats;

    .line 1041
    new-instance p1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;

    invoke-direct {v0}, Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;-><init>()V

    invoke-direct {p1, v0}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;-><init>(Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;)V

    .line 1042
    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->logStats(Landroid/os/BatteryUsageStats;Ljava/util/List;)I

    move-result p1

    .line 1044
    :try_start_105
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    return p1

    :catch_109
    move-exception p0

    .line 1046
    const-string p2, "BatteryStatsService"

    const-string v0, "Failure close BatteryUsageStats"

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p1

    :pswitch_data_112
    .packed-switch 0x277f
        :pswitch_5c
        :pswitch_24
        :pswitch_22
    .end packed-switch
.end method
