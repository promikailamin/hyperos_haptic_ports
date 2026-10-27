.class public Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;
.super Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.source "KernelSysAppCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelSysAppCpuActiveTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelSysAppCpuTimeReader<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mBuffer:[J

.field private blacklist mCores:I

.field private blacklist mLastTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V
    .registers 4
    .param p1, "reader"    # Lcom/android/internal/os/UidAppKernelProcStringReader;
    .param p2, "throttle"    # Z

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mCores:I

    .line 331
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    .line 339
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "throttle"    # Z

    .line 334
    invoke-static {}, Lcom/android/internal/os/UidAppKernelProcStringReader;->getSysAppActiveTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mCores:I

    .line 331
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    .line 335
    return-void
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;)Z
    .registers 9
    .param p1, "iter"    # Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    .line 382
    const/4 v0, 0x0

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_68

    .line 386
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    .line 387
    .local v1, "line":Ljava/nio/CharBuffer;
    iget v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mCores:I

    const/4 v3, 0x1

    if-lez v2, :cond_14

    .line 388
    return v3

    .line 391
    :cond_14
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "str":Ljava/lang/String;
    const-string v4, "cpus:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Malformed uid_concurrent_active_time line: "

    if-nez v4, :cond_39

    .line 393
    iget-object v3, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return v0

    .line 396
    :cond_39
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 397
    .local v4, "cores":I
    if-gtz v4, :cond_61

    .line 398
    iget-object v3, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v0

    .line 401
    :cond_61
    iput v4, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mCores:I

    .line 402
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mBuffer:[J

    .line 403
    return v3

    .line 384
    .end local v1    # "line":Ljava/nio/CharBuffer;
    .end local v2    # "str":Ljava/lang/String;
    .end local v4    # "cores":I
    :cond_68
    :goto_68
    return v0
.end method

.method private static blacklist sumActiveTime([J)J
    .registers 8
    .param p0, "times"    # [J

    .line 342
    const-wide/16 v0, 0x0

    .line 343
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_14

    .line 344
    aget-wide v3, p0, v2

    long-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double/2addr v3, v5

    add-int/lit8 v5, v2, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 346
    .end local v2    # "i":I
    :cond_14
    double-to-long v2, v0

    return-wide v2
.end method


# virtual methods
.method blacklist readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 351
    .local p1, "cb":Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;, "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mReader:Lcom/android/internal/os/UidAppKernelProcStringReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mThrottle:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader;->open(Z)Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 352
    .local v0, "iter":Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    :try_start_a
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->checkPrecondition(Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;)Z

    move-result v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_c2

    if-nez v1, :cond_16

    .line 378
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    .line 353
    :cond_15
    return-void

    .line 356
    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v0}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    move-object v2, v1

    .local v2, "buf":Ljava/nio/CharBuffer;
    if-eqz v1, :cond_bc

    .line 357
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 358
    .local v1, "firstSpace":I
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "pkg":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mBuffer:[J

    invoke-static {v4, v5}, Lcom/android/internal/os/UidAppKernelProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mBuffer:[J

    array-length v6, v5

    if-eq v4, v6, :cond_64

    .line 361
    iget-object v4, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    goto :goto_16

    .line 364
    :cond_64
    invoke-static {v5}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->sumActiveTime([J)J

    move-result-wide v4

    .line 365
    .local v4, "cpuActiveTime":J
    iget-object v6, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v6

    .line 366
    .local v6, "index":I
    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-lez v9, :cond_ba

    .line 367
    const/4 v9, -0x1

    if-le v6, v9, :cond_84

    iget-object v9, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_85

    :cond_84
    move-wide v9, v7

    :goto_85
    sub-long v9, v4, v9

    .line 368
    .local v9, "delta":J
    cmp-long v11, v9, v7

    if-lez v11, :cond_9e

    .line 369
    iget-object v7, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    if-eqz p1, :cond_ba

    .line 371
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v3, v7}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;->onAppCpuTime(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ba

    .line 373
    :cond_9e
    cmp-long v7, v9, v7

    if-gez v7, :cond_ba

    .line 374
    iget-object v7, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuActiveTimeReader;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Negative delta from active time proc: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_16 .. :try_end_ba} :catchall_c2

    .line 377
    .end local v1    # "firstSpace":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "cpuActiveTime":J
    .end local v6    # "index":I
    .end local v9    # "delta":J
    :cond_ba
    :goto_ba
    goto/16 :goto_16

    .line 378
    .end local v2    # "buf":Ljava/nio/CharBuffer;
    :cond_bc
    if-eqz v0, :cond_c1

    invoke-virtual {v0}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    .line 379
    .end local v0    # "iter":Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    :cond_c1
    return-void

    .line 351
    .restart local v0    # "iter":Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    :catchall_c2
    move-exception v1

    if-eqz v0, :cond_cd

    :try_start_c5
    invoke-virtual {v0}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c9

    goto :goto_cd

    :catchall_c9
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_cd
    :goto_cd
    throw v1
.end method
