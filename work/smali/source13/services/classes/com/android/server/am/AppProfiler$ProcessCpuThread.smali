.class Lcom/android/server/am/AppProfiler$ProcessCpuThread;
.super Ljava/lang/Thread;
.source "AppProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessCpuThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 2048
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    .line 2049
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2050
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 2054
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v0

    monitor-enter v0

    .line 2055
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuInitLatch(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2056
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 2057
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_67

    .line 2061
    .end local p0    # "this":Lcom/android/server/am/AppProfiler$ProcessCpuThread;
    :goto_1a
    :try_start_1a
    monitor-enter p0
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1b} :catch_58
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_56

    .line 2062
    :try_start_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2063
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v2}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmLastCpuTime(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/32 v4, 0xfffffff

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    .line 2064
    .local v2, "nextCpuDelay":J
    iget-object v4, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v4}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmLastWriteTime(Lcom/android/server/am/AppProfiler;)J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    .line 2067
    .local v4, "nextWriteDelay":J
    cmp-long v6, v4, v2

    if-gez v6, :cond_3e

    .line 2068
    move-wide v2, v4

    .line 2070
    :cond_3e
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_51

    .line 2071
    iget-object v6, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v6}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuMutexFree(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2072
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 2074
    .end local v0    # "now":J
    .end local v2    # "nextCpuDelay":J
    .end local v4    # "nextWriteDelay":J
    :cond_51
    monitor-exit p0

    .line 2076
    goto :goto_59

    .line 2074
    :catchall_53
    move-exception v0

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_1b .. :try_end_55} :catchall_53

    :try_start_55
    throw v0
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_56} :catch_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_56} :catch_56

    .line 2078
    :catch_56
    move-exception v0

    goto :goto_5f

    .line 2075
    :catch_58
    move-exception v0

    .line 2077
    :goto_59
    :try_start_59
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_56

    goto :goto_66

    .line 2079
    .local v0, "e":Ljava/lang/Exception;
    :goto_5f
    const-string v1, "ActivityManager"

    const-string v2, "Unexpected exception collecting process stats"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2080
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_66
    goto :goto_1a

    .line 2057
    :catchall_67
    move-exception v1

    :goto_68
    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_6a

    throw v1

    .restart local p0    # "this":Lcom/android/server/am/AppProfiler$ProcessCpuThread;
    :catchall_6a
    move-exception v1

    goto :goto_68
.end method
