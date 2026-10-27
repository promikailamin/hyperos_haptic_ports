.class public Lcom/android/server/am/AnrHelper$AnrConsumerThread;
.super Ljava/lang/Thread;
.source "AnrHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AnrHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AnrHelper;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 207
    const-string p1, "AnrConsumer"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final next()Lcom/android/server/am/AnrHelper$AnrRecord;
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v0}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 212
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v1}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 p0, 0x0

    .line 213
    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    goto :goto_3f

    .line 215
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v1}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AnrHelper$AnrRecord;

    .line 216
    iget-object v2, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    iget v3, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    invoke-static {v2, v3}, Lcom/android/server/am/AnrHelper;->-$$Nest$fputmProcessingPid(Lcom/android/server/am/AnrHelper;I)V

    .line 217
    iget-object v2, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v2, v2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object p0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {p0}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 217
    invoke-virtual {v2, p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrRecordsQueueSizeWhenPopped(I)V

    .line 219
    monitor-exit v0

    return-object v1

    .line 220
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_16

    throw p0
.end method

.method public run()V
    .registers 13

    .line 226
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->next()Lcom/android/server/am/AnrHelper$AnrRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ad

    .line 227
    iget-object v2, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v2}, Lcom/android/server/am/AnrHelper;->-$$Nest$mscheduleBinderHeavyHitterAutoSamplerIfNecessary(Lcom/android/server/am/AnrHelper;)V

    .line 228
    iget-object v2, v0, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 229
    iget v3, v0, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    if-eq v2, v3, :cond_35

    .line 231
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip ANR with mismatched pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", current pid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 238
    iget-wide v4, v0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimestamp:J

    sub-long v4, v2, v4

    .line 239
    invoke-static {}, Lcom/android/server/am/AnrHelper;->-$$Nest$sfgetEXPIRED_REPORT_TIME_MS()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_4d

    invoke-static {}, Lcom/android/server/am/AnrHelper;->-$$Nest$sfgetSELF_ONLY_AFTER_BOOT_MS()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_4e

    :cond_4d
    const/4 v1, 0x1

    .line 241
    :cond_4e
    invoke-virtual {v0, v1}, Lcom/android/server/am/AnrHelper$AnrRecord;->appNotResponding(Z)V

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 244
    invoke-static {}, Landroid/internal/os/profiling/Flags;->systemTriggeredProfilingNew()Z

    move-result v8

    if-eqz v8, :cond_73

    iget-object v8, v0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_73

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_73

    .line 246
    iget-object v8, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v8}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmService(Lcom/android/server/am/AnrHelper;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/AnrHelper$AnrRecord;->mUid:I

    iget-object v10, v0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->sendProfilingTrigger(ILjava/lang/String;I)V

    .line 252
    :cond_73
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Completed ANR of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v2

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms, latency "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9e

    .line 254
    const-string/jumbo v0, "ms (expired, only dump ANR app)"

    goto :goto_a1

    :cond_9e
    const-string/jumbo v0, "ms"

    :goto_a1
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    :cond_ad
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v0}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmRunning(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v0}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 259
    :try_start_bd
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/am/AnrHelper;->-$$Nest$fputmProcessingPid(Lcom/android/server/am/AnrHelper;I)V

    .line 261
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v1}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d7

    .line 262
    iget-object p0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {p0}, Lcom/android/server/am/AnrHelper;->-$$Nest$mstartAnrConsumerIfNeeded(Lcom/android/server/am/AnrHelper;)V

    goto :goto_d7

    :catchall_d5
    move-exception p0

    goto :goto_d9

    .line 264
    :cond_d7
    :goto_d7
    monitor-exit v0

    return-void

    :goto_d9
    monitor-exit v0
    :try_end_da
    .catchall {:try_start_bd .. :try_end_da} :catchall_d5

    throw p0
.end method
