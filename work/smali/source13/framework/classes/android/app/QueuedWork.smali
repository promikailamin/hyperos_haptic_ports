.class public Landroid/app/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QueuedWork$QueuedWorkHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DELAY:J = 0x64L

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field private static final greylist-max-o MAX_WAIT_TIME_MILLIS:J = 0x200L

.field private static final blacklist QUEUEDWORK_WAIT_TIMEOUT:I = 0x2710

.field private static greylist-max-o mNumWaits:I

.field private static final greylist-max-o mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

.field private static greylist-max-o sCanDelay:Z

.field private static final greylist sFinishers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sHandler:Landroid/os/Handler;

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sProcessingWork:Ljava/lang/Object;

.field private static greylist-max-o sWork:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smprocessPendingWork()V
    .registers 0

    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 57
    const-class v0, Landroid/app/QueuedWork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    .line 85
    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 98
    new-instance v0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    sput-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    .line 100
    const/4 v0, 0x0

    sput v0, Landroid/app/QueuedWork;->mNumWaits:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addFinisher(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .line 138
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static greylist getHandler()Landroid/os/Handler;
    .registers 4

    .line 112
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_1e

    .line 114
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "queued-work-looper"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 116
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v2, Landroid/app/QueuedWork$QueuedWorkHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/QueuedWork$QueuedWorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 120
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_1e
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 121
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static greylist-max-o hasPendingWork()Z
    .registers 2

    .line 252
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 254
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static greylist-max-o processPendingWork()V
    .registers 7

    .line 258
    const-wide/16 v0, 0x0

    .line 264
    .local v0, "startTime":J
    sget-object v2, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    monitor-enter v2

    .line 267
    :try_start_5
    sget-object v3, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_39

    .line 268
    :try_start_8
    sget-object v4, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 269
    .local v4, "work":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    sput-object v5, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 272
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_36

    .line 275
    :try_start_1a
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_34

    .line 276
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 277
    .local v5, "w":Ljava/lang/Runnable;
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 278
    .end local v5    # "w":Ljava/lang/Runnable;
    goto :goto_24

    .line 285
    .end local v4    # "work":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_39

    .line 286
    return-void

    .line 273
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .end local v0    # "startTime":J
    :try_start_38
    throw v4

    .line 285
    .restart local v0    # "startTime":J
    :catchall_39
    move-exception v3

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_39

    throw v3
.end method

.method public static greylist-max-r queue(Ljava/lang/Runnable;Z)V
    .registers 7
    .param p0, "work"    # Ljava/lang/Runnable;
    .param p1, "shouldDelay"    # Z

    .line 235
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 237
    .local v0, "handler":Landroid/os/Handler;
    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_7
    sget-object v2, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v2, 0x1

    if-eqz p1, :cond_19

    sget-boolean v3, Landroid/app/QueuedWork;->sCanDelay:Z

    if-eqz v3, :cond_19

    .line 241
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1c

    .line 243
    :cond_19
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    :goto_1c
    monitor-exit v1

    .line 246
    return-void

    .line 245
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public static greylist removeFinisher(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .line 150
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static greylist-max-o waitToFinish()V
    .registers 15

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 165
    .local v6, "startTime":J
    const/4 v8, 0x0

    .line 167
    .local v8, "hadMessages":Z
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 169
    .local v9, "handler":Landroid/os/Handler;
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    const/4 v10, 0x1

    :try_start_d
    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 172
    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    :cond_16
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 182
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_8c

    .line 184
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 186
    .local v11, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1e
    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_87

    .line 188
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 189
    nop

    .line 195
    :goto_25
    :try_start_25
    sget-object v12, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_83

    .line 196
    :try_start_28
    sget-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 197
    .local v0, "finisher":Ljava/lang/Runnable;
    monitor-exit v12
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_80

    .line 199
    if-nez v0, :cond_7c

    .line 200
    nop

    .line 206
    .end local v0    # "finisher":Ljava/lang/Runnable;
    sput-boolean v10, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 207
    nop

    .line 209
    monitor-enter v12

    .line 210
    :try_start_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v13, v0, v6

    .line 213
    .local v13, "waitTime":J
    invoke-static {}, Landroid/os/perfdebug/OtherMethodMonitor;->get()Landroid/os/perfdebug/OtherMethodMonitor;

    move-result-object v0

    const-string/jumbo v1, "queueWorkFinish"

    const-wide/16 v2, 0x64

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/os/perfdebug/OtherMethodMonitor;->markMonitor(Ljava/lang/String;JJ)V

    .line 216
    const-wide/16 v0, 0x0

    cmp-long v0, v13, v0

    if-gtz v0, :cond_53

    if-eqz v8, :cond_77

    .line 217
    :cond_53
    sget-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    .line 218
    sget v1, Landroid/app/QueuedWork;->mNumWaits:I

    add-int/2addr v1, v10

    sput v1, Landroid/app/QueuedWork;->mNumWaits:I

    .line 220
    rem-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_6f

    const-wide/16 v1, 0x200

    cmp-long v1, v13, v1

    if-lez v1, :cond_77

    .line 221
    :cond_6f
    sget-object v1, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "waited: "

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 224
    .end local v13    # "waitTime":J
    :cond_77
    monitor-exit v12

    .line 225
    return-void

    .line 224
    :catchall_79
    move-exception v0

    monitor-exit v12
    :try_end_7b
    .catchall {:try_start_38 .. :try_end_7b} :catchall_79

    throw v0

    .line 203
    .restart local v0    # "finisher":Ljava/lang/Runnable;
    :cond_7c
    :try_start_7c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_83

    .line 204
    .end local v0    # "finisher":Ljava/lang/Runnable;
    goto :goto_25

    .line 197
    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit v12
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    .end local v6    # "startTime":J
    .end local v8    # "hadMessages":Z
    .end local v9    # "handler":Landroid/os/Handler;
    .end local v11    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_82
    throw v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_83

    .line 206
    .restart local v6    # "startTime":J
    .restart local v8    # "hadMessages":Z
    .restart local v9    # "handler":Landroid/os/Handler;
    .restart local v11    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_83
    move-exception v0

    sput-boolean v10, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 207
    throw v0

    .line 188
    :catchall_87
    move-exception v0

    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 189
    throw v0

    .line 182
    .end local v11    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_8c
    move-exception v1

    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v1
.end method
