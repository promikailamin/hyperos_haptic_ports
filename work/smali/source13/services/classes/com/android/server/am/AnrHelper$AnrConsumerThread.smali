.class Lcom/android/server/am/AnrHelper$AnrConsumerThread;
.super Ljava/lang/Thread;
.source "AnrHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AnrHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnrConsumerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AnrHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/AnrHelper;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 151
    const-string p1, "AnrConsumer"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private next()Lcom/android/server/am/AnrHelper$AnrRecord;
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v0}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v1}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 157
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 159
    :cond_16
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v1}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AnrHelper$AnrRecord;

    .line 160
    .local v1, "record":Lcom/android/server/am/AnrHelper$AnrRecord;
    iget-object v2, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    iget v3, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    invoke-static {v2, v3}, Lcom/android/server/am/AnrHelper;->-$$Nest$fputmProcessingPid(Lcom/android/server/am/AnrHelper;I)V

    .line 161
    monitor-exit v0

    return-object v1

    .line 162
    .end local v1    # "record":Lcom/android/server/am/AnrHelper$AnrRecord;
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 168
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->next()Lcom/android/server/am/AnrHelper$AnrRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/am/AnrHelper$AnrRecord;
    const/4 v2, 0x0

    if-eqz v0, :cond_94

    .line 169
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v0}, Lcom/android/server/am/AnrHelper;->-$$Nest$mscheduleBinderHeavyHitterAutoSamplerIfNecessary(Lcom/android/server/am/AnrHelper;)V

    .line 170
    iget-object v0, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 171
    .local v0, "currentPid":I
    iget v3, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    if-eq v0, v3, :cond_3a

    .line 173
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip ANR with mismatched pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    goto :goto_0

    .line 177
    :cond_3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 180
    .local v3, "startTime":J
    iget-wide v5, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimestamp:J

    sub-long v5, v3, v5

    .line 181
    .local v5, "reportLatency":J
    invoke-static {}, Lcom/android/server/am/AnrHelper;->-$$Nest$sfgetEXPIRED_REPORT_TIME_MS()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-lez v7, :cond_4b

    const/4 v2, 0x1

    .line 182
    .local v2, "onlyDumpSelf":Z
    :cond_4b
    invoke-virtual {v1, v2}, Lcom/android/server/am/AnrHelper$AnrRecord;->appNotResponding(Z)V

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 184
    .local v7, "endTime":J
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Completed ANR of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v11, v7, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms, latency "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 186
    if-eqz v2, :cond_84

    const-string/jumbo v11, "ms (expired, only dump ANR app)"

    goto :goto_87

    :cond_84
    const-string/jumbo v11, "ms"

    :goto_87
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 184
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v0    # "currentPid":I
    .end local v2    # "onlyDumpSelf":Z
    .end local v3    # "startTime":J
    .end local v5    # "reportLatency":J
    .end local v7    # "endTime":J
    goto/16 :goto_0

    .line 189
    :cond_94
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v0}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmRunning(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v0}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 191
    :try_start_a4
    iget-object v2, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/server/am/AnrHelper;->-$$Nest$fputmProcessingPid(Lcom/android/server/am/AnrHelper;I)V

    .line 193
    iget-object v2, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v2}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bb

    .line 194
    iget-object v2, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v2}, Lcom/android/server/am/AnrHelper;->-$$Nest$mstartAnrConsumerIfNeeded(Lcom/android/server/am/AnrHelper;)V

    .line 196
    :cond_bb
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_bd
    move-exception v2

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_a4 .. :try_end_bf} :catchall_bd

    throw v2
.end method
