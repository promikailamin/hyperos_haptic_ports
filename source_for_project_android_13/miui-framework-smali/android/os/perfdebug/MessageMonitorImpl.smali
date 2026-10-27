.class public Landroid/os/perfdebug/MessageMonitorImpl;
.super Landroid/os/perfdebug/MessageMonitor;
.source "MessageMonitorImpl.java"

# interfaces
.implements Landroid/os/ILooperMonitorable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;,
        Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_MESSAGE_HISTORY_DUMP_DURATION:I = 0x1b7740

.field private static final blacklist DELAY_BINDER_INDEX:I = 0x7

.field private static final blacklist DELAY_BLKIO_INDEX:I = 0x0

.field private static final blacklist DELAY_CPU_STIME_INDEX:I = 0x6

.field private static final blacklist DELAY_CPU_UTIME_INDEX:I = 0x5

.field private static final blacklist DELAY_FREEPAGES_INDEX:I = 0x2

.field private static final blacklist DELAY_NUMS:I = 0xa

.field private static final blacklist DELAY_PERF_VERSION:I = 0x9

.field private static final blacklist DELAY_RUNNABLE_TIME_INDEX:I = 0x4

.field private static final blacklist DELAY_RUNNING_TIME_INDEX:I = 0x3

.field private static final blacklist DELAY_SLOW_PATH_INDEX:I = 0x8

.field private static final blacklist DELAY_SWAPIN_INDEX:I = 0x1

.field private static final blacklist MAX_DUMP_HISTORY_MSG_COUNT:I = 0x1e

.field private static final blacklist MSG_QUEUE_SIZE:I = 0x200

.field private static final blacklist NORMAL_LOG_CHAR_LENGTH:I = 0x100

.field private static final blacklist SMALL_LOG_CHAR_LENGTH:I = 0x80

.field private static final blacklist TAG:Ljava/lang/String; = "MessageMonitor"

.field private static final blacklist TAG_LOOPER:Ljava/lang/String; = "Looper"

.field private static final blacklist THREASHOLD_LATE_ACTIVITY_MS:I = 0x12c

.field private static final blacklist THREASHOLD_LATE_FRAME_MS:I

.field private static final blacklist THRESHOLD_LONG_MSG_MS:J = 0x7d0L

.field public static blacklist mEnableMonitorMessage:Z

.field private static final blacklist sCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/perfdebug/MessageMonitorImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sCallbacksLock:Ljava/lang/Object;


# instance fields
.field private blacklist mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

.field private blacklist mEnableMonitor:Z

.field private blacklist mEnableMonitorEvent:Z

.field private final blacklist mLongMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

.field private blacklist mLongMsgIndexNext:I

.field private final blacklist mMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

.field private blacklist mMsgIndexNext:I

.field private final blacklist mMsgLock:Ljava/lang/Object;

.field private blacklist mNextSeq:J

.field private blacklist mQueue:Landroid/os/MessageQueue;

.field private blacklist mRunningEvent:Landroid/view/InputEvent;

.field private blacklist mRunningEventDispatchTime:J

.field private blacklist mRunningMessage:Landroid/os/Message;

.field private blacklist mRunningMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

.field private blacklist mThreadName:Ljava/lang/String;

