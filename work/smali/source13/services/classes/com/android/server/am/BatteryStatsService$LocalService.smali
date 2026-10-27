.class final Lcom/android/server/am/BatteryStatsService$LocalService;
.super Landroid/os/BatteryStatsInternal;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Landroid/os/BatteryStatsInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    return-void
.end method


# virtual methods
.method public getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation

    .line 442
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSystemServiceCpuThreadTimes()Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getSystemServiceCpuThreadTimes()Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    move-result-object v0

    return-object v0
.end method

.method public getWifiIfaces()[Ljava/lang/String;
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public noteBinderCallStats(IJLjava/util/Collection;)V
    .registers 15
    .param p1, "workSourceUid"    # I
    .param p2, "incrementatCallCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Collection<",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;",
            ">;)V"
        }
    .end annotation

    .line 454
    .local p4, "callStats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/os/BinderCallsStats$CallStat;>;"
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmLock(Lcom/android/server/am/BatteryStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 455
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v1}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmHandler(Lcom/android/server/am/BatteryStatsService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 456
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/am/BatteryStatsService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/am/BatteryStatsService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 457
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 455
    move-object v6, p4

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public noteBinderThreadNativeIds([I)V
    .registers 4
    .param p1, "binderThreadNativeTids"    # [I

    .line 463
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmLock(Lcom/android/server/am/BatteryStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 464
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteBinderThreadNativeIds([I)V

    .line 465
    monitor-exit v0

    .line 466
    return-void

    .line 465
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public noteJobsDeferred(IIJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "numDeferred"    # I
    .param p3, "sinceLast"    # J

    .line 448
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->noteJobsDeferred(IIJ)V

    .line 449
    return-void
.end method
