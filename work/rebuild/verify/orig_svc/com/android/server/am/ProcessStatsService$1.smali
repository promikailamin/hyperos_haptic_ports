.class public Lcom/android/server/am/ProcessStatsService$1;
.super Ljava/lang/Object;
.source "ProcessStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessStatsService;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 136
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v2, 0x1

    .line 137
    invoke-static {v1, v2, v2}, Lcom/android/server/am/ProcessStatsService;->-$$Nest$mwriteStateLocked(Lcom/android/server/am/ProcessStatsService;ZZ)V

    .line 138
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_2a

    .line 140
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_26

    throw p0
.end method
