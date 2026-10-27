.class Lcom/android/server/am/ProcessStatsService$1;
.super Ljava/lang/Object;
.source "ProcessStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessStatsService;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessStatsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ProcessStatsService;

    .line 132
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

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

    if-eqz v1, :cond_27

    .line 136
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 137
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    const/4 v2, 0x1

    invoke-static {v1, v2, v2}, Lcom/android/server/am/ProcessStatsService;->-$$Nest$mwriteStateLocked(Lcom/android/server/am/ProcessStatsService;ZZ)V

    .line 138
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 140
    :cond_27
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v1
.end method
