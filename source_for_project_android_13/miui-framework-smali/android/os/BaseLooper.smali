.class public abstract Landroid/os/BaseLooper;
.super Ljava/lang/Object;
.source "BaseLooper.java"

# interfaces
.implements Landroid/os/ILooperMonitorable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseLooper$MessageMonitorInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_MESSAGE_HISTORY_DUMP_DURATION:I = 0x1b7740

.field private static final blacklist DELAY_BLKIO_INDEX:I = 0x0

.field private static final blacklist DELAY_FREEPAGES_INDEX:I = 0x2

.field private static final blacklist DELAY_NUMS:I = 0x5

.field private static final blacklist DELAY_RUNNABLE_TIME_INDEX:I = 0x4

.field private static final blacklist DELAY_RUNNING_TIME_INDEX:I = 0x3

.field private static final blacklist DELAY_SWAPIN_INDEX:I = 0x1

.field private static final blacklist MSG_QUEUE_SIZE:I = 0x200

.field private static final blacklist TAG:Ljava/lang/String; = "BaseLooper"

.field private static final blacklist TAG_LOOPER:Ljava/lang/String; = "Looper"

.field private static final blacklist THREASHOLD_LATE_ACTIVITY_MS:I = 0x12c

.field private static final blacklist THREASHOLD_LATE_FRAME_MS:I = 0x12c

.field private static final blacklist THREASHOLD_MSG_PROCESS_MS:I = 0x32

.field private static final blacklist THRESHOLD_SLOW_INPUT_MS:I = 0x12c

.field private static final blacklist sCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/BaseLooper;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sCallbacksLock:Ljava/lang/Object;


# instance fields
.field private blacklist mEnableAnrMonitor:Z

.field private blacklist mEnableMonitor:Z

.field private blacklist mEnableMonitorMessage:Z

.field private blacklist mLongMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

.field private blacklist mLongMsgIndexNext:I

.field private blacklist mMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

.field private blacklist mMsgIndexNext:I

.field private final blacklist mMsgLock:Ljava/lang/Object;

.field private blacklist mNextSeq:J

.field private blacklist mRunningMessage:Landroid/os/Message;

