.class public Landroid/graphics/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/GraphicsStatsService$ActiveBuffer;,
        Landroid/graphics/GraphicsStatsService$BufferInfo;,
        Landroid/graphics/GraphicsStatsService$HistoricalBuffer;
    }
.end annotation


# static fields
.field private static final blacklist AID_STATSD:I = 0x42a

.field private static final blacklist DELETE_OLD:I = 0x2

.field public static final blacklist GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final blacklist SAVE_BUFFER:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "GraphicsStatsService"


# instance fields
.field private blacklist mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private final blacklist mAshmemSize:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFileAccessLock:Ljava/lang/Object;

.field private blacklist mGraphicsStatsDir:Ljava/io/File;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRotateIsScheduled:Z

.field private blacklist mWriteOutHandler:Landroid/os/Handler;

.field private final blacklist mZeroData:[B


# direct methods
.method public static synthetic blacklist $r8$lambda$WvL1__hjHUUBxHKYqhwbTcKuuCk(Landroid/graphics/GraphicsStatsService;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->onAlarm()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I
    .registers 1

    iget p0, p0, Landroid/graphics/GraphicsStatsService;->mAshmemSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZeroData(Landroid/graphics/GraphicsStatsService;)[B
    .registers 1

    iget-object p0, p0, Landroid/graphics/GraphicsStatsService;->mZeroData:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeleteOldBuffers(Landroid/graphics/GraphicsStatsService;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->deleteOldBuffers()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessDied(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/GraphicsStatsService;->processDied(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msaveBuffer(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$HistoricalBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/GraphicsStatsService;->saveBuffer(Landroid/graphics/GraphicsStatsService$HistoricalBuffer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 103
    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    .line 90
    invoke-static {}, Landroid/graphics/GraphicsStatsService;->nGetAshmemSize()I

    move-result v0

    iput v0, p0, Landroid/graphics/GraphicsStatsService;->mAshmemSize:I

    .line 91
    iget v0, p0, Landroid/graphics/GraphicsStatsService;->mAshmemSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mZeroData:[B

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 104
    iput-object p1, p0, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    .line 105
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 106
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Landroid/graphics/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 107
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/io/File;

    const-string v1, "graphicsstats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    .line 109
    iget-object p1, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 110
    iget-object p1, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 114
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "GraphicsStats-disk"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 116
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Landroid/graphics/GraphicsStatsService$1;

    invoke-direct {v1, p0}, Landroid/graphics/GraphicsStatsService$1;-><init>(Landroid/graphics/GraphicsStatsService;)V

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    .line 132
    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->nativeInit()V

    .line 133
    return-void

    .line 111
    :cond_7f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Graphics stats directory does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist addToSaveQueue(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .registers 5

    .line 361
    :try_start_0
    new-instance v0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    invoke-direct {v0, p0, p1}, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    .line 362
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    .line 365
    goto :goto_2d

    .line 363
    :catch_10
    move-exception v0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy graphicsstats from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v2, v2, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GraphicsStatsService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    :goto_2d
    invoke-virtual {p1}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    .line 367
    return-void
.end method

.method private blacklist deleteOldBuffers()V
    .registers 12

    .line 334
    const-string v0, "deleting old graphicsstats buffers"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 335
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_b
    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 337
    if-eqz v3, :cond_55

    array-length v4, v3

    const/4 v5, 0x3

    if-gt v4, v5, :cond_18

    goto :goto_55

    .line 340
    :cond_18
    array-length v4, v3

    new-array v6, v4, [J

    .line 341
    const/4 v7, 0x0

    move v8, v7

    :goto_1d
    array-length v9, v3
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_57

    if-ge v8, v9, :cond_31

    .line 343
    :try_start_20
    aget-object v9, v3, v8

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v6, v8
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2c} :catch_2d
    .catchall {:try_start_20 .. :try_end_2c} :catchall_57

    .line 346
    goto :goto_2e

    .line 344
    :catch_2d
    move-exception v9

    .line 341
    :goto_2e
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 348
    :cond_31
    if-gt v4, v5, :cond_35

    .line 349
    :try_start_33
    monitor-exit v0

    return-void

    .line 351
    :cond_35
    invoke-static {v6}, Ljava/util/Arrays;->sort([J)V

    .line 352
    nop

    :goto_39
    add-int/lit8 v3, v4, -0x3

    if-ge v7, v3, :cond_50

    .line 353
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    aget-wide v9, v6, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/graphics/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    .line 352
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 355
    :cond_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_33 .. :try_end_51} :catchall_57

    .line 356
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 357
    return-void

    .line 338
    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v0

    return-void

    .line 355
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_57

    throw v1
.end method

.method private blacklist deleteRecursiveLocked(Ljava/io/File;)V
    .registers 6

    .line 323
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 324
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 325
    invoke-direct {p0, v3}, Landroid/graphics/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 328
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GraphicsStatsService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_3e
    return-void
.end method

.method private blacklist dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/GraphicsStatsService$HistoricalBuffer;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 405
    const/4 v1, 0x0

    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 406
    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    .line 407
    iget-object v4, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    move-object/from16 v5, p0

    invoke-direct {v5, v4}, Landroid/graphics/GraphicsStatsService;->pathForApp(Landroid/graphics/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v4

    .line 408
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v4, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget v9, v4, Landroid/graphics/GraphicsStatsService$BufferInfo;->mUid:I

    iget-object v4, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v10, v4, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v11, v4, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    iget-object v4, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v13, v4, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    iget-object v4, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v6, v4, Landroid/graphics/GraphicsStatsService$BufferInfo;->mEndTime:J

    iget-object v3, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mData:[B

    move-object/from16 v17, v3

    move-wide v15, v6

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v17}, Landroid/graphics/GraphicsStatsService;->nAddToDump(JLjava/lang/String;ILjava/lang/String;JJJ[B)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 413
    :cond_48
    return-object v0
.end method

.method private blacklist dumpHistoricalLocked(JLjava/util/HashSet;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_4a

    aget-object v4, v0, v3

    .line 418
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_13
    if-ge v6, v5, :cond_44

    aget-object v7, v4, v6

    .line 419
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    move v9, v2

    :goto_1d
    if-ge v9, v8, :cond_3e

    aget-object v10, v7, v9

    .line 420
    new-instance v11, Ljava/io/File;

    const-string/jumbo v12, "total"

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 421
    move-object/from16 v10, p3

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    .line 422
    move-wide v12, p1

    goto :goto_3b

    .line 424
    :cond_33
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-wide v12, p1

    invoke-static {v12, v13, v11}, Landroid/graphics/GraphicsStatsService;->nAddToDump(JLjava/lang/String;)V

    .line 419
    :goto_3b
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 418
    :cond_3e
    move-wide v12, p1

    move-object/from16 v10, p3

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 417
    :cond_44
    move-wide v12, p1

    move-object/from16 v10, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 428
    :cond_4a
    return-void
.end method

.method private blacklist fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 380
    const/4 v4, 0x0

    :goto_13
    if-ge v4, v0, :cond_35

    .line 381
    iget-object v5, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    .line 382
    iget v6, v5, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mPid:I

    if-ne v6, p3, :cond_32

    iget v6, v5, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mUid:I

    if-ne v6, p2, :cond_32

    .line 385
    iget-object v0, v5, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v8, v0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    cmp-long v0, v8, v2

    if-gez v0, :cond_31

    .line 386
    invoke-virtual {v5}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->binderDied()V

    .line 387
    goto :goto_35

    .line 389
    :cond_31
    return-object v5

    .line 380
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 395
    :cond_35
    :goto_35
    :try_start_35
    new-instance v0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)V

    .line 396
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_45} :catch_46

    .line 397
    return-object v0

    .line 398
    :catch_46
    move-exception v0

    .line 399
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Failed to allocate space"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native blacklist nAddToDump(JLjava/lang/String;)V
.end method

.method private static native blacklist nAddToDump(JLjava/lang/String;ILjava/lang/String;JJJ[B)V
.end method

.method private static native blacklist nCreateDump(IZ)J
.end method

.method private static native blacklist nFinishDump(J)V
.end method

.method private static native blacklist nFinishDumpInMemory(JJZ)V
.end method

.method private static native blacklist nGetAshmemSize()I
.end method

.method private static native blacklist nSaveBuffer(Ljava/lang/String;ILjava/lang/String;JJJ[B)V
.end method

.method private static native blacklist nativeDestructor()V
.end method

.method private native blacklist nativeInit()V
.end method

.method private blacklist normalizeDate(J)Ljava/util/Calendar;
    .registers 4

    .line 286
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 288
    const/16 p1, 0xb

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 289
    const/16 p1, 0xc

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 290
    const/16 p1, 0xd

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 291
    const/16 p1, 0xe

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 292
    return-object v0
.end method

.method private blacklist onAlarm()V
    .registers 9

    .line 156
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 158
    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->scheduleRotateLocked()V

    .line 159
    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    new-array v3, v1, [Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    .line 160
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_45

    .line 161
    array-length v0, v2

    :goto_15
    if-ge v1, v0, :cond_3c

    aget-object v3, v2, v1

    .line 163
    :try_start_19
    iget-object v4, v3, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v4}, Landroid/view/IGraphicsStatsCallback;->onRotateGraphicsStatsBuffer()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 167
    goto :goto_39

    .line 164
    :catch_1f
    move-exception v4

    .line 165
    const-string v5, "GraphicsStatsService"

    const-string v6, "Failed to notify \'%s\' (pid=%d) to rotate buffers"

    iget-object v7, v3, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v7, v7, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget v3, v3, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mPid:I

    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 165
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 170
    :cond_3c
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    return-void

    .line 160
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private blacklist pathForApp(Landroid/graphics/GraphicsStatsService$BufferInfo;)Ljava/io/File;
    .registers 6

    .line 296
    iget-wide v0, p1, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    .line 297
    invoke-direct {p0, v0, v1}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget-wide v2, p1, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    .line 298
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 296
    const-string v0, "%d/%s/%d/total"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 299
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist processDied(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .registers 4

    .line 370
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 373
    invoke-direct {p0, p1}, Landroid/graphics/GraphicsStatsService;->addToSaveQueue(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    .line 374
    return-void

    .line 372
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method private blacklist pullGraphicsStats(ZJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 209
    const/16 v1, 0x42a

    if-eq v0, v1, :cond_2a

    .line 210
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 211
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 212
    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v3, "GraphicsStatsService"

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_2a

    .line 213
    :cond_1d
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 214
    new-instance p1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_2a
    :goto_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 220
    :try_start_2e
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/GraphicsStatsService;->pullGraphicsStatsImpl(ZJ)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_36

    .line 222
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    nop

    .line 224
    return-void

    .line 222
    :catchall_36
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    throw p1
.end method

.method private blacklist pullGraphicsStatsImpl(ZJ)V
    .registers 20

    .line 228
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    if-eqz v2, :cond_19

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    sub-long/2addr v5, v7

    invoke-direct {v1, v5, v6}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    goto :goto_25

    .line 233
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 238
    :goto_25
    iget-object v7, v1, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 239
    :try_start_28
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, v1, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    const/4 v10, 0x0

    :goto_34
    iget-object v0, v1, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_59

    .line 241
    iget-object v0, v1, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    .line 242
    iget-object v11, v0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v11, v11, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J
    :try_end_48
    .catchall {:try_start_28 .. :try_end_48} :catchall_c3

    cmp-long v11, v11, v5

    if-nez v11, :cond_56

    .line 244
    :try_start_4c
    new-instance v11, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    invoke-direct {v11, v1, v0}, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_54} :catch_55
    .catchall {:try_start_4c .. :try_end_54} :catchall_c3

    .line 247
    goto :goto_56

    .line 245
    :catch_55
    move-exception v0

    .line 240
    :cond_56
    :goto_56
    add-int/lit8 v10, v10, 0x1

    goto :goto_34

    .line 250
    :cond_59
    :try_start_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_c3

    .line 254
    const/4 v0, -0x1

    const/4 v7, 0x1

    invoke-static {v0, v7}, Landroid/graphics/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide v10

    .line 256
    :try_start_60
    iget-object v7, v1, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_be

    .line 257
    :try_start_63
    invoke-direct {v1, v10, v11, v8}, Landroid/graphics/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    .line 258
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 259
    const-string v8, "%d"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 260
    new-instance v6, Ljava/io/File;

    iget-object v1, v1, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 262
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    :goto_8b
    if-ge v6, v5, :cond_b5

    aget-object v8, v1, v6

    .line 263
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v12, v8

    const/4 v13, 0x0

    :goto_95
    if-ge v13, v12, :cond_b2

    aget-object v14, v8, v13

    .line 264
    new-instance v15, Ljava/io/File;

    const-string/jumbo v9, "total"

    invoke-direct {v15, v14, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 266
    goto :goto_af

    .line 268
    :cond_a8
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v11, v9}, Landroid/graphics/GraphicsStatsService;->nAddToDump(JLjava/lang/String;)V

    .line 263
    :goto_af
    add-int/lit8 v13, v13, 0x1

    goto :goto_95

    .line 262
    :cond_b2
    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    .line 272
    :cond_b5
    monitor-exit v7
    :try_end_b6
    .catchall {:try_start_63 .. :try_end_b6} :catchall_bb

    .line 274
    invoke-static {v10, v11, v3, v4, v2}, Landroid/graphics/GraphicsStatsService;->nFinishDumpInMemory(JJZ)V

    .line 275
    nop

    .line 276
    return-void

    .line 272
    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v7
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    :try_start_bd
    throw v0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_be

    .line 274
    :catchall_be
    move-exception v0

    invoke-static {v10, v11, v3, v4, v2}, Landroid/graphics/GraphicsStatsService;->nFinishDumpInMemory(JJZ)V

    .line 275
    throw v0

    .line 250
    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit v7
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v0
.end method

.method private blacklist requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-direct/range {p0 .. p6}, Landroid/graphics/GraphicsStatsService;->fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    move-result-object p1

    .line 281
    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->scheduleRotateLocked()V

    .line 282
    invoke-virtual {p1}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method private blacklist saveBuffer(Landroid/graphics/GraphicsStatsService$HistoricalBuffer;)V
    .registers 15

    .line 303
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saving graphicsstats for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v3, v3, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 307
    :cond_24
    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    :try_start_27
    iget-object v3, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    invoke-direct {p0, v3}, Landroid/graphics/GraphicsStatsService;->pathForApp(Landroid/graphics/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v3

    .line 309
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 310
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 311
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 312
    const-string p1, "GraphicsStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create path: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    monitor-exit v2

    return-void

    .line 315
    :cond_5e
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget v4, v4, Landroid/graphics/GraphicsStatsService$BufferInfo;->mUid:I

    iget-object v5, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v5, v5, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v6, v6, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    iget-object v8, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v8, v8, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    iget-object v10, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v10, v10, Landroid/graphics/GraphicsStatsService$BufferInfo;->mEndTime:J

    iget-object v12, p1, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mData:[B

    invoke-static/range {v3 .. v12}, Landroid/graphics/GraphicsStatsService;->nSaveBuffer(Ljava/lang/String;ILjava/lang/String;JJJ[B)V

    .line 318
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_27 .. :try_end_7c} :catchall_80

    .line 319
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 320
    return-void

    .line 318
    :catchall_80
    move-exception v0

    move-object p1, v0

    :try_start_82
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_80

    throw p1
.end method

.method private blacklist scheduleRotateLocked()V
    .registers 11

    .line 141
    iget-boolean v0, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    if-eqz v0, :cond_5

    .line 142
    return-void

    .line 144
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v1

    .line 146
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 147
    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    new-instance v8, Landroid/graphics/GraphicsStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Landroid/graphics/GraphicsStatsService$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/GraphicsStatsService;)V

    iget-object v9, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const-string v7, "GraphicsStatsService"

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 432
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v1, "GraphicsStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_b

    return-void

    .line 433
    :cond_b
    nop

    .line 434
    array-length p2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, p2, :cond_21

    aget-object v2, p3, v1

    .line 435
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 436
    nop

    .line 437
    const/4 p2, 0x1

    goto :goto_22

    .line 434
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_21
    move p2, v0

    .line 441
    :goto_22
    iget-object p3, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 442
    :try_start_25
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 443
    nop

    :goto_31
    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_72

    if-ge v0, v2, :cond_4e

    .line 445
    :try_start_39
    new-instance v2, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    invoke-direct {v2, p0, v3}, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_49} :catch_4a
    .catchall {:try_start_39 .. :try_end_49} :catchall_72

    .line 448
    goto :goto_4b

    .line 446
    :catch_4a
    move-exception v2

    .line 443
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 450
    :cond_4e
    :try_start_4e
    monitor-exit p3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_72

    .line 451
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-static {p1, p2}, Landroid/graphics/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide p1

    .line 453
    :try_start_57
    iget-object p3, p0, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_6d

    .line 454
    :try_start_5a
    invoke-direct {p0, p1, p2, v1}, Landroid/graphics/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    .line 455
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 456
    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/GraphicsStatsService;->dumpHistoricalLocked(JLjava/util/HashSet;)V

    .line 457
    monitor-exit p3
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_6a

    .line 459
    invoke-static {p1, p2}, Landroid/graphics/GraphicsStatsService;->nFinishDump(J)V

    .line 460
    nop

    .line 461
    return-void

    .line 457
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit p3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 459
    :catchall_6d
    move-exception p3

    invoke-static {p1, p2}, Landroid/graphics/GraphicsStatsService;->nFinishDump(J)V

    .line 460
    throw p3

    .line 450
    :catchall_72
    move-exception p1

    :try_start_73
    monitor-exit p3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 465
    invoke-static {}, Landroid/graphics/GraphicsStatsService;->nativeDestructor()V

    .line 466
    return-void
.end method

.method public blacklist requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 178
    nop

    .line 179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 181
    :try_start_d
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 182
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 185
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 182
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 186
    iget-object v9, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_24} :catch_42
    .catchall {:try_start_d .. :try_end_24} :catchall_3f

    .line 187
    nop

    .line 188
    :try_start_25
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_38

    .line 187
    move-object v0, p0

    move-object v4, p1

    move-object v1, p2

    :try_start_2c
    invoke-direct/range {v0 .. v6}, Landroid/graphics/GraphicsStatsService;->requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 189
    monitor-exit v9
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_36

    .line 193
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    nop

    .line 195
    return-object p1

    .line 189
    :catchall_36
    move-exception v0

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object v4, p1

    :goto_3a
    move-object p1, v0

    :try_start_3b
    monitor-exit v9
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_36

    :try_start_3c
    throw p1
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_3d} :catch_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3f

    .line 190
    :catch_3d
    move-exception v0

    goto :goto_44

    .line 193
    :catchall_3f
    move-exception v0

    move-object p1, v0

    goto :goto_63

    .line 190
    :catch_42
    move-exception v0

    move-object v4, p1

    .line 191
    :goto_44
    :try_start_44
    new-instance p1, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find package: \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_63
    .catchall {:try_start_44 .. :try_end_63} :catchall_3f

    .line 193
    :goto_63
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    throw p1
.end method
