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

    .line 53
    const-class v0, Landroid/app/QueuedWork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 94
    new-instance v0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    sput-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    .line 96
    const/4 v0, 0x0

    sput v0, Landroid/app/QueuedWork;->mNumWaits:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addFinisher(Ljava/lang/Runnable;)V
    .registers 3

    .line 161
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private static greylist getHandler()Landroid/os/Handler;
    .registers 4

    .line 105
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_1e

    .line 107
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "queued-work-looper"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v2, Landroid/app/QueuedWork$QueuedWorkHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/QueuedWork$QueuedWorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 113
    :cond_1e
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 114
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private static blacklist handlerRemoveMessages(I)V
    .registers 3

    .line 138
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_9

    .line 141
    monitor-exit v0

    return-void

    .line 143
    :cond_9
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public static greylist-max-o hasPendingWork()Z
    .registers 2

    .line 267
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
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

    .line 269
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static greylist-max-o processPendingWork()V
    .registers 4

    .line 273
    nop

    .line 279
    sget-object v0, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_4
    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_34

    .line 283
    :try_start_7
    sget-object v2, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 284
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 287
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/app/QueuedWork;->handlerRemoveMessages(I)V

    .line 288
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_31

    .line 290
    :try_start_15
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2f

    .line 291
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 292
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 293
    goto :goto_1f

    .line 300
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_34

    .line 301
    return-void

    .line 288
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw v2

    .line 300
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static greylist-max-r queue(Ljava/lang/Runnable;Z)V
    .registers 6

    .line 250
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 252
    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_7
    sget-object v2, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 255
    const/4 p0, 0x1

    if-eqz p1, :cond_19

    sget-boolean p1, Landroid/app/QueuedWork;->sCanDelay:Z

    if-eqz p1, :cond_19

    .line 256
    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1c

    .line 258
    :cond_19
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    :goto_1c
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_1e
    move-exception p0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static greylist removeFinisher(Ljava/lang/Runnable;)V
    .registers 3

    .line 173
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static blacklist resetHandler()V
    .registers 2

    .line 122
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_9

    .line 124
    monitor-exit v0

    return-void

    .line 126
    :cond_9
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 127
    const/4 v1, 0x0

    sput-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static greylist-max-o waitToFinish()V
    .registers 6

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    nop

    .line 190
    sget-object v2, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 194
    const/4 v3, 0x1

    :try_start_9
    invoke-static {v3}, Landroid/app/QueuedWork;->handlerRemoveMessages(I)V

    .line 200
    const/4 v4, 0x0

    sput-boolean v4, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 201
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_79

    .line 203
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 205
    :try_start_14
    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_74

    .line 207
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 208
    nop

    .line 214
    :goto_1b
    :try_start_1b
    sget-object v2, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_70

    .line 215
    :try_start_1e
    sget-object v4, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 216
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_6d

    .line 218
    if-nez v4, :cond_69

    .line 219
    nop

    .line 225
    sput-boolean v3, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 226
    nop

    .line 228
    sget-object v2, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 229
    :try_start_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 231
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_3c

    goto :goto_64

    .line 232
    :cond_3c
    sget-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    .line 233
    sget v0, Landroid/app/QueuedWork;->mNumWaits:I

    add-int/2addr v0, v3

    sput v0, Landroid/app/QueuedWork;->mNumWaits:I

    .line 235
    sget v0, Landroid/app/QueuedWork;->mNumWaits:I

    rem-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5a

    const-wide/16 v0, 0x200

    cmp-long v0, v4, v0

    if-lez v0, :cond_64

    .line 236
    :cond_5a
    sget-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    sget-object v1, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "waited: "

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 239
    :cond_64
    :goto_64
    monitor-exit v2

    .line 240
    return-void

    .line 239
    :catchall_66
    move-exception v0

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_30 .. :try_end_68} :catchall_66

    throw v0

    .line 222
    :cond_69
    :try_start_69
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_70

    .line 223
    goto :goto_1b

    .line 216
    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    .line 225
    :catchall_70
    move-exception v0

    sput-boolean v3, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 226
    throw v0

    .line 207
    :catchall_74
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 208
    throw v0

    .line 201
    :catchall_79
    move-exception v0

    :try_start_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v0
.end method
