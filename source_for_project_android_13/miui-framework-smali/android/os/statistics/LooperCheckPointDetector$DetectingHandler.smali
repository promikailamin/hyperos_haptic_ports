.class Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
.super Landroid/os/Handler;
.source "LooperCheckPointDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperCheckPointDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetectingHandler"
.end annotation


# instance fields
.field private final blacklist detectingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist lockObject:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 27
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method private blacklist decodeDetectingBeginUptimeMs(Landroid/os/Message;)J
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    iget v0, p1, Landroid/os/Message;->arg2:I

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist decodeDetectingThread(Landroid/os/Message;)Ljava/lang/Thread;
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method private blacklist decodeDetectingTid(Landroid/os/Message;)I
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 97
    iget v0, p1, Landroid/os/Message;->arg2:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private blacklist obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;
    .registers 8
    .param p1, "targetThread"    # Ljava/lang/Thread;
    .param p2, "tid"    # I
    .param p3, "beginUptimeMs"    # J

    .line 82
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 84
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    const-wide v1, 0xffffffffL

    and-long/2addr v1, p3

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 86
    const/16 v1, 0x20

    shr-long v1, p3, v1

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 88
    iget v1, v0, Landroid/os/Message;->arg2:I

    shl-int/lit8 v2, p2, 0x8

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 89
    return-object v0
.end method


# virtual methods
.method public blacklist beginLoopOnce(IJ)V
    .registers 9
    .param p1, "threadId"    # I
    .param p2, "beginUptimeMs"    # J

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 32
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v1, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_7
    iget-object v2, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1b

    .line 35
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;

    move-result-object v1

    .line 36
    .local v1, "message":Landroid/os/Message;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-$$Nest$sfgetmDetectingHandler()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 37
    return-void

    .line 34
    .end local v1    # "message":Landroid/os/Message;
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public blacklist endLooperOnce()V
    .registers 4

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 41
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-$$Nest$sfgetmDetectingHandler()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->removeMessages(ILjava/lang/Object;)V

    .line 42
    iget-object v1, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_f
    iget-object v2, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v2
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6e

    goto :goto_6d

    .line 51
    :pswitch_6
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/16 v1, -0xa

    invoke-static {v0, v1}, Landroid/os/statistics/OsUtils;->setThreadPriorityUnconditonally(II)V

    .line 52
    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingThread(Landroid/os/Message;)Ljava/lang/Thread;

    move-result-object v0

    .line 53
    .local v0, "targetThread":Ljava/lang/Thread;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-$$Nest$sfgetmDetectingHandler()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->removeMessages(ILjava/lang/Object;)V

    .line 55
    iget-object v1, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_1e
    iget-object v2, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 57
    .local v2, "isDetecting":Z
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_6a

    .line 58
    if-eqz v2, :cond_6d

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 59
    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingTid(Landroid/os/Message;)I

    move-result v1

    .line 60
    .local v1, "tid":I
    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingBeginUptimeMs(Landroid/os/Message;)J

    move-result-wide v3

    .line 61
    .local v3, "beginUptimeMs":J
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v5

    .line 63
    .local v5, "curUptimeMillis":J
    new-instance v7, Landroid/os/statistics/LooperCheckPoint;

    invoke-direct {v7}, Landroid/os/statistics/LooperCheckPoint;-><init>()V

    .line 64
    .local v7, "checkpoint":Landroid/os/statistics/LooperCheckPoint;
    const/4 v8, 0x5

    iput v8, v7, Landroid/os/statistics/LooperCheckPoint;->eventFlags:I

    .line 65
    iput-wide v3, v7, Landroid/os/statistics/LooperCheckPoint;->beginUptimeMillis:J

    .line 66
    iput-wide v5, v7, Landroid/os/statistics/LooperCheckPoint;->endUptimeMillis:J

    .line 67
    sget v8, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    invoke-static {v8, v1}, Landroid/os/statistics/PerfEvent;->generateCoordinationId(II)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/os/statistics/LooperCheckPoint;->inclusionId:J

    .line 68
    invoke-virtual {v7}, Landroid/os/statistics/LooperCheckPoint;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v8

    check-cast v8, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    .line 69
    .local v8, "details":Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
    sget v9, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    iput v9, v8, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->pid:I

    .line 70
    iput v1, v8, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadId:I

    .line 71
    invoke-static {v7}, Landroid/os/statistics/PerfEventReporter;->report(Landroid/os/statistics/PerfEvent;)V

    .line 73
    invoke-direct {p0, v0, v1, v5, v6}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;

    move-result-object v9

    .line 74
    .local v9, "next":Landroid/os/Message;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-$$Nest$sfgetmDetectingHandler()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v10

    const-wide/16 v11, 0x7d0

    invoke-virtual {v10, v9, v11, v12}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 75
    .end local v1    # "tid":I
    .end local v3    # "beginUptimeMs":J
    .end local v5    # "curUptimeMillis":J
    .end local v7    # "checkpoint":Landroid/os/statistics/LooperCheckPoint;
    .end local v8    # "details":Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
    .end local v9    # "next":Landroid/os/Message;
    goto :goto_6d

    .line 57
    .end local v2    # "isDetecting":Z
    :catchall_6a
    move-exception v2

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v2

    .line 79
    .end local v0    # "targetThread":Ljava/lang/Thread;
    :cond_6d
    :goto_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