.field private blacklist mTid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 58
    const-string v0, "MessageMonitor"

    sget v1, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_SLOW_DOFRAME_MS:I

    sput v1, Landroid/os/perfdebug/MessageMonitorImpl;->THREASHOLD_LATE_FRAME_MS:I

    .line 104
    :try_start_6
    const-string v1, "Load libmiui_runtime"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, "miui_runtime"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_10} :catch_11

    .line 108
    goto :goto_17

    .line 106
    :catch_11
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "can\'t loadLibrary libmiui_runtime"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/perfdebug/MessageMonitorImpl;->sCallbacks:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/perfdebug/MessageMonitorImpl;->sCallbacksLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Landroid/os/perfdebug/MessageMonitor;-><init>()V

    .line 84
    const/16 v0, 0x200

    new-array v1, v0, [Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    iput-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgIndexNext:I

    .line 86
    new-array v0, v0, [Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 87
    iput v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgIndexNext:I

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgLock:Ljava/lang/Object;

    .line 90
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mNextSeq:J

    return-void
.end method

.method private blacklist addMessageToHistoryIfNeed(Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V
    .registers 10
    .param p1, "monitorInfo"    # Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 520
    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_3
    iget-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    iget v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgIndexNext:I

    aget-object v3, v1, v2

    if-nez v3, :cond_12

    .line 522
    new-instance v3, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    invoke-direct {v3}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;-><init>()V

    aput-object v3, v1, v2

    .line 524
    :cond_12
    iget-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    iget v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgIndexNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->update(Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V

    .line 525
    iget v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgIndexNext:I

    const/16 v2, 0x200

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Landroid/os/perfdebug/MessageMonitorImpl;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgIndexNext:I

    .line 526
    invoke-virtual {p1}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-lez v1, :cond_50

    .line 527
    iget-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    iget v4, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgIndexNext:I

    aget-object v5, v1, v4

    if-nez v5, :cond_3f

    .line 528
    new-instance v5, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    invoke-direct {v5}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;-><init>()V

    aput-object v5, v1, v4

    .line 530
    :cond_3f
    iget-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    iget v4, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgIndexNext:I

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->update(Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V

    .line 531
    iget v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgIndexNext:I

    invoke-static {v1, v3, v2}, Landroid/os/perfdebug/MessageMonitorImpl;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgIndexNext:I

    .line 533
    :cond_50
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v1
.end method

.method private blacklist checkActivityLifecycle(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "info"    # Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 408
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getLatencyMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    .line 409
    return-void

    .line 411
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    .line 412
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransaction;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 413
    .local v1, "token":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 414
    .local v2, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v2, v1}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v3

    .line 415
    .local v3, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v3, :cond_1e

    return-void

    .line 416
    :cond_1e
    invoke-virtual {v2, v1}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v4

    .line 417
    .local v4, "activity":Landroid/app/Activity;
    if-nez v4, :cond_25

    return-void

    .line 418
    :cond_25
    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 419
    .local v5, "componentName":Landroid/content/ComponentName;
    sget v6, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_90

    .line 420
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v7, 0x35c3716a    # 1.456164E-6f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iget-wide v8, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iget-wide v8, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planERTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getLatencyMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget v8, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->curProcState:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {v7, v6}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 431
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto/16 :goto_123

    .line 432
    :cond_90
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 433
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v7, "PerfMonitor"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v7, " looperActivity : package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v7, " time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 438
    const-string v7, "ms latency="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getLatencyMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 440
    iget-wide v7, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->perfVersion:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_ef

    .line 441
    const-string v7, "ms running="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunningTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 444
    :cond_ef
    const-string v7, "ms "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " procState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->curProcState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-wide v7, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    invoke-virtual {p0, v7, v8}, Landroid/os/perfdebug/MessageMonitorImpl;->getHistoryMsgInfoString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Looper"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_123
    return-void
.end method

.method private blacklist checkDoFrame(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "info"    # Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 358
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getLatencyMillis()J

    move-result-wide v0

    sget v2, Landroid/os/perfdebug/MessageMonitorImpl;->THREASHOLD_LATE_FRAME_MS:I

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-gtz v0, :cond_15

    .line 359
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-gtz v0, :cond_15

    .line 360
    return-void

    .line 363
    :cond_15
    sget v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_93

    .line 364
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getLatencyMillis()J

    move-result-wide v0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_f6

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v1, 0x35c3716b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iget-wide v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-wide v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planERTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-static {}, Landroid/os/perfdebug/VsyncFrameImpl;->getInstance()Landroid/os/perfdebug/VsyncFrameImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/perfdebug/VsyncFrameImpl;->getCurFrame()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getLatencyMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->curProcState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-static {v1, v0}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 378
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_f6

    .line 380
    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PerfMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v1, " doFrame : time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 384
    const-string v1, "ms vsyncFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {}, Landroid/os/perfdebug/VsyncFrameImpl;->getInstance()Landroid/os/perfdebug/VsyncFrameImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/perfdebug/VsyncFrameImpl;->getCurFrame()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    const-string v1, " latency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getLatencyMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 388
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " procState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->curProcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-wide v1, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    invoke-virtual {p0, v1, v2}, Landroid/os/perfdebug/MessageMonitorImpl;->getHistoryMsgInfoString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Looper"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_f6
    :goto_f6
    return-void
.end method

.method private blacklist checkEssentialMsg(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "info"    # Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 334
    invoke-static {p1}, Landroid/os/perfdebug/MessageMonitorImpl;->isActivityTrancaction(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 335
    invoke-direct {p0, p1, p2}, Landroid/os/perfdebug/MessageMonitorImpl;->checkActivityLifecycle(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V

    goto :goto_13

    .line 336
    :cond_a
    invoke-static {p1}, Landroid/os/perfdebug/MessageMonitorImpl;->isDoFrame(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 337
    invoke-direct {p0, p1, p2}, Landroid/os/perfdebug/MessageMonitorImpl;->checkDoFrame(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V

    .line 339
    :cond_13
    :goto_13
    return-void
.end method

.method private blacklist checkMsg(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "info"    # Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 298
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v0

    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THREASHOLD_LOOPER_DISPATCH_MS:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_165

    .line 299
    sget v0, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_132

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-wide v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->mSeq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-wide v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-wide v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planERTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-wide v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getLatencyMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 311
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunningTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/16 v6, -0x1

    if-ltz v2, :cond_8c

    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunningTime()J

    move-result-wide v2

    goto :goto_8d

    :cond_8c
    move-wide v2, v6

    :goto_8d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunnableTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_a1

    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunnableTime()J

    move-result-wide v2

    goto :goto_a2

    :cond_a1
    move-wide v2, v6

    :goto_a2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getCpuUTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_b6

    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getCpuUTime()J

    move-result-wide v2

    goto :goto_b7

    :cond_b6
    move-wide v2, v6

    :goto_b7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getCpuSTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_cb

    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getCpuSTime()J

    move-result-wide v2

    goto :goto_cc

    :cond_cb
    move-wide v2, v6

    :goto_cc
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getBlkioDelay()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e0

    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getBlkioDelay()J

    move-result-wide v2

    goto :goto_e1

    :cond_e0
    move-wide v2, v6

    :goto_e1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getSwapinDelay()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_f5

    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getSwapinDelay()J

    move-result-wide v2

    goto :goto_f6

    :cond_f5
    move-wide v2, v6

    :goto_f6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getReclaimDelay()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_109

    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getReclaimDelay()J

    move-result-wide v6

    :cond_109
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->targetName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_120

    iget-object v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    goto :goto_122

    :cond_120
    const-string v2, ""

    :goto_122
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget v2, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->msgWhat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_12e
    invoke-static {v1, v0}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_165

    .line 324
    :cond_132
    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_165

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfMonitor longMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->curProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "logMsg":Ljava/lang/String;
    const-string v1, "Looper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    .line 330
    .end local v0    # "logMsg":Ljava/lang/String;
    :cond_165
    :goto_165
    invoke-direct {p0, p1, p2}, Landroid/os/perfdebug/MessageMonitorImpl;->checkEssentialMsg(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V

    .line 331
    return-void
.end method

.method private blacklist dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 6
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .line 760
    sget-boolean v0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitorMessage:Z

    if-eqz v0, :cond_c

    .line 761
    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    invoke-direct {p0, p1, p2, v0}, Landroid/os/perfdebug/MessageMonitorImpl;->dumpRunningMessage(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V

    .line 762
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/perfdebug/MessageMonitorImpl;->dumpLtMessageHistory(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 764
    :cond_c
    return-void
.end method

.method private blacklist dumpLtMessageHistory(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .line 732
    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "History of long time messages on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/os/perfdebug/MessageMonitorImpl;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    iget v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgIndexNext:I

    .line 735
    .local v1, "lastIndex":I
    move v2, v1

    .line 736
    .local v2, "ringIndex":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 737
    .local v3, "curUptime":J
    const/4 v5, 0x0

    .line 739
    .local v5, "i":I
    :cond_2f
    const/4 v6, -0x1

    const/16 v7, 0x200

    invoke-static {v2, v6, v7}, Landroid/os/perfdebug/MessageMonitorImpl;->ringAdvance(III)I

    move-result v6

    move v2, v6

    .line 740
    iget-object v6, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    aget-object v6, v6, v2

    .line 741
    .local v6, "monitorInfo":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    if-eqz v6, :cond_74

    iget-wide v7, v6, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    sub-long v7, v3, v7

    cmp-long v7, v7, p3

    if-lez v7, :cond_46

    goto :goto_74

    .line 744
    :cond_46
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Msg #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 745
    invoke-virtual {v6}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 744
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    .end local v6    # "monitorInfo":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    if-ne v2, v1, :cond_2f

    .line 747
    .end local v1    # "lastIndex":I
    .end local v2    # "ringIndex":I
    .end local v3    # "curUptime":J
    .end local v5    # "i":I
    monitor-exit v0

    .line 748
    return-void

    .line 742
    .restart local v1    # "lastIndex":I
    .restart local v2    # "ringIndex":I
    .restart local v3    # "curUptime":J
    .restart local v5    # "i":I
    .restart local v6    # "monitorInfo":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    :cond_74
    :goto_74
    monitor-exit v0

    return-void

    .line 747
    .end local v1    # "lastIndex":I
    .end local v2    # "ringIndex":I
    .end local v3    # "curUptime":J
    .end local v5    # "i":I
    .end local v6    # "monitorInfo":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v1
.end method

.method private blacklist dumpRunningMessage(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "info"    # Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 751
    if-nez p3, :cond_3

    .line 752
    return-void

    .line 754
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Current running message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method private blacklist getHistoryLongMsgInfos(J)Ljava/util/List;
    .registers 10
    .param p1, "sinceUptime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;>;"
    iget v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgIndexNext:I

    const/4 v2, -0x1

    const/16 v3, 0x200

    invoke-static {v1, v2, v3}, Landroid/os/perfdebug/MessageMonitorImpl;->ringAdvance(III)I

    move-result v1

    .line 630
    .local v1, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    const/16 v5, 0x1e

    if-ge v4, v5, :cond_2f

    .line 631
    iget-object v5, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    aget-object v5, v5, v1

    if-eqz v5, :cond_2f

    iget-wide v5, v5, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    cmp-long v5, v5, p1

    if-gez v5, :cond_20

    .line 633
    goto :goto_2f

    .line 635
    :cond_20
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mLongMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    aget-object v6, v6, v1

    invoke-interface {v0, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 636
    invoke-static {v1, v2, v3}, Landroid/os/perfdebug/MessageMonitorImpl;->ringAdvance(III)I

    move-result v1

    .line 630
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 638
    .end local v4    # "i":I
    :cond_2f
    :goto_2f
    return-object v0
.end method

.method private blacklist getHistoryMsgInfos(J)Ljava/util/List;
    .registers 10
    .param p1, "sinceUptime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;",
            ">;"
        }
    .end annotation

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;>;"
    iget v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgIndexNext:I

    const/4 v2, -0x1

    const/16 v3, 0x200

    invoke-static {v1, v2, v3}, Landroid/os/perfdebug/MessageMonitorImpl;->ringAdvance(III)I

    move-result v1

    .line 568
    .local v1, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v3, :cond_2d

    .line 569
    iget-object v5, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    aget-object v5, v5, v1

    if-eqz v5, :cond_2d

    iget-wide v5, v5, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    cmp-long v5, v5, p1

    if-gez v5, :cond_1e

    .line 571
    goto :goto_2d

    .line 573
    :cond_1e
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    aget-object v6, v6, v1

    invoke-interface {v0, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 574
    invoke-static {v1, v2, v3}, Landroid/os/perfdebug/MessageMonitorImpl;->ringAdvance(III)I

    move-result v1

    .line 568
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 576
    .end local v4    # "i":I
    :cond_2d
    :goto_2d
    return-object v0
.end method

.method private blacklist getThreadInfo()Ljava/lang/String;
    .registers 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mTid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 490
    const-string v0, ""

    .line 491
    .local v0, "keyCode":Ljava/lang/String;
    const-string v1, ""

    .line 492
    .local v1, "action":Ljava/lang/String;
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_1d

    .line 493
    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    .line 494
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x0

    .line 495
    .local v3, "touchKey":Z
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    .line 497
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    goto :goto_2e

    .end local v3    # "touchKey":Z
    :cond_1d
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_6c

    .line 498
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 499
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    const/4 v3, 0x1

    .line 500
    .restart local v3    # "touchKey":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    .line 501
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    nop

    .line 504
    :goto_2e
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 505
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "(type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    if-eqz v3, :cond_3f

    const-string v4, "motion"

    goto :goto_41

    :cond_3f
    const-string v4, "key"

    :goto_41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v4, " seq="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    if-nez v3, :cond_5a

    .line 510
    const-string v4, " code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_5a
    const-string v4, " action="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 502
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "touchKey":Z
    :cond_6c
    const-string v2, ""

    return-object v2
.end method

.method private static blacklist isActivityTrancaction(Landroid/os/Message;)Z
    .registers 5
    .param p0, "msg"    # Landroid/os/Message;

    .line 399
    const/4 v0, 0x0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 400
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.ActivityThread$H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_28

    .line 403
    :cond_1e
    const/16 v1, 0x9f

    .line 404
    .local v1, "EXECUTE_TRANSACTION":I
    iget v2, p0, Landroid/os/Message;->what:I

    const/16 v3, 0x9f

    if-ne v2, v3, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0

    .line 401
    .end local v1    # "EXECUTE_TRANSACTION":I
    :cond_28
    :goto_28
    return v0
.end method

.method private static blacklist isDoFrame(Landroid/os/Message;)Z
    .registers 6
    .param p0, "msg"    # Landroid/os/Message;

    .line 342
    const/4 v0, 0x0

    if-eqz p0, :cond_43

    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 343
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 344
    const-string v2, "android.view.Choreographer$FrameHandler"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_43

    .line 347
    :cond_1e
    const/4 v1, 0x0

    .line 348
    .local v1, "MSG_DO_FRAME":I
    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-nez v2, :cond_25

    .line 349
    return v3

    .line 351
    :cond_25
    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 352
    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 353
    const-string v4, "android.view.Choreographer$FrameDisplayEventReceiver"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    move v0, v3

    goto :goto_42

    :cond_41
    nop

    .line 351
    :goto_42
    return v0

    .line 345
    .end local v1    # "MSG_DO_FRAME":I
    :cond_43
    :goto_43
    return v0
.end method

.method public static native blacklist nGetThreadCpuTime()J
.end method

.method public static native blacklist nGetThreadDelay([J)V
.end method

.method private static blacklist ringAdvance(III)I
    .registers 5
    .param p0, "origin"    # I
    .param p1, "increment"    # I
    .param p2, "size"    # I

    .line 537
    add-int v0, p0, p1

    rem-int/2addr v0, p2

    .line 538
    .local v0, "index":I
    if-gez v0, :cond_8

    add-int v1, v0, p2

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    return v1
.end method

.method private blacklist updateCallbackIfNeed(Z)V
    .registers 7
    .param p1, "enableMonitor"    # Z

    .line 242
    sget-object v0, Landroid/os/perfdebug/MessageMonitorImpl;->sCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    const/4 v1, -0x1

    .line 244
    .local v1, "findIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    :try_start_5
    sget-object v3, Landroid/os/perfdebug/MessageMonitorImpl;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1e

    .line 245
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_1b

    .line 246
    move v1, v2

    .line 247
    goto :goto_1e

    .line 244
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 250
    .end local v2    # "i":I
    :cond_1e
    :goto_1e
    const/4 v2, -0x1

    if-eqz p1, :cond_2c

    if-ne v1, v2, :cond_2c

    .line 251
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 252
    :cond_2c
    if-nez p1, :cond_33

    if-eq v1, v2, :cond_33

    .line 253
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 255
    .end local v1    # "findIndex":I
    :cond_33
    :goto_33
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_35

    throw v1
.end method


# virtual methods
.method public blacklist checkInputEvent(Landroid/view/InputEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 457
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableLogMonitor()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 459
    .local v0, "latency":J
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THRESHOLD_INPUT_DISPATCH_MS:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_17

    .line 460
    return-void

    .line 462
    :cond_17
    sget v2, Landroid/os/perfdebug/PerfDebugMonitorImpl;->DEBUG_VERSION:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_70

    .line 463
    invoke-direct {p0, p1}, Landroid/os/perfdebug/MessageMonitorImpl;->inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "eventInfo":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v4, 0x35c37553

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-static {v4, v3}, Landroid/os/perfdebug/PerfJsonEventUtils;->writeEvent(ILjava/util/List;)V

    .line 474
    .end local v2    # "eventInfo":Ljava/lang/String;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_a4

    .line 475
    :cond_70
    invoke-direct {p0, p1}, Landroid/os/perfdebug/MessageMonitorImpl;->inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v2

    .line 476
    .restart local v2    # "eventInfo":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 477
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "PerfMonitor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v4, " dispatchInputEvent : latency="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 480
    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/os/perfdebug/MessageMonitorImpl;->getHistoryMsgInfoString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Looper"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v0    # "latency":J
    .end local v2    # "eventInfo":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_a4
    :goto_a4
    return-void
.end method

.method public blacklist dumpAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 783
    const-wide/32 v0, 0x1b7740

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/perfdebug/MessageMonitorImpl;->dumpAll(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dumpAll(Ljava/lang/String;J)Ljava/lang/String;
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .line 787
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 788
    .local v0, "start":J
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 789
    .local v2, "stringWriter":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 790
    .local v3, "writer":Ljava/io/PrintWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Dump time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 791
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 790
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Current looper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/os/perfdebug/MessageMonitorImpl;->getThreadInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    invoke-direct {p0, v3, p1, p2, p3}, Landroid/os/perfdebug/MessageMonitorImpl;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 795
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 796
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump Looper message took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MessageMonitor"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public blacklist dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 768
    sget-boolean v0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitorMessage:Z

    if-nez v0, :cond_5

    .line 769
    return-void

    .line 771
    :cond_5
    sget-object v0, Landroid/os/perfdebug/MessageMonitorImpl;->sCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 772
    :try_start_8
    sget-object v1, Landroid/os/perfdebug/MessageMonitorImpl;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 773
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/perfdebug/MessageMonitorImpl;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/perfdebug/MessageMonitorImpl;

    .line 774
    .local v3, "monitor":Landroid/os/perfdebug/MessageMonitorImpl;
    if-eqz v3, :cond_28

    .line 775
    const-wide/32 v4, 0x1b7740

    invoke-direct {v3, p1, p2, v4, v5}, Landroid/os/perfdebug/MessageMonitorImpl;->dumpLtMessageHistory(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 777
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/perfdebug/MessageMonitorImpl;>;"
    .end local v3    # "monitor":Landroid/os/perfdebug/MessageMonitorImpl;
    :cond_28
    goto :goto_e

    .line 778
    :cond_29
    monitor-exit v0

    .line 779
    return-void

    .line 778
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist enableMonitor(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 221
    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 222
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v1

    if-nez v1, :cond_a

    .line 223
    return-void

    .line 225
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitor:Z

    .line 227
    :try_start_d
    iget-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mQueue:Landroid/os/MessageQueue;

    if-eqz v1, :cond_1c

    .line 228
    const-string v2, "enableMonitor"

    const-class v3, Ljava/lang/Void;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_1b

    goto :goto_1c

    .line 230
    :catch_1b
    move-exception v0

    .line 231
    :cond_1c
    :goto_1c
    goto :goto_1f

    .line 233
    :cond_1d
    iput-boolean v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitor:Z

    .line 235
    :goto_1f
    return-void
.end method

.method public blacklist enableMonitorEvent(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 185
    iput-boolean p1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitorEvent:Z

    .line 186
    return-void
.end method

.method public blacklist enableMonitorMessage(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 211
    sput-boolean p1, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitorMessage:Z

    .line 212
    invoke-direct {p0, p1}, Landroid/os/perfdebug/MessageMonitorImpl;->updateCallbackIfNeed(Z)V

    .line 213
    return-void
.end method

.method public blacklist getHistoryLongMessagesInfoInPeriod(JI)Ljava/util/List;
    .registers 9
    .param p1, "anrtime"    # J
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    int-to-long v1, p3

    sub-long v1, p1, v1

    invoke-direct {p0, v1, v2}, Landroid/os/perfdebug/MessageMonitorImpl;->getHistoryLongMsgInfos(J)Ljava/util/List;

    move-result-object v1

    .line 620
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 621
    .local v3, "info":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    invoke-virtual {v3}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    .end local v3    # "info":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    goto :goto_10

    .line 623
    :cond_24
    return-object v0
.end method

.method public blacklist getHistoryMsgInfoString(J)Ljava/lang/String;
    .registers 11
    .param p1, "eventTime"    # J

    .line 542
    invoke-direct {p0, p1, p2}, Landroid/os/perfdebug/MessageMonitorImpl;->getHistoryMsgInfos(J)Ljava/util/List;

    move-result-object v0

    .line 543
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 544
    const-string v1, ""

    return-object v1

    .line 546
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 547
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, " historyMsgCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_62

    .line 550
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 551
    .local v3, "thisInfo":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    invoke-virtual {v3}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v4

    sget v6, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THREASHOLD_LOOPER_DISPATCH_MS:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_5f

    .line 552
    const-string v4, " (msgIndex="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    const-string v4, " wall="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v3}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 556
    const-string v4, "ms "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v3}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .end local v3    # "thisInfo":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 561
    .end local v2    # "i":I
    :cond_62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getHistoryMsgInfoStringInPeriod(JI)Ljava/util/List;
    .registers 29
    .param p1, "anrtime"    # J
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 642
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, v0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgIndexNext:I

    const/4 v4, -0x1

    const/16 v5, 0x200

    invoke-static {v3, v4, v5}, Landroid/os/perfdebug/MessageMonitorImpl;->ringAdvance(III)I

    move-result v3

    .line 646
    .local v3, "index":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_16
    const-string v7, "MIUIScout ANR"

    const/4 v8, 0x0

    if-ge v6, v5, :cond_43

    .line 647
    iget-object v9, v0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    aget-object v9, v9, v3

    if-eqz v9, :cond_3b

    iget-wide v9, v9, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    move/from16 v11, p3

    int-to-long v12, v11

    sub-long v12, p1, v12

    cmp-long v9, v9, v12

    if-gez v9, :cond_2d

    goto :goto_3d

    .line 652
    :cond_2d
    iget-object v7, v0, Landroid/os/perfdebug/MessageMonitorImpl;->mMsgHistoryQueue:[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    aget-object v7, v7, v3

    invoke-interface {v1, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 653
    invoke-static {v3, v4, v5}, Landroid/os/perfdebug/MessageMonitorImpl;->ringAdvance(III)I

    move-result v3

    .line 646
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 647
    :cond_3b
    move/from16 v11, p3

    .line 649
    :goto_3d
    const-string v4, "AnrScout only want msg within 20s, so stop here"

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    goto :goto_45

    .line 646
    :cond_43
    move/from16 v11, p3

    .line 656
    .end local v6    # "i":I
    :goto_45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_50

    .line 657
    const-string v4, "There is no history msgs within 20s"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_50
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 660
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "In recent 20s, total historyMsgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v8, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 665
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 667
    .local v5, "sameTargetMsgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const-string v9, ")"

    const/16 v10, 0x1e

    if-ge v6, v7, :cond_13b

    .line 668
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 669
    .local v7, "thisInfo":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-gt v12, v10, :cond_b5

    .line 670
    if-eqz v7, :cond_b5

    invoke-virtual {v7}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v12

    sget v10, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THREASHOLD_LOOPER_DISPATCH_MS:I

    int-to-long v14, v10

    cmp-long v10, v12, v14

    if-lez v10, :cond_b5

    .line 671
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v4, v8, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 672
    const-string v10, "execute time>50ms (msgIndex="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v7}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 680
    :cond_b5
    if-eqz v7, :cond_136

    .line 681
    const/4 v9, 0x0

    .line 682
    .local v9, "target":Ljava/lang/String;
    iget-object v10, v7, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->targetName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_136

    .line 683
    iget-object v9, v7, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->targetName:Ljava/lang/String;

    .line 684
    const/4 v10, 0x0

    .line 685
    .local v10, "msgwhat":Ljava/lang/String;
    iget-object v12, v7, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_ce

    .line 686
    iget-object v10, v7, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    goto :goto_d4

    .line 688
    :cond_ce
    iget v12, v7, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->msgWhat:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 690
    :goto_d4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 691
    .local v15, "tgtMsgKey":Ljava/lang/String;
    const/16 v22, 0x0

    .line 692
    .local v22, "thisSameTgtMsgImpl":Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
    invoke-virtual {v5, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_119

    .line 693
    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;

    .line 694
    .end local v22    # "thisSameTgtMsgImpl":Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
    .local v12, "thisSameTgtMsgImpl":Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
    iget v13, v12, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->count:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->count:I

    .line 695
    iget-wide v13, v12, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalWallTime:J

    invoke-virtual {v7}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v16

    add-long v13, v13, v16

    iput-wide v13, v12, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalWallTime:J

    .line 696
    iget-wide v13, v12, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalRunningTime:J

    invoke-virtual {v7}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunningTime()J

    move-result-wide v16

    add-long v13, v13, v16

    iput-wide v13, v12, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalRunningTime:J

    .line 697
    iget-wide v13, v12, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalRunnableTime:J

    invoke-virtual {v7}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunnableTime()J

    move-result-wide v16

    add-long v13, v13, v16

    iput-wide v13, v12, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalRunnableTime:J

    move-object v8, v15

    goto :goto_133

    .line 699
    .end local v12    # "thisSameTgtMsgImpl":Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
    .restart local v22    # "thisSameTgtMsgImpl":Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
    :cond_119
    const/16 v23, 0x1

    .line 700
    .local v23, "count":I
    new-instance v24, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;

    .line 701
    invoke-virtual {v7}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v16

    invoke-virtual {v7}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunningTime()J

    move-result-wide v18

    .line 702
    invoke-virtual {v7}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunnableTime()J

    move-result-wide v20

    move-object/from16 v12, v24

    move-object v13, v9

    move-object v14, v10

    move-object v8, v15

    .end local v15    # "tgtMsgKey":Ljava/lang/String;
    .local v8, "tgtMsgKey":Ljava/lang/String;
    move/from16 v15, v23

    invoke-direct/range {v12 .. v21}, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V

    .line 704
    .end local v22    # "thisSameTgtMsgImpl":Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
    .end local v23    # "count":I
    .restart local v12    # "thisSameTgtMsgImpl":Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
    :goto_133
    invoke-virtual {v5, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .end local v7    # "thisInfo":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    .end local v8    # "tgtMsgKey":Ljava/lang/String;
    .end local v9    # "target":Ljava/lang/String;
    .end local v10    # "msgwhat":Ljava/lang/String;
    .end local v12    # "thisSameTgtMsgImpl":Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
    :cond_136
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_70

    .line 709
    .end local v6    # "i":I
    :cond_13b
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_143
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;

    .line 710
    .local v7, "thisSameTgtMsgImpl":Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v10, :cond_157

    .line 711
    const/4 v12, 0x0

    goto :goto_18d

    .line 712
    :cond_157
    iget-wide v12, v7, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalWallTime:J

    sget v8, Landroid/os/perfdebug/PerfDebugMonitorImpl;->THREASHOLD_LOOPER_DISPATCH_MS:I

    int-to-long v14, v8

    cmp-long v8, v12, v14

    if-lez v8, :cond_18a

    .line 713
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 714
    const-string v8, "messages for the same target "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget-object v8, v7, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->targetName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string v8, " execute time>50ms ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v7}, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    invoke-interface {v2, v12, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_18b

    .line 712
    :cond_18a
    const/4 v12, 0x0

    .line 721
    .end local v7    # "thisSameTgtMsgImpl":Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
    :goto_18b
    goto :goto_143

    .line 709
    :cond_18c
    const/4 v12, 0x0

    .line 723
    :goto_18d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v12, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/os/perfdebug/MessageMonitorImpl;->getRunningMessageInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v12, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 726
    return-object v2
.end method

.method public blacklist getLongestMessageInPeriod(JI)Ljava/lang/String;
    .registers 16
    .param p1, "anrtime"    # J
    .param p3, "duration"    # I

    .line 580
    const-string v0, ""

    .line 581
    .local v0, "targetName":Ljava/lang/String;
    const-string v1, ""

    .line 582
    .local v1, "callbackName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 584
    .local v2, "msgWhat":I
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl;->getRunningMessageDuration()J

    move-result-wide v3

    .line 585
    .local v3, "wallMs":J
    const-wide/16 v5, 0x7d0

    cmp-long v7, v3, v5

    if-lez v7, :cond_47

    .line 586
    iget-object v5, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessage:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    const-string v6, ""

    if-nez v5, :cond_1b

    move-object v5, v6

    goto :goto_29

    :cond_1b
    iget-object v5, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessage:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_29
    move-object v0, v5

    .line 587
    iget-object v5, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessage:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v5

    if-nez v5, :cond_33

    goto :goto_41

    :cond_33
    iget-object v5, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessage:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    :goto_41
    move-object v1, v6

    .line 588
    iget-object v5, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessage:Landroid/os/Message;

    iget v2, v5, Landroid/os/Message;->what:I

    goto :goto_6e

    .line 590
    :cond_47
    int-to-long v7, p3

    sub-long v7, p1, v7

    invoke-direct {p0, v7, v8}, Landroid/os/perfdebug/MessageMonitorImpl;->getHistoryLongMsgInfos(J)Ljava/util/List;

    move-result-object v7

    .line 591
    .local v7, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_52
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 592
    .local v9, "info":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    invoke-virtual {v9}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v10

    cmp-long v10, v10, v5

    if-lez v10, :cond_6d

    .line 593
    iget-object v0, v9, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->targetName:Ljava/lang/String;

    .line 594
    iget-object v1, v9, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    .line 595
    iget v2, v9, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->msgWhat:I

    .line 596
    goto :goto_6e

    .line 598
    .end local v9    # "info":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    :cond_6d
    goto :goto_52

    .line 601
    .end local v7    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;>;"
    :cond_6e
    :goto_6e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .local v5, "b":Ljava/lang/StringBuilder;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ad

    .line 603
    const-string v6, "handler="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v6, "android.app.ActivityThread$H"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    const/16 v6, 0x6e

    if-lt v2, v6, :cond_94

    .line 605
    const-string v6, " what>=110"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ad

    .line 607
    :cond_94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a4

    .line 608
    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ad

    .line 610
    :cond_a4
    const-string v6, " what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    :cond_ad
    :goto_ad
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public blacklist getRunningEvent()Landroid/view/InputEvent;
    .registers 2

    .line 157
    iget-boolean v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitorEvent:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningEvent:Landroid/view/InputEvent;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public blacklist getRunningEventDuration(Landroid/view/InputEvent;)J
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 162
    iget-boolean v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitorEvent:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningEvent:Landroid/view/InputEvent;

    if-eqz v0, :cond_1a

    if-ne p1, v0, :cond_1a

    iget-wide v3, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningEventDispatchTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1a

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningEventDispatchTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 166
    :cond_1a
    return-wide v1
.end method

.method public blacklist getRunningMessage()Landroid/os/Message;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessage:Landroid/os/Message;

    return-object v0
.end method

.method public blacklist getRunningMessageDuration()J
    .registers 5

    .line 118
    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 119
    if-eqz v0, :cond_10

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    iget-wide v2, v2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 123
    :cond_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getRunningMessageInfo()Ljava/lang/String;
    .registers 7

    .line 128
    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    if-eqz v1, :cond_88

    .line 131
    const/16 v1, 0xa

    new-array v1, v1, [J

    .line 132
    .local v1, "delays":[J
    invoke-static {v1}, Landroid/os/perfdebug/MessageMonitorImpl;->nGetThreadDelay([J)V

    .line 133
    iget-object v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishBlkioDelay:J

    .line 134
    iget-object v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishSwapinDelay:J

    .line 135
    iget-object v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    const/4 v3, 0x2

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishReclaimDelay:J

    .line 136
    iget-object v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    const/4 v3, 0x3

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishRunningTime:J

    .line 137
    iget-object v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    const/4 v3, 0x4

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishRunnableTime:J

    .line 138
    iget-object v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    const/4 v3, 0x5

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishCpuUTime:J

    .line 139
    iget-object v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    const/4 v3, 0x6

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishCpuSTime:J

    .line 140
    iget-object v2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    const/16 v3, 0x9

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->perfVersion:J

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    iget-wide v4, v4, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchTime:J

    sub-long/2addr v2, v4

    .line 142
    .local v2, "duration":J
    const-string v4, " (Current message:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v4, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mCurrentMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    invoke-virtual {v4}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .end local v1    # "delays":[J
    .end local v2    # "duration":J
    goto :goto_8d

    .line 149
    :cond_88
    const-string v1, " (Current message:null)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :goto_8d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getThreadTid()I
    .registers 2

    .line 198
    iget v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mTid:I

    return v0
.end method

.method public blacklist isMonitorLooper()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitor:Z

    return v0
.end method

.method public blacklist logLateFrameIfNeed(JJ)V
    .registers 5
    .param p1, "delayNanos"    # J
    .param p3, "frameTimeNanos"    # J

    .line 803
    return-void
.end method

.method public blacklist markDispatch(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "msginfo"    # Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    .line 260
    sget-boolean v0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitorMessage:Z

    if-eqz v0, :cond_43

    instance-of v0, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    if-nez v0, :cond_9

    goto :goto_43

    .line 263
    :cond_9
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceLooper()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 264
    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "looper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 266
    :cond_2f
    move-object v0, p2

    check-cast v0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 267
    .local v0, "info":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    iput-object p1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessage:Landroid/os/Message;

    .line 268
    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 269
    iget-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mNextSeq:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mNextSeq:J

    iput-wide v1, v0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->mSeq:J

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->markDispatch(Landroid/os/Message;)V

    .line 271
    return-void

    .line 261
    .end local v0    # "info":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    :cond_43
    :goto_43
    return-void
.end method

.method public blacklist markFinish(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "msginfo"    # Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    .line 275
    sget-boolean v0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitorMessage:Z

    if-eqz v0, :cond_26

    instance-of v0, p2, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    if-nez v0, :cond_9

    goto :goto_26

    .line 278
    :cond_9
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->isEnableTraceLooper()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 279
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 289
    :cond_14
    move-object v0, p2

    check-cast v0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 290
    .local v0, "info":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessage:Landroid/os/Message;

    .line 291
    iput-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningMessageInfo:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 292
    invoke-virtual {v0, p1}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->markFinish(Landroid/os/Message;)V

    .line 293
    invoke-direct {p0, p1, v0}, Landroid/os/perfdebug/MessageMonitorImpl;->checkMsg(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V

    .line 294
    invoke-direct {p0, v0}, Landroid/os/perfdebug/MessageMonitorImpl;->addMessageToHistoryIfNeed(Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V

    .line 295
    return-void

    .line 276
    .end local v0    # "info":Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    :cond_26
    :goto_26
    return-void
.end method

.method public blacklist markInputEventDispatch(Landroid/view/InputEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 171
    iget-boolean v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitorEvent:Z

    if-nez v0, :cond_5

    return-void

    .line 172
    :cond_5
    iput-object p1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningEvent:Landroid/view/InputEvent;

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningEventDispatchTime:J

    .line 174
    return-void
.end method

.method public blacklist markInputEventDispatchFinish(Landroid/view/InputEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 178
    iget-boolean v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mEnableMonitorEvent:Z

    if-nez v0, :cond_5

    return-void

    .line 179
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningEvent:Landroid/view/InputEvent;

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mRunningEventDispatchTime:J

    .line 181
    return-void
.end method

.method public blacklist setQueue(Landroid/os/MessageQueue;)V
    .registers 2
    .param p1, "queue"    # Landroid/os/MessageQueue;

    .line 202
    iput-object p1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mQueue:Landroid/os/MessageQueue;

    .line 203
    return-void
.end method

.method public blacklist setThreadNameAndTid(Ljava/lang/String;I)V
    .registers 3
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "tid"    # I

    .line 192
    iput-object p1, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mThreadName:Ljava/lang/String;

    .line 193
    iput p2, p0, Landroid/os/perfdebug/MessageMonitorImpl;->mTid:I

    .line 194
    return-void
.end method
