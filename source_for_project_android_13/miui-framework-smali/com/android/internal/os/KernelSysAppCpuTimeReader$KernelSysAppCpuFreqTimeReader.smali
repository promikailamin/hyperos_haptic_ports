.class public Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;
.super Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.source "KernelSysAppCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelSysAppCpuFreqTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelSysAppCpuTimeReader<",
        "[J>;"
    }
.end annotation


# instance fields
.field private blacklist mBuffer:[J

.field private blacklist mCpuFreqs:[J

.field private blacklist mCurTimes:[J

.field private blacklist mDeltaTimes:[J

.field private blacklist mFreqCount:I

.field private blacklist mLastTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "throttle"    # Z

    .line 203
    invoke-static {}, Lcom/android/internal/os/UidAppKernelProcStringReader;->getSysAppFreqTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    .line 194
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    .line 204
    return-void
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;)Z
    .registers 6
    .param p1, "iter"    # Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    .line 275
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_20

    .line 279
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    .line 280
    .local v1, "line":Ljava/nio/CharBuffer;
    iget-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCpuFreqs:[J

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    .line 281
    return v3

    .line 283
    :cond_14
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->readFreqs(Ljava/lang/String;)[J

    move-result-object v2

    if-eqz v2, :cond_1f

    move v0, v3

    :cond_1f
    return v0

    .line 277
    .end local v1    # "line":Ljava/nio/CharBuffer;
    :cond_20
    :goto_20
    return v0
.end method

.method private blacklist copyToCurTimes()V
    .registers 7

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    if-ge v0, v1, :cond_13

    .line 270
    iget-object v1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCurTimes:[J

    iget-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mBuffer:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method private blacklist extractClusterInfoFromProcFileFreqs()Landroid/util/IntArray;
    .registers 9

    .line 297
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 298
    .local v0, "numClusterFreqs":Landroid/util/IntArray;
    const/4 v1, 0x0

    .line 299
    .local v1, "freqsFound":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget v3, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    if-ge v2, v3, :cond_24

    .line 300
    add-int/lit8 v1, v1, 0x1

    .line 301
    add-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_1d

    iget-object v3, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, v3, v4

    aget-wide v6, v3, v2

    cmp-long v3, v4, v6

    if-gtz v3, :cond_21

    .line 302
    :cond_1d
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 303
    const/4 v1, 0x0

    .line 299
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 306
    .end local v2    # "i":I
    :cond_24
    return-object v0
.end method

.method private blacklist readFreqs(Ljava/lang/String;)[J
    .registers 7
    .param p1, "line"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 208
    return-object v0

    .line 210
    :cond_4
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "lineArray":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_27

    .line 212
    iget-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed freq line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-object v0

    .line 215
    :cond_27
    array-length v0, v1

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    .line 216
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCpuFreqs:[J

    .line 217
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCurTimes:[J

    .line 218
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mDeltaTimes:[J

    .line 219
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mBuffer:[J

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c
    iget v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    if-ge v0, v2, :cond_51

    .line 221
    iget-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 223
    .end local v0    # "i":I
    :cond_51
    iget-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCpuFreqs:[J

    return-object v0
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

    .line 228
    .local p1, "cb":Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;, "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<[J>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mReader:Lcom/android/internal/os/UidAppKernelProcStringReader;

    iget-boolean v3, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mThrottle:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/internal/os/UidAppKernelProcStringReader;->open(Z)Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    move-result-object v3

    .line 229
    .local v3, "iter":Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    :try_start_e
    invoke-direct {v1, v3}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->checkPrecondition(Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_e9

    if-nez v0, :cond_1a

    .line 265
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    .line 230
    :cond_19
    return-void

    .line 233
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v0

    move-object v5, v0

    .local v5, "buf":Ljava/nio/CharBuffer;
    if-eqz v0, :cond_e1

    .line 234
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "firstSpace":I
    add-int/lit8 v6, v0, -0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, "pkg":Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mBuffer:[J

    invoke-static {v8, v9}, Lcom/android/internal/os/UidAppKernelProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v8

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mBuffer:[J

    array-length v9, v9

    if-eq v8, v9, :cond_68

    .line 238
    iget-object v7, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    goto :goto_1a

    .line 241
    :cond_68
    iget-object v8, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    .line 242
    .local v8, "lastTimes":[J
    if-nez v8, :cond_7c

    .line 243
    iget v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    new-array v9, v9, [J

    move-object v8, v9

    .line 244
    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_7c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->copyToCurTimes()V

    .line 247
    const/4 v9, 0x0

    .line 248
    .local v9, "notify":Z
    const/4 v10, 0x1

    .line 249
    .local v10, "valid":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_82
    iget v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    if-ge v11, v12, :cond_cc

    .line 251
    iget-object v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mDeltaTimes:[J

    iget-object v13, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCurTimes:[J

    aget-wide v13, v13, v11

    aget-wide v15, v8, v11

    sub-long/2addr v13, v15

    aput-wide v13, v12, v11

    .line 252
    const-wide/16 v15, 0x0

    cmp-long v12, v13, v15

    if-gez v12, :cond_b8

    .line 253
    iget-object v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Negative delta from freq time proc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mDeltaTimes:[J

    move-object/from16 v17, v5

    .end local v5    # "buf":Ljava/nio/CharBuffer;
    .local v17, "buf":Ljava/nio/CharBuffer;
    aget-wide v4, v14, v11

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v4, 0x0

    move v10, v4

    .end local v10    # "valid":Z
    .local v4, "valid":Z
    goto :goto_ba

    .line 252
    .end local v4    # "valid":Z
    .end local v17    # "buf":Ljava/nio/CharBuffer;
    .restart local v5    # "buf":Ljava/nio/CharBuffer;
    .restart local v10    # "valid":Z
    :cond_b8
    move-object/from16 v17, v5

    .line 256
    .end local v5    # "buf":Ljava/nio/CharBuffer;
    .restart local v17    # "buf":Ljava/nio/CharBuffer;
    :goto_ba
    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mDeltaTimes:[J

    aget-wide v4, v4, v11

    cmp-long v4, v4, v15

    if-lez v4, :cond_c4

    const/4 v4, 0x1

    goto :goto_c5

    :cond_c4
    move v4, v7

    :goto_c5
    or-int/2addr v9, v4

    .line 249
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v17

    const/4 v4, 0x1

    goto :goto_82

    .end local v17    # "buf":Ljava/nio/CharBuffer;
    .restart local v5    # "buf":Ljava/nio/CharBuffer;
    :cond_cc
    move-object/from16 v17, v5

    .line 258
    .end local v5    # "buf":Ljava/nio/CharBuffer;
    .end local v11    # "i":I
    .restart local v17    # "buf":Ljava/nio/CharBuffer;
    if-eqz v9, :cond_de

    if-eqz v10, :cond_de

    .line 259
    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCurTimes:[J

    invoke-static {v4, v7, v8, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    if-eqz v2, :cond_de

    .line 261
    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mDeltaTimes:[J

    invoke-interface {v2, v6, v4}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;->onAppCpuTime(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_de
    .catchall {:try_start_1a .. :try_end_de} :catchall_e9

    .line 264
    .end local v0    # "firstSpace":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v8    # "lastTimes":[J
    .end local v9    # "notify":Z
    .end local v10    # "valid":Z
    :cond_de
    const/4 v4, 0x1

    goto/16 :goto_1a

    .line 233
    .end local v17    # "buf":Ljava/nio/CharBuffer;
    .restart local v5    # "buf":Ljava/nio/CharBuffer;
    :cond_e1
    move-object/from16 v17, v5

    .line 265
    .end local v5    # "buf":Ljava/nio/CharBuffer;
    if-eqz v3, :cond_e8

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    .line 266
    .end local v3    # "iter":Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    :cond_e8
    return-void

    .line 228
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
