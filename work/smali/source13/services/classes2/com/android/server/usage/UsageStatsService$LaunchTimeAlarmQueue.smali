.class Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchTimeAlarmQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/AlarmQueue<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V
    .registers 13
    .param p2, "userId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 535
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 536
    const-string v3, "*usage.launchTime*"

    const-string v4, "Estimated launch times"

    const/4 v5, 0x1

    const-wide/16 v6, 0x7530

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 537
    iput p2, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    .line 538
    return-void
.end method


# virtual methods
.method protected bridge synthetic isForUser(Ljava/lang/Object;I)Z
    .registers 3

    .line 532
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->isForUser(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected isForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 542
    iget v0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    if-ne v0, p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected processExpiredAlarms(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 551
    .local p1, "expired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 552
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v0

    monitor-enter v0

    .line 553
    :try_start_d
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseSetArray;->addAll(ILandroid/util/ArraySet;)V

    .line 554
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_23

    .line 555
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 554
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1

    .line 557
    :cond_26
    :goto_26
    return-void
.end method
