.class public Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "UsageStatsService.java"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V
    .registers 13

    .line 627
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v5, 0x1

    const-wide/16 v6, 0x7530

    .line 628
    const-string v3, "*usage.launchTime*"

    const-string v4, "Estimated launch times"

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 629
    iput p2, v0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    return-void
.end method


# virtual methods
.method public bridge synthetic isForUser(Ljava/lang/Object;I)Z
    .registers 3

    .line 624
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->isForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isForUser(Ljava/lang/String;I)Z
    .registers 3

    .line 634
    iget p0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    if-ne p0, p2, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public processExpiredAlarms(Landroid/util/ArraySet;)V
    .registers 5

    .line 643
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 644
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v0

    monitor-enter v0

    .line 645
    :try_start_d
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseSetArray;->addAll(ILandroid/util/ArraySet;)V

    .line 646
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_25

    .line 647
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmHandler(Lcom/android/server/usage/UsageStatsService;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_25
    move-exception p0

    .line 646
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0

    :cond_28
    return-void
.end method
