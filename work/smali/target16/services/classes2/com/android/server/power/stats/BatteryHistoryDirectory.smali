.class public Lcom/android/server/power/stats/BatteryHistoryDirectory;
.super Ljava/lang/Object;
.source "BatteryHistoryDirectory.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;


# static fields
.field public static final DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

.field public static final FILE_FORMAT_COMPRESSED_PARCEL:[B

.field public static final FILE_FORMAT_PARCEL:[B


# instance fields
.field public final mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

.field public final mDirectory:Ljava/io/File;

.field public mFileCompressionEnabled:Z

.field public final mHistoryFiles:Ljava/util/List;

.field public mInitialized:Z

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mMaxHistorySize:I

.field public mWaitForDirectoryLock:Z


# direct methods
.method public static synthetic $r8$lambda$4_IaI9G7_lCfmgCS4OX1O0RYuI8(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$ensureInitialized$2(Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GNciJzgYSSxlT7k25HNe9uFcdo8(Lcom/android/server/power/stats/BatteryHistoryDirectory;Landroid/util/AtomicFile;[B)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$writeFragment$0(Landroid/util/AtomicFile;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$HJcDn7BYV6qYFdm9J-T1ZR61QyE(Lcom/android/server/power/stats/BatteryHistoryDirectory;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$writeFragment$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$t-NcGBV2AhPe8Gl0d2zXWSPrsEM(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lambda$ensureInitialized$3(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    .line 59
    new-array v1, v0, [B

    fill-array-data v1, :array_18

    sput-object v1, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    .line 92
    new-instance v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    invoke-direct {v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory$1;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    return-void

    nop

    :array_18
    .array-data 1
        0x50t
        0x52t
        0x43t
        0x4ct
    .end array-data

    :array_1e
    .array-data 1
        0x47t
        0x5at
        0x49t
        0x50t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 4

    .line 121
    sget-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;-><init>(Ljava/io/File;ILcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;)V
    .registers 5

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mFileCompressionEnabled:Z

    .line 126
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    .line 127
    iput p2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    if-nez p2, :cond_25

    .line 129
    const-string p1, "BatteryHistoryDirectory"

    const-string/jumbo p2, "maxHistorySize should not be zero"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_25
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)I
    .registers 2

    .line 541
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    return p0

    .line 543
    :cond_8
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readInt(Ljava/io/InputStream;)I
    .registers 3

    .line 534
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 535
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 536
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 537
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static writeInt(Ljava/io/OutputStream;I)V
    .registers 3

    shr-int/lit8 v0, p1, 0x18

    .line 527
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    .line 528
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    .line 529
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 530
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .registers 5

    .line 432
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 434
    new-instance v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;-><init>(Ljava/io/File;J)V

    .line 435
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 438
    :try_start_d
    iget-object p1, v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_19
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    goto :goto_2f

    :catchall_17
    move-exception p1

    goto :goto_38

    .line 440
    :catch_19
    :try_start_19
    const-string p1, "BatteryHistoryDirectory"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create history file: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_2f
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_17

    .line 444
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :goto_38
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 445
    throw p1
.end method

.method public final deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    .registers 2

    .line 310
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 311
    check-cast p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object p0, p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    return-void
.end method

.method public final ensureInitialized()V
    .registers 9

    .line 325
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mInitialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-wide/32 v0, 0x80000

    .line 329
    const-string v2, "BatteryStatsHistory.load"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 330
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 331
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_37

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HistoryDir does not exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryHistoryDirectory"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 336
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 337
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    new-instance v7, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 352
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 353
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 354
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_5b
    const/4 v5, 0x1

    .line 356
    iput-boolean v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mInitialized:Z

    .line 357
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_71

    .line 359
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v4}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 371
    :cond_71
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public getEarliestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .registers 3

    .line 404
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 405
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 407
    :try_start_6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 408
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    .line 412
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :catchall_1b
    move-exception v0

    goto :goto_22

    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_22
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 413
    throw v0
.end method

.method public getFileNames()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 390
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 392
    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    .line 394
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    goto :goto_11

    :catchall_2b
    move-exception v0

    goto :goto_31

    .line 398
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :goto_31
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 399
    throw v0
.end method

.method public getFragments()Ljava/util/List;
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 382
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 383
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    return-object p0

    .line 379
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Reading battery history without a lock"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLatestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .registers 3

    .line 418
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 419
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 421
    :try_start_6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 422
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_20

    .line 426
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :catchall_20
    move-exception v0

    goto :goto_27

    :cond_22
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_27
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 427
    throw v0
.end method

.method public getMaxHistorySize()I
    .registers 1

    .line 149
    iget p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    return p0
.end method

.method public getSize()I
    .registers 5

    .line 465
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 467
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    const/4 v0, 0x0

    move v1, v0

    .line 470
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2b

    .line 471
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_29

    long-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catchall_29
    move-exception v0

    goto :goto_2f

    .line 475
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return v1

    :goto_2f
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 476
    throw v0
.end method

.method public hasCompletedFragments()Z
    .registers 3

    .line 452
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 454
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 457
    :try_start_6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_15

    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 459
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return v1

    :catchall_15
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 460
    throw v0
.end method

.method public isLocked()Z
    .registers 1

    .line 321
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$ensureInitialized$2(Ljava/util/List;Ljava/util/Set;Ljava/io/File;Ljava/lang/String;)Z
    .registers 9

    .line 338
    const-string v0, ".bh"

    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_12

    .line 340
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 344
    :cond_12
    :try_start_12
    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 345
    new-instance v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;-><init>(Ljava/io/File;J)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_24} :catch_26

    const/4 p0, 0x1

    return p0

    .line 347
    :catch_26
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public final synthetic lambda$ensureInitialized$3(Ljava/util/List;)V
    .registers 7

    .line 360
    const-string v0, "BatteryStatsHistory.load"

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    const/4 v1, 0x0

    const-wide/32 v2, 0x80000

    .line 362
    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 363
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception p1

    goto :goto_26

    .line 366
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 367
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void

    .line 366
    :goto_26
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 367
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 368
    throw p1
.end method

.method public final synthetic lambda$writeFragment$0(Landroid/util/AtomicFile;[B)V
    .registers 3

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->writeHistoryFragmentCompressed(Landroid/util/AtomicFile;[B)V

    return-void
.end method

.method public final synthetic lambda$writeFragment$1()V
    .registers 1

    .line 198
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->trim()V

    return-void
.end method

.method public lock()V
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public makeDirectoryLockUnconditional()V
    .registers 2

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    return-void
.end method

.method public readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B
    .registers 15

    .line 245
    const-string v0, "BatteryHistoryDirectory"

    move-object v1, p1

    check-cast v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    .line 246
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    return-object v3

    .line 250
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 251
    const-string v2, "BatteryStatsHistory.read"

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 252
    :try_start_1d
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_48
    .catchall {:try_start_1d .. :try_end_21} :catchall_45

    const/4 v6, 0x4

    .line 253
    :try_start_22
    new-array v7, v6, [B

    const/4 v8, 0x0

    .line 254
    invoke-virtual {v2, v7, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_4b

    const/4 v9, -0x1

    const-string v10, "Invalid battery history file format "

    if-ne v6, v9, :cond_6e

    .line 255
    :try_start_2e
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v6, v6, v11

    if-nez v6, :cond_4e

    .line 256
    new-array v6, v8, [B
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_4b

    .line 300
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_48
    .catchall {:try_start_3e .. :try_end_41} :catchall_45

    .line 305
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catchall_45
    move-exception p0

    goto/16 :goto_120

    :catch_48
    move-exception v2

    goto/16 :goto_fd

    :catchall_4b
    move-exception v6

    goto/16 :goto_f2

    .line 259
    :cond_4e
    :try_start_4e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_67
    .catchall {:try_start_4e .. :try_end_67} :catchall_4b

    .line 300
    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_48
    .catchall {:try_start_67 .. :try_end_6a} :catchall_45

    .line 305
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    .line 265
    :cond_6e
    :try_start_6e
    sget-object v6, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v6, 0x1

    goto :goto_81

    .line 267
    :cond_78
    sget-object v6, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_d2

    move v6, v8

    .line 275
    :goto_81
    invoke-static {v2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readInt(Ljava/io/InputStream;)I

    move-result v7

    if-ltz v7, :cond_b2

    const v11, 0x989680

    if-le v7, v11, :cond_8d

    goto :goto_b2

    .line 282
    :cond_8d
    new-array v10, v7, [B

    if-eqz v6, :cond_97

    .line 284
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    invoke-interface {v6, v10, v2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;->uncompress([BLjava/io/InputStream;)V

    goto :goto_ab

    :cond_97
    :goto_97
    if-ge v8, v7, :cond_ab

    sub-int v6, v7, v8

    .line 288
    invoke-virtual {v2, v10, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v9, :cond_a3

    add-int/2addr v8, v6

    goto :goto_97

    .line 290
    :cond_a3
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid battery history file format"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_ab
    .catchall {:try_start_6e .. :try_end_ab} :catchall_4b

    .line 300
    :cond_ab
    :goto_ab
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_48
    .catchall {:try_start_ab .. :try_end_ae} :catchall_45

    .line 305
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v10

    .line 277
    :cond_b2
    :goto_b2
    :try_start_b2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_cb
    .catchall {:try_start_b2 .. :try_end_cb} :catchall_4b

    .line 300
    :try_start_cb
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_48
    .catchall {:try_start_cb .. :try_end_ce} :catchall_45

    .line 305
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    .line 270
    :cond_d2
    :try_start_d2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_eb
    .catchall {:try_start_d2 .. :try_end_eb} :catchall_4b

    .line 300
    :try_start_eb
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_48
    .catchall {:try_start_eb .. :try_end_ee} :catchall_45

    .line 305
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :goto_f2
    if-eqz v2, :cond_fc

    .line 252
    :try_start_f4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f8

    goto :goto_fc

    :catchall_f8
    move-exception v2

    :try_start_f9
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_fc
    :goto_fc
    throw v6
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fd} :catch_48
    .catchall {:try_start_f9 .. :try_end_fd} :catchall_45

    .line 301
    :goto_fd
    :try_start_fd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_11c
    .catchall {:try_start_fd .. :try_end_11c} :catchall_45

    .line 305
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :goto_120
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 306
    throw p0
.end method

.method public reset()V
    .registers 3

    .line 481
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 483
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    .line 488
    :try_start_6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    .line 489
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    goto :goto_c

    :catchall_1e
    move-exception v0

    goto :goto_29

    .line 491
    :cond_20
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_1e

    .line 493
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-void

    :goto_29
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 494
    throw v0
.end method

.method public setFileCompressionEnabled(Z)V
    .registers 2

    .line 136
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mFileCompressionEnabled:Z

    return-void
.end method

.method public setMaxHistorySize(I)V
    .registers 2

    .line 140
    iput p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    .line 141
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->trim()V

    return-void
.end method

.method public final trim()V
    .registers 8

    .line 498
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    .line 500
    const-string v0, "BatteryStatsHistory.trim"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 502
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_65

    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    .line 506
    :goto_11
    :try_start_11
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_32

    .line 507
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :catchall_30
    move-exception v0

    goto :goto_67

    .line 511
    :cond_32
    :goto_32
    iget v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    if-le v4, v3, :cond_5e

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_5e

    .line 512
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    .line 513
    iget-object v5, v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    .line 514
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 515
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_11 .. :try_end_5c} :catchall_30

    sub-int/2addr v4, v5

    goto :goto_32

    .line 519
    :cond_5e
    :try_start_5e
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_65

    .line 522
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_65
    move-exception p0

    goto :goto_6b

    .line 519
    :goto_67
    :try_start_67
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 520
    throw v0
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_65

    .line 522
    :goto_6b
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 523
    throw p0
.end method

.method public tryLock()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    if-eqz v0, :cond_b

    .line 169
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 p0, 0x1

    return p0

    .line 172
    :cond_b
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p0

    return p0
.end method

.method public unlock()V
    .registers 1

    .line 316
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public writeFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;[BZ)V
    .registers 6

    .line 178
    check-cast p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    const/4 v0, 0x0

    .line 181
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 182
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 183
    sget-object v1, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 184
    array-length v1, p2

    invoke-static {v0, v1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->writeInt(Ljava/io/OutputStream;I)V

    .line 185
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 186
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 187
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    if-eqz p3, :cond_3f

    .line 194
    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mFileCompressionEnabled:Z

    if-eqz p3, :cond_33

    .line 195
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Landroid/util/AtomicFile;[B)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_33

    :catch_31
    move-exception p0

    goto :goto_40

    .line 198
    :cond_33
    :goto_33
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3f} :catch_31

    :cond_3f
    return-void

    .line 201
    :goto_40
    const-string p2, "BatteryHistoryDirectory"

    const-string p3, "Error writing battery history fragment"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public final writeHistoryFragmentCompressed(Landroid/util/AtomicFile;[B)V
    .registers 9

    .line 207
    array-length v0, p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 212
    :cond_9
    const-string v0, "BatteryStatsHistory.compressHistoryFile"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    const/4 v0, 0x0

    .line 216
    :try_start_15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 217
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 218
    sget-object v3, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 219
    array-length v3, p2

    invoke-static {v0, v3}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->writeInt(Ljava/io/OutputStream;I)V

    .line 221
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;

    invoke-interface {v3, v0, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;->compress(Ljava/io/OutputStream;[B)V

    .line 222
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_36
    .catchall {:try_start_15 .. :try_end_2d} :catchall_34

    .line 238
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 239
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_34
    move-exception p1

    goto :goto_51

    :catch_36
    move-exception p2

    .line 235
    :try_start_37
    const-string v3, "BatteryHistoryDirectory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error compressing battery history chunk "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_34

    goto :goto_2d

    .line 238
    :goto_51
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    .line 239
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 240
    throw p1
.end method
