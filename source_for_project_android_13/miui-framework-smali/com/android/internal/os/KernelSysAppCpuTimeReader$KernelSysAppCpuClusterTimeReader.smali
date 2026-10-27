.class public Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;
.super Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.source "KernelSysAppCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelSysAppCpuClusterTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelSysAppCpuTimeReader<",
        "[J>;"
    }
.end annotation


# instance fields
.field private blacklist mBuffer:[J

.field private blacklist mCoresOnClusters:[I

.field private blacklist mCurTime:[J

.field private blacklist mDeltaTime:[J

.field private blacklist mLastTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field private blacklist mNumClusters:I

.field private blacklist mNumCores:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V
    .registers 4
    .param p1, "reader"    # Lcom/android/internal/os/UidAppKernelProcStringReader;
    .param p2, "throttle"    # Z

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    .line 433
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    .line 443
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "throttle"    # Z

    .line 437
    invoke-static {}, Lcom/android/internal/os/UidAppKernelProcStringReader;->getSysAppClusterTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    .line 433
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    .line 438
    return-void
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;)Z
    .registers 12
    .param p1, "iter"    # Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    .line 498
    const/4 v0, 0x0

    if-eqz p1, :cond_91

    invoke-virtual {p1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_91

    .line 502
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    .line 503
    .local v1, "line":Ljava/nio/CharBuffer;
    iget v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumClusters:I

    const/4 v3, 0x1

    if-lez v2, :cond_15

    .line 504
    return v3

    .line 507
    :cond_15
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "lineArray":[Ljava/lang/String;
    array-length v4, v2

    rem-int/lit8 v4, v4, 0x2

    const-string v5, "Malformed uid_concurrent_policy_time line: "

    if-eqz v4, :cond_3d

    .line 509
    iget-object v3, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return v0

    .line 512
    :cond_3d
    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    .line 513
    .local v4, "clusters":[I
    const/4 v6, 0x0

    .line 514
    .local v6, "cores":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_44
    array-length v8, v4

    if-ge v7, v8, :cond_7d

    .line 515
    mul-int/lit8 v8, v7, 0x2

    aget-object v8, v2, v8

    const-string v9, "policy"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6a

    .line 516
    iget-object v3, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v0

    .line 519
    :cond_6a
    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v3

    aget-object v8, v2, v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v4, v7

    .line 520
    aget v8, v4, v7

    add-int/2addr v6, v8

    .line 514
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 522
    .end local v7    # "i":I
    :cond_7d
    array-length v0, v4

    iput v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumClusters:I

    .line 523
    iput v6, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumCores:I

    .line 524
    iput-object v4, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCoresOnClusters:[I

    .line 525
    new-array v5, v6, [J

    iput-object v5, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mBuffer:[J

    .line 526
    new-array v5, v0, [J

    iput-object v5, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCurTime:[J

    .line 527
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mDeltaTime:[J

    .line 528
    return v3

    .line 500
    .end local v1    # "line":Ljava/nio/CharBuffer;
    .end local v2    # "lineArray":[Ljava/lang/String;
    .end local v4    # "clusters":[I
    .end local v6    # "cores":I
    :cond_91
    :goto_91
    return v0
.end method

.method private blacklist sumClusterTime()V
    .registers 12

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "core":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumClusters:I

    if-ge v1, v2, :cond_28

    .line 489
    const-wide/16 v2, 0x0

    .line 490
    .local v2, "sum":D
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_9
    iget-object v5, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCoresOnClusters:[I

    aget v5, v5, v1

    if-gt v4, v5, :cond_20

    .line 491
    iget-object v5, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mBuffer:[J

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "core":I
    .local v6, "core":I
    aget-wide v7, v5, v0

    long-to-double v7, v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    mul-double/2addr v7, v9

    int-to-double v9, v4

    div-double/2addr v7, v9

    add-double/2addr v2, v7

    .line 490
    add-int/lit8 v4, v4, 0x1

    move v0, v6

    goto :goto_9

    .line 493
    .end local v4    # "j":I
    .end local v6    # "core":I
    .restart local v0    # "core":I
    :cond_20
    iget-object v4, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCurTime:[J

    double-to-long v5, v2

    aput-wide v5, v4, v1

    .line 488
    .end local v2    # "sum":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 495
    .end local v1    # "i":I
    :cond_28
    return-void
.end method


# virtual methods
.method blacklist readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 447
    .local p1, "cb":Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;, "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<[J>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mReader:Lcom/android/internal/os/UidAppKernelProcStringReader;

    iget-boolean v3, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mThrottle:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/internal/os/UidAppKernelProcStringReader;->open(Z)Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    move-result-object v3

    .line 448
    .local v3, "iter":Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    :try_start_e
    invoke-direct {v1, v3}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->checkPrecondition(Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_e9

    if-nez v0, :cond_1a

    .line 483
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    .line 449
    :cond_19
    return-void

    .line 452
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v0

    move-object v5, v0

    .local v5, "buf":Ljava/nio/CharBuffer;
    if-eqz v0, :cond_e1

    .line 453
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 454
    .local v0, "firstSpace":I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mBuffer:[J

    invoke-static {v6, v7}, Lcom/android/internal/os/UidAppKernelProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v6

    iget-object v7, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mBuffer:[J

    array-length v7, v7

    if-eq v6, v7, :cond_5d

    .line 456
    iget-object v6, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    goto :goto_1a

    .line 459
    :cond_5d
    add-int/lit8 v6, v0, -0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 460
    .local v6, "pkg":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    .line 461
    .local v8, "lastTimes":[J
    if-nez v8, :cond_7c

    .line 462
    iget v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumClusters:I

    new-array v9, v9, [J

    move-object v8, v9

    .line 463
    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_7c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->sumClusterTime()V

    .line 466
    const/4 v9, 0x1

    .line 467
    .local v9, "valid":Z
    const/4 v10, 0x0

    .line 468
    .local v10, "notify":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_82
    iget v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mNumClusters:I

    if-ge v11, v12, :cond_cc

    .line 469
    iget-object v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mDeltaTime:[J

    iget-object v13, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCurTime:[J

    aget-wide v13, v13, v11

    aget-wide v15, v8, v11

    sub-long/2addr v13, v15

    aput-wide v13, v12, v11

    .line 470
    const-wide/16 v15, 0x0

    cmp-long v12, v13, v15

    if-gez v12, :cond_b8

    .line 471
    iget-object v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Negative delta from cluster time proc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mDeltaTime:[J

    move-object/from16 v17, v5

    .end local v5    # "buf":Ljava/nio/CharBuffer;
    .local v17, "buf":Ljava/nio/CharBuffer;
    aget-wide v4, v14, v11

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v4, 0x0

    move v9, v4

    .end local v9    # "valid":Z
    .local v4, "valid":Z
    goto :goto_ba

    .line 470
    .end local v4    # "valid":Z
    .end local v17    # "buf":Ljava/nio/CharBuffer;
    .restart local v5    # "buf":Ljava/nio/CharBuffer;
    .restart local v9    # "valid":Z
    :cond_b8
    move-object/from16 v17, v5

    .line 474
    .end local v5    # "buf":Ljava/nio/CharBuffer;
    .restart local v17    # "buf":Ljava/nio/CharBuffer;
    :goto_ba
    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mDeltaTime:[J

    aget-wide v4, v4, v11

    cmp-long v4, v4, v15

    if-lez v4, :cond_c4

    const/4 v4, 0x1

    goto :goto_c5

    :cond_c4
    move v4, v7

    :goto_c5
    or-int/2addr v10, v4

    .line 468
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v17

    const/4 v4, 0x1

    goto :goto_82

    .end local v17    # "buf":Ljava/nio/CharBuffer;
    .restart local v5    # "buf":Ljava/nio/CharBuffer;
    :cond_cc
    move-object/from16 v17, v5

    .line 476
    .end local v5    # "buf":Ljava/nio/CharBuffer;
    .end local v11    # "i":I
    .restart local v17    # "buf":Ljava/nio/CharBuffer;
    if-eqz v10, :cond_de

    if-eqz v9, :cond_de

    .line 477
    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mCurTime:[J

    invoke-static {v4, v7, v8, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    if-eqz v2, :cond_de

    .line 479
    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuClusterTimeReader;->mDeltaTime:[J

    invoke-interface {v2, v6, v4}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;->onAppCpuTime(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_de
    .catchall {:try_start_1a .. :try_end_de} :catchall_e9

    .line 482
    .end local v0    # "firstSpace":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v8    # "lastTimes":[J
    .end local v9    # "valid":Z
    .end local v10    # "notify":Z
    :cond_de
    const/4 v4, 0x1

    goto/16 :goto_1a

    .line 452
    .end local v17    # "buf":Ljava/nio/CharBuffer;
    .restart local v5    # "buf":Ljava/nio/CharBuffer;
    :cond_e1
    move-object/from16 v17, v5

    .line 483
    .end local v5    # "buf":Ljava/nio/CharBuffer;
    if-eqz v3, :cond_e8

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    .line 484
    .end local v3    # "iter":Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    :cond_e8
    return-void

    .line 447
    .restart local v3    # "iter":Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    :catchall_e9
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_f6

    :try_start_ed
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_f1

    goto :goto_f6

    :catchall_f1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f6
    :goto_f6
    throw v4
.end method