.field private blacklist mRunningMessageInfo:Landroid/os/BaseLooper$MessageMonitorInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/BaseLooper;->sCallbacksLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x200

    new-array v1, v0, [Landroid/os/BaseLooper$MessageMonitorInfo;

    iput-object v1, p0, Landroid/os/BaseLooper;->mLongMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseLooper;->mLongMsgIndexNext:I

    .line 55
    new-array v0, v0, [Landroid/os/BaseLooper$MessageMonitorInfo;

    iput-object v0, p0, Landroid/os/BaseLooper;->mMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 56
    iput v1, p0, Landroid/os/BaseLooper;->mMsgIndexNext:I

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/BaseLooper;->mMsgLock:Ljava/lang/Object;

    .line 59
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/os/BaseLooper;->mNextSeq:J

    return-void
.end method

.method private blacklist addMessageToHistoryIfNeed(Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 10
    .param p1, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 301
    iget-object v0, p0, Landroid/os/BaseLooper;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    iget-object v1, p0, Landroid/os/BaseLooper;->mMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    iget v2, p0, Landroid/os/BaseLooper;->mMsgIndexNext:I

    aput-object p1, v1, v2

    .line 303
    const/16 v1, 0x200

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v2

    iput v2, p0, Landroid/os/BaseLooper;->mMsgIndexNext:I

    .line 304
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v2, v4, v6

    if-lez v2, :cond_28

    .line 305
    iget-object v2, p0, Landroid/os/BaseLooper;->mLongMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    iget v4, p0, Landroid/os/BaseLooper;->mLongMsgIndexNext:I

    aput-object p1, v2, v4

    .line 306
    invoke-static {v4, v3, v1}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Landroid/os/BaseLooper;->mLongMsgIndexNext:I

    .line 308
    :cond_28
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private blacklist checkActivityLifecycle(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 21
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "info"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/BaseLooper$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    .line 223
    return-void

    .line 225
    :cond_b
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/servertransaction/ClientTransaction;

    .line 226
    .local v1, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v1}, Landroid/app/servertransaction/ClientTransaction;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    .line 227
    .local v2, "token":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    .line 228
    .local v3, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v3, v2}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v4

    .line 229
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v4, :cond_20

    return-void

    .line 230
    :cond_20
    invoke-virtual {v3, v2}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v5

    .line 231
    .local v5, "activity":Landroid/app/Activity;
    if-nez v5, :cond_27

    return-void

    .line 232
    :cond_27
    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 233
    .local v6, "componentName":Landroid/content/ComponentName;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Slow Looper "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 235
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/BaseLooper$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms late (wall="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/BaseLooper$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 234
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " running="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunningTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {v1}, Lcom/miui/internal/os/MiuiHooks;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/internal/os/MiuiHooks$IClientTransaction;

    .line 239
    .local v8, "miuiHooksTransaction":Lcom/miui/internal/os/MiuiHooks$IClientTransaction;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v8}, Lcom/miui/internal/os/MiuiHooks$IClientTransaction;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    move-object/from16 v9, p2

    iget-wide v10, v9, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    move-object/from16 v12, p0

    invoke-direct {v12, v10, v11}, Landroid/os/BaseLooper;->getHistoryMsgInfos(J)Ljava/util/List;

    move-result-object v10

    .line 241
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/BaseLooper$MessageMonitorInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_171

    .line 242
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " because of "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " msg,"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_101
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_166

    .line 244
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 245
    .local v13, "thisInfo":Landroid/os/BaseLooper$MessageMonitorInfo;
    invoke-virtual {v13}, Landroid/os/BaseLooper$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x32

    cmp-long v14, v14, v16

    if-lez v14, :cond_15f

    .line 246
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " msg "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " took "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    .end local v1    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .local v15, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v13}, Landroid/os/BaseLooper$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/os/BaseLooper$MessageMonitorInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_160

    .line 245
    .end local v15    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v1    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :cond_15f
    move-object v15, v1

    .line 243
    .end local v1    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v13    # "thisInfo":Landroid/os/BaseLooper$MessageMonitorInfo;
    .restart local v15    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :goto_160
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    move-object v1, v15

    goto :goto_101

    .end local v15    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v1    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :cond_166
    move-object v15, v1

    .line 250
    .end local v1    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v11    # "i":I
    .restart local v15    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_172

    .line 241
    .end local v15    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v1    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :cond_171
    move-object v15, v1

    .line 252
    .end local v1    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v15    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :goto_172
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Looper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method private blacklist checkDoFrame(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "info"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 188
    invoke-virtual {p2}, Landroid/os/BaseLooper$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    .line 189
    return-void

    .line 191
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slow Looper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": doFrame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/BaseLooper$MessageMonitorInfo;->getLatencyMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms late"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-wide v1, p2, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    invoke-direct {p0, v1, v2}, Landroid/os/BaseLooper;->getHistoryMsgInfos(J)Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/BaseLooper$MessageMonitorInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e9

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_81
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e0

    .line 201
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 202
    .local v3, "thisInfo":Landroid/os/BaseLooper$MessageMonitorInfo;
    invoke-virtual {v3}, Landroid/os/BaseLooper$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x32

    cmp-long v4, v4, v6

    if-lez v4, :cond_dd

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/BaseLooper$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/BaseLooper$MessageMonitorInfo;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "),"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .end local v3    # "thisInfo":Landroid/os/BaseLooper$MessageMonitorInfo;
    :cond_dd
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 207
    .end local v2    # "i":I
    :cond_e0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 209
    :cond_e9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Looper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method private blacklist checkEssentialMsg(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "info"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 164
    invoke-static {p1}, Landroid/os/BaseLooper;->isActivityTrancaction(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/os/BaseLooper;->checkActivityLifecycle(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    goto :goto_13

    .line 166
    :cond_a
    invoke-static {p1}, Landroid/os/BaseLooper;->isDoFrame(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/os/BaseLooper;->checkDoFrame(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    .line 169
    :cond_13
    :goto_13
    return-void
.end method

.method private blacklist checkMsg(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "info"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 155
    invoke-virtual {p2}, Landroid/os/BaseLooper$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_38

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slow Looper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Long Msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {p2}, Landroid/os/BaseLooper$MessageMonitorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "logMsg":Ljava/lang/String;
    const-string v1, "Looper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "logMsg":Ljava/lang/String;
    :cond_38
    invoke-direct {p0, p1, p2}, Landroid/os/BaseLooper;->checkEssentialMsg(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    .line 161
    return-void
.end method

.method private blacklist dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .registers 7
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "dumpQueue"    # Z

    .line 376
    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableMonitorMessage:Z

    if-eqz v0, :cond_a

    .line 377
    invoke-direct {p0, p1, p2}, Landroid/os/BaseLooper;->dumpRunningMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/BaseLooper;->dumpLtMessageHistory(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 380
    :cond_a
    if-eqz p5, :cond_f

    .line 381
    invoke-direct {p0, p1, p2}, Landroid/os/BaseLooper;->dumpMessageQueue(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 383
    :cond_f
    return-void
.end method

.method private blacklist dumpLtMessageHistory(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .line 341
    iget-object v0, p0, Landroid/os/BaseLooper;->mMsgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "History of long time messages on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    iget v1, p0, Landroid/os/BaseLooper;->mLongMsgIndexNext:I

    .line 344
    .local v1, "lastIndex":I
    move v2, v1

    .line 345
    .local v2, "ringIndex":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 346
    .local v3, "curUptime":J
    const/4 v5, 0x0

    .line 348
    .local v5, "i":I
    :cond_2f
    const/4 v6, -0x1

    const/16 v7, 0x200

    invoke-static {v2, v6, v7}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v6

    move v2, v6

    .line 349
    iget-object v6, p0, Landroid/os/BaseLooper;->mLongMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    aget-object v6, v6, v2

    .line 350
    .local v6, "monitorInfo":Landroid/os/BaseLooper$MessageMonitorInfo;
    if-eqz v6, :cond_74

    iget-wide v7, v6, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    sub-long v7, v3, v7

    cmp-long v7, v7, p3

    if-lez v7, :cond_46

    goto :goto_74

    .line 353
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

    .line 354
    invoke-virtual {v6}, Landroid/os/BaseLooper$MessageMonitorInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 353
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    .end local v6    # "monitorInfo":Landroid/os/BaseLooper$MessageMonitorInfo;
    if-ne v2, v1, :cond_2f

    .line 356
    .end local v1    # "lastIndex":I
    .end local v2    # "ringIndex":I
    .end local v3    # "curUptime":J
    .end local v5    # "i":I
    monitor-exit v0

    .line 357
    return-void

    .line 351
    .restart local v1    # "lastIndex":I
    .restart local v2    # "ringIndex":I
    .restart local v3    # "curUptime":J
    .restart local v5    # "i":I
    .restart local v6    # "monitorInfo":Landroid/os/BaseLooper$MessageMonitorInfo;
    :cond_74
    :goto_74
    monitor-exit v0

    return-void

    .line 356
    .end local v1    # "lastIndex":I
    .end local v2    # "ringIndex":I
    .end local v3    # "curUptime":J
    .end local v5    # "i":I
    .end local v6    # "monitorInfo":Landroid/os/BaseLooper$MessageMonitorInfo;
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v1
.end method

.method private blacklist dumpMessageQueue(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 368
    invoke-virtual {p0}, Landroid/os/BaseLooper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 369
    .local v0, "queue":Landroid/os/MessageQueue;
    if-eqz v0, :cond_33

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MessageQueue on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 373
    :cond_33
    return-void
.end method

.method private blacklist dumpRunningMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 360
    iget-object v0, p0, Landroid/os/BaseLooper;->mRunningMessageInfo:Landroid/os/BaseLooper$MessageMonitorInfo;

    if-nez v0, :cond_5

    .line 361
    return-void

    .line 363
    :cond_5
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

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/BaseLooper;->mRunningMessageInfo:Landroid/os/BaseLooper$MessageMonitorInfo;

    invoke-virtual {v1}, Landroid/os/BaseLooper$MessageMonitorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public static blacklist formatCurrentTime(J)Ljava/lang/String;
    .registers 4
    .param p0, "curTimeMs"    # J

    .line 332
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 333
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 332
    return-object v0
.end method

.method private blacklist getHistoryMsgInfos(J)Ljava/util/List;
    .registers 10
    .param p1, "sinceUptime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/os/BaseLooper$MessageMonitorInfo;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/BaseLooper$MessageMonitorInfo;>;"
    iget v1, p0, Landroid/os/BaseLooper;->mMsgIndexNext:I

    const/4 v2, -0x1

    const/16 v3, 0x200

    invoke-static {v1, v2, v3}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v1

    .line 320
    .local v1, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v3, :cond_2d

    .line 321
    iget-object v5, p0, Landroid/os/BaseLooper;->mMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    aget-object v5, v5, v1

    if-eqz v5, :cond_2d

    iget-wide v5, v5, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    cmp-long v5, v5, p1

    if-gez v5, :cond_1e

    .line 323
    goto :goto_2d

    .line 325
    :cond_1e
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/os/BaseLooper;->mMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    aget-object v6, v6, v1

    invoke-interface {v0, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 326
    invoke-static {v1, v2, v3}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v1

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 328
    .end local v4    # "i":I
    :cond_2d
    :goto_2d
    return-object v0
.end method

.method private static blacklist isActivityTrancaction(Landroid/os/Message;)Z
    .registers 5
    .param p0, "msg"    # Landroid/os/Message;

    .line 213
    const/4 v0, 0x0

    if-eqz p0, :cond_24

    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 214
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.ActivityThread$H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_24

    .line 217
    :cond_1a
    const/16 v1, 0x9f

    .line 218
    .local v1, "EXECUTE_TRANSACTION":I
    iget v2, p0, Landroid/os/Message;->what:I

    const/16 v3, 0x9f

    if-ne v2, v3, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0

    .line 215
    .end local v1    # "EXECUTE_TRANSACTION":I
    :cond_24
    :goto_24
    return v0
.end method

.method private static blacklist isDoFrame(Landroid/os/Message;)Z
    .registers 6
    .param p0, "msg"    # Landroid/os/Message;

    .line 172
    const/4 v0, 0x0

    if-eqz p0, :cond_3b

    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v2, "android.view.Choreographer$FrameHandler"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_3b

    .line 177
    :cond_1a
    const/4 v1, 0x0

    .line 178
    .local v1, "MSG_DO_FRAME":I
    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-nez v2, :cond_21

    .line 179
    return v3

    .line 181
    :cond_21
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 182
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string v4, "android.view.Choreographer$FrameDisplayEventReceiver"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move v0, v3

    goto :goto_3a

    :cond_39
    nop

    .line 181
    :goto_3a
    return v0

    .line 175
    .end local v1    # "MSG_DO_FRAME":I
    :cond_3b
    :goto_3b
    return v0
.end method

.method static blacklist messageToString(Landroid/os/Message;)Ljava/lang/String;
    .registers 5
    .param p0, "msg"    # Landroid/os/Message;

    .line 697
    const-string v0, ""

    .line 699
    .local v0, "result":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_43

    .line 702
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_27

    .line 703
    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 706
    :cond_27
    const-string v2, " what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 710
    :goto_31
    const-string v2, " target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_43
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_4e

    move-object v0, v2

    .line 718
    .end local v1    # "b":Ljava/lang/StringBuilder;
    goto :goto_6b

    .line 716
    :catch_4e
    move-exception v1

    .line 717
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessageString failed ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseLooper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6b
    return-object v0
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

    .line 312
    add-int v0, p0, p1

    rem-int/2addr v0, p2

    .line 313
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

    .line 109
    sget-object v0, Landroid/os/BaseLooper;->sCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    const/4 v1, -0x1

    .line 111
    .local v1, "findIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    :try_start_5
    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1e

    .line 112
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_1b

    .line 113
    move v1, v2

    .line 114
    goto :goto_1e

    .line 111
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 117
    .end local v2    # "i":I
    :cond_1e
    :goto_1e
    const/4 v2, -0x1

    if-eqz p1, :cond_2c

    if-ne v1, v2, :cond_2c

    .line 118
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 119
    :cond_2c
    if-nez p1, :cond_33

    if-eq v1, v2, :cond_33

    .line 120
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 122
    .end local v1    # "findIndex":I
    :cond_33
    :goto_33
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_35

    throw v1
.end method


# virtual methods
.method public blacklist checkInputEvent(Landroid/view/InputEvent;)V
    .registers 12
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 257
    .local v0, "latency":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 258
    return-void

    .line 260
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v2, "sb":Ljava/lang/StringBuilder;
    instance-of v3, p1, Landroid/view/KeyEvent;

    const-string v4, ")"

    const-string v5, ", action="

    const-string v6, "ms late (event_seq="

    const-string v7, "Slow Looper "

    if-eqz v3, :cond_84

    .line 263
    move-object v3, p1

    check-cast v3, Landroid/view/KeyEvent;

    .line 264
    .local v3, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-eqz v8, :cond_2b

    .line 265
    return-void

    .line 267
    :cond_2b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": KeyEvent is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 269
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 270
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-static {v7}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 271
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .end local v3    # "keyEvent":Landroid/view/KeyEvent;
    goto :goto_d9

    :cond_84
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_17a

    .line 273
    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    .line 274
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eqz v8, :cond_92

    .line 275
    return-void

    .line 277
    :cond_92
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": MotionEvent is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 279
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 280
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    nop

    .line 285
    :goto_d9
    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/os/BaseLooper;->getHistoryMsgInfos(J)Ljava/util/List;

    move-result-object v3

    .line 286
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/BaseLooper$MessageMonitorInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_170

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " because of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_108
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_167

    .line 289
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 290
    .local v5, "thisInfo":Landroid/os/BaseLooper$MessageMonitorInfo;
    invoke-virtual {v5}, Landroid/os/BaseLooper$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x32

    cmp-long v6, v6, v8

    if-lez v6, :cond_164

    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " msg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/os/BaseLooper$MessageMonitorInfo;->getWallMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/os/BaseLooper$MessageMonitorInfo;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "),"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .end local v5    # "thisInfo":Landroid/os/BaseLooper$MessageMonitorInfo;
    :cond_164
    add-int/lit8 v4, v4, 0x1

    goto :goto_108

    .line 295
    .end local v4    # "i":I
    :cond_167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 297
    :cond_170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Looper"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 282
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/os/BaseLooper$MessageMonitorInfo;>;"
    :cond_17a
    return-void
.end method

.method public blacklist dumpAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 400
    const-wide/32 v0, 0x1b7740

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseLooper;->dumpAll(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dumpAll(Ljava/lang/String;J)Ljava/lang/String;
    .registers 14
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .line 404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 405
    .local v0, "start":J
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 406
    .local v2, "stringWriter":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 407
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

    .line 408
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
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

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Current looper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v3

    move-object v6, p1

    move-wide v7, p2

    invoke-direct/range {v4 .. v9}, Landroid/os/BaseLooper;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 412
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 413
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

    const-string v5, "BaseLooper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public blacklist dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 386
    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableMonitorMessage:Z

    if-nez v0, :cond_5

    .line 387
    return-void

    .line 389
    :cond_5
    sget-object v0, Landroid/os/BaseLooper;->sCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_8
    sget-object v1, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 391
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BaseLooper;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BaseLooper;

    .line 392
    .local v3, "looper":Landroid/os/BaseLooper;
    if-eqz v3, :cond_28

    .line 393
    const-wide/32 v4, 0x1b7740

    invoke-direct {v3, p1, p2, v4, v5}, Landroid/os/BaseLooper;->dumpLtMessageHistory(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 395
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BaseLooper;>;"
    .end local v3    # "looper":Landroid/os/BaseLooper;
    :cond_28
    goto :goto_e

    .line 396
    :cond_29
    monitor-exit v0

    .line 397
    return-void

    .line 396
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method blacklist enableAnrMonitor(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 99
    iput-boolean p1, p0, Landroid/os/BaseLooper;->mEnableAnrMonitor:Z

    .line 100
    iput-boolean p1, p0, Landroid/os/BaseLooper;->mEnableMonitorMessage:Z

    .line 101
    invoke-direct {p0, p1}, Landroid/os/BaseLooper;->updateCallbackIfNeed(Z)V

    .line 102
    return-void
.end method

.method public blacklist enableMonitor(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 68
    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 69
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v1

    if-nez v1, :cond_a

    .line 70
    return-void

    .line 72
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseLooper;->mEnableMonitor:Z

    .line 74
    :try_start_d
    const-string v1, "getQueue"

    const-class v2, Landroid/os/MessageQueue;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageQueue;

    .line 75
    .local v1, "queue":Landroid/os/MessageQueue;
    if-eqz v1, :cond_26

    .line 76
    const-string v2, "enableMonitor"

    const-class v3, Ljava/lang/Void;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_25

    goto :goto_26

    .line 78
    .end local v1    # "queue":Landroid/os/MessageQueue;
    :catch_25
    move-exception v0

    .line 79
    :cond_26
    :goto_26
    goto :goto_29

    .line 81
    :cond_27
    iput-boolean v0, p0, Landroid/os/BaseLooper;->mEnableMonitor:Z

    .line 83
    :goto_29
    return-void
.end method

.method public blacklist enableMonitorMessage(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 88
    iput-boolean p1, p0, Landroid/os/BaseLooper;->mEnableMonitorMessage:Z

    .line 89
    invoke-direct {p0, p1}, Landroid/os/BaseLooper;->updateCallbackIfNeed(Z)V

    .line 90
    return-void
.end method

.method public abstract blacklist getQueue()Landroid/os/MessageQueue;
.end method

.method blacklist isMonitorAnr()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableAnrMonitor:Z

    return v0
.end method

.method public blacklist isMonitorLooper()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableMonitor:Z

    return v0
.end method

.method public blacklist logLateFrameIfNeed(JJ)V
    .registers 5
    .param p1, "delayNanos"    # J
    .param p3, "frameTimeNanos"    # J

    .line 420
    return-void
.end method

.method blacklist markDispatch(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "info"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 126
    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableMonitorMessage:Z

    if-nez v0, :cond_5

    .line 127
    return-void

    .line 129
    :cond_5
    iput-object p1, p0, Landroid/os/BaseLooper;->mRunningMessage:Landroid/os/Message;

    .line 130
    iput-object p2, p0, Landroid/os/BaseLooper;->mRunningMessageInfo:Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 131
    iget-wide v0, p0, Landroid/os/BaseLooper;->mNextSeq:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/os/BaseLooper;->mNextSeq:J

    iput-wide v0, p2, Landroid/os/BaseLooper$MessageMonitorInfo;->mSeq:J

    .line 132
    invoke-virtual {p2, p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->markDispatch(Landroid/os/Message;)V

    .line 133
    return-void
.end method

.method blacklist markFinish(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "info"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 136
    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableMonitorMessage:Z

    if-nez v0, :cond_5

    .line 137
    return-void

    .line 147
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseLooper;->mRunningMessage:Landroid/os/Message;

    .line 148
    iput-object v0, p0, Landroid/os/BaseLooper;->mRunningMessageInfo:Landroid/os/BaseLooper$MessageMonitorInfo;

    .line 149
    invoke-virtual {p2, p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->markFinish(Landroid/os/Message;)V

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/os/BaseLooper;->checkMsg(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    .line 151
    invoke-direct {p0, p2}, Landroid/os/BaseLooper;->addMessageToHistoryIfNeed(Landroid/os/BaseLooper$MessageMonitorInfo;)V

    .line 152
    return-void
.end method
