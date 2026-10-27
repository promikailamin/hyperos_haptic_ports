.class public final Landroid/content/res/ResourceTimer;
.super Ljava/lang/Object;
.source "ResourceTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourceTimer$Config;,
        Landroid/content/res/ResourceTimer$Timer;
    }
.end annotation


# static fields
.field private static blacklist ENABLE_DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ResourceTimer"

.field private static blacklist mHandler:Landroid/os/Handler;

.field private static blacklist sApiMap:[I

.field private static blacklist sConfig:Landroid/content/res/ResourceTimer$Config;

.field private static blacklist sCurrentPoint:I

.field private static blacklist sEnabled:Z

.field private static blacklist sIncrementalMetrics:Z

.field private static blacklist sLastUpdated:J

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sManager:Landroid/content/res/ResourceTimer;

.field private static final blacklist sProcessStart:J

.field private static final blacklist sPublicationPoints:[J

.field private static blacklist sTimers:[Landroid/content/res/ResourceTimer$Timer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhandleMessage(Landroid/os/Message;)V
    .registers 1

    invoke-static {p0}, Landroid/content/res/ResourceTimer;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/ResourceTimer;->sEnabled:Z

    .line 52
    sput-boolean v0, Landroid/content/res/ResourceTimer;->sIncrementalMetrics:Z

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/ResourceTimer;->ENABLE_DEBUG:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sProcessStart:J

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_22

    sput-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    .line 135
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    return-void

    :array_22
    .array-data 8
        0x5
        0x3c
        0x2d0
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ResourceTimer constructor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist dumpTimers(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 12

    .line 279
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 280
    :try_start_a
    const-string p0, "\nDumping ResourceTimers"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    sget-object p0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_a5

    .line 284
    :try_start_12
    sget-boolean v0, Landroid/content/res/ResourceTimer;->sEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    move v0, v2

    .line 285
    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_a1

    .line 286
    if-nez v0, :cond_2a

    .line 287
    :try_start_21
    const-string p0, "  Timers are not enabled in this process"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_a5

    .line 311
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 288
    return-void

    .line 293
    :cond_2a
    :try_start_2a
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "-refresh"

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 295
    sget-object p1, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_a5

    .line 296
    :try_start_37
    invoke-static {p0}, Landroid/content/res/ResourceTimer;->update(Z)V

    .line 297
    sget-wide v3, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    sget-wide v5, Landroid/content/res/ResourceTimer;->sProcessStart:J

    sub-long/2addr v3, v5

    .line 298
    const-string p0, "  config runtime=%d proc=%s\n"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 299
    nop

    :goto_51
    sget-object p0, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length p0, p0

    if-ge v2, p0, :cond_98

    .line 300
    sget-object p0, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object p0, p0, v2

    .line 301
    iget v0, p0, Landroid/content/res/ResourceTimer$Timer;->count:I

    if-eqz v0, :cond_95

    .line 302
    sget-object v0, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v0, v0, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v3, v0, v2

    .line 303
    const-string v0, "  stats timer=%s cnt=%d avg=%d min=%d max=%d pval=%s largest=%s\n"

    iget v4, p0, Landroid/content/res/ResourceTimer$Timer;->count:I

    .line 305
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/content/res/ResourceTimer$Timer;->total:J

    iget v7, p0, Landroid/content/res/ResourceTimer$Timer;->count:I

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v6, p0, Landroid/content/res/ResourceTimer$Timer;->mintime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/content/res/ResourceTimer$Timer;->maxtime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    .line 306
    invoke-static {v8}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v8

    iget-object p0, p0, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    .line 307
    invoke-static {p0}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    .line 303
    invoke-virtual {v1, v0, p0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 299
    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 310
    :cond_98
    monitor-exit p1
    :try_end_99
    .catchall {:try_start_37 .. :try_end_99} :catchall_9d

    .line 311
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 312
    return-void

    .line 310
    :catchall_9d
    move-exception v0

    move-object p0, v0

    :try_start_9f
    monitor-exit p1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9d

    :try_start_a0
    throw p0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a5

    .line 285
    :catchall_a1
    move-exception v0

    move-object p1, v0

    :try_start_a3
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a1

    :try_start_a4
    throw p1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    .line 279
    :catchall_a5
    move-exception v0

    move-object p0, v0

    :try_start_a7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_b0

    :catchall_ab
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b0
    throw p0
.end method

.method private static blacklist handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 200
    sget-object p0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 201
    :try_start_3
    invoke-static {}, Landroid/content/res/ResourceTimer;->publish()V

    .line 202
    invoke-static {}, Landroid/content/res/ResourceTimer;->startTimer()V

    .line 203
    monitor-exit p0

    .line 204
    return-void

    .line 203
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private static native blacklist nativeEnableTimers(Landroid/content/res/ResourceTimer$Config;)I
.end method

.method private static native blacklist nativeGetTimers([Landroid/content/res/ResourceTimer$Timer;Z)I
.end method

.method private static blacklist packedString([I)Ljava/lang/String;
    .registers 3

    .line 271
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[\\]\\[ ]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist publish()V
    .registers 20

    .line 246
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/res/ResourceTimer;->update(Z)V

    .line 248
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v3, v3

    if-ge v2, v3, :cond_7c

    .line 249
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v3, v3, v2

    .line 250
    iget v4, v3, Landroid/content/res/ResourceTimer$Timer;->count:I

    if-lez v4, :cond_75

    .line 251
    sget-object v4, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v4, v4, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget v5, v3, Landroid/content/res/ResourceTimer$Timer;->count:I

    .line 252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    invoke-static {v6}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 251
    const-string v5, "%s count=%d pvalues=%s"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResourceTimer"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v4, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aget v4, v4, v2

    if-eqz v4, :cond_72

    .line 254
    sget-object v4, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aget v6, v4, v2

    iget v7, v3, Landroid/content/res/ResourceTimer$Timer;->count:I

    iget-wide v8, v3, Landroid/content/res/ResourceTimer$Timer;->total:J

    iget-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    aget v10, v4, v1

    iget-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    aget v11, v4, v0

    iget-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v5, 0x2

    aget v12, v4, v5

    iget-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v13, 0x3

    aget v4, v4, v13

    iget-object v14, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v14, v14, v1

    iget-object v15, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v15, v15, v0

    move/from16 v19, v0

    iget-object v0, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v16, v0, v5

    iget-object v0, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v17, v0, v13

    iget-object v0, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    const/4 v3, 0x4

    aget v18, v0, v3

    const/16 v5, 0x205

    move v13, v4

    invoke-static/range {v5 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIIIIIIIII)V

    goto :goto_77

    .line 253
    :cond_72
    move/from16 v19, v0

    goto :goto_77

    .line 250
    :cond_75
    move/from16 v19, v0

    .line 248
    :goto_77
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v19

    goto :goto_6

    .line 264
    :cond_7c
    move/from16 v19, v0

    sget v0, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    .line 265
    return-void
.end method

.method public static blacklist start()V
    .registers 6

    .line 148
    sget-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    sget-boolean v1, Landroid/content/res/ResourceTimer;->sEnabled:Z

    if-nez v1, :cond_9

    .line 150
    monitor-exit v0

    return-void

    .line 152
    :cond_9
    sget-object v1, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_f

    .line 154
    monitor-exit v0

    return-void

    .line 156
    :cond_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 159
    new-instance v1, Landroid/content/res/ResourceTimer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/ResourceTimer$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v1, Landroid/content/res/ResourceTimer$Config;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/res/ResourceTimer$Config;-><init>(Landroid/content/res/ResourceTimer-IA;)V

    sput-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    .line 169
    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    invoke-static {v1}, Landroid/content/res/ResourceTimer;->nativeEnableTimers(Landroid/content/res/ResourceTimer$Config;)I

    .line 170
    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v1, v1, Landroid/content/res/ResourceTimer$Config;->maxTimer:I

    new-array v1, v1, [Landroid/content/res/ResourceTimer$Timer;

    sput-object v1, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    .line 171
    const/4 v1, 0x0

    move v3, v1

    :goto_37
    sget-object v4, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v4, v4

    if-ge v3, v4, :cond_60

    .line 172
    sget-object v4, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    new-instance v5, Landroid/content/res/ResourceTimer$Timer;

    invoke-direct {v5, v2}, Landroid/content/res/ResourceTimer$Timer;-><init>(Landroid/content/res/ResourceTimer-IA;)V

    aput-object v5, v4, v3

    .line 173
    sget-object v4, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v4, v4, v3

    sget-object v5, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v5, v5, Landroid/content/res/ResourceTimer$Config;->maxBuckets:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    .line 174
    sget-object v4, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v4, v4, v3

    sget-object v5, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v5, v5, Landroid/content/res/ResourceTimer$Config;->maxLargest:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 179
    :cond_60
    sget-object v2, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v2, v2, Landroid/content/res/ResourceTimer$Config;->maxTimer:I

    new-array v2, v2, [I

    sput-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    .line 180
    move v2, v1

    :goto_69
    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    array-length v3, v3

    if-ge v2, v3, :cond_9d

    .line 181
    sget-object v3, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v3, v3, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "GetResourceValue"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 182
    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    const/4 v4, 0x1

    aput v4, v3, v2

    goto :goto_9a

    .line 183
    :cond_82
    sget-object v3, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v3, v3, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "RetrieveAttributes"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 184
    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    const/4 v4, 0x2

    aput v4, v3, v2

    goto :goto_9a

    .line 186
    :cond_96
    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aput v1, v3, v2

    .line 180
    :goto_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 190
    :cond_9d
    sput v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    .line 191
    invoke-static {}, Landroid/content/res/ResourceTimer;->startTimer()V

    .line 192
    monitor-exit v0

    .line 193
    return-void

    .line 157
    :cond_a4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ResourceTimer started too early"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :catchall_ac
    move-exception v1

    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_ac

    throw v1
.end method

.method private static blacklist startTimer()V
    .registers 5

    .line 214
    sget v0, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    sget-object v1, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 215
    sget-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    sget v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    aget-wide v0, v0, v1

    goto :goto_21

    .line 218
    :cond_e
    sget-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    sget-object v1, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    .line 219
    sget-object v2, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 220
    sget v3, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    mul-long/2addr v0, v2

    .line 223
    :goto_21
    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 225
    sget-boolean v2, Landroid/content/res/ResourceTimer;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_2c

    .line 226
    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    .line 228
    :cond_2c
    sget-object v2, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    sget-wide v3, Landroid/content/res/ResourceTimer;->sProcessStart:J

    add-long/2addr v3, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 229
    return-void
.end method

.method private static blacklist update(Z)V
    .registers 3

    .line 236
    sget-object v0, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    invoke-static {v0, p0}, Landroid/content/res/ResourceTimer;->nativeGetTimers([Landroid/content/res/ResourceTimer$Timer;Z)I

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    .line 238
    return-void
.end method
