.class public Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;
.super Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.source "KernelSysAppCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelSysAppCpuUserSysTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelSysAppCpuTimeReader<",
        "[J>;"
    }
.end annotation


# instance fields
.field private final blacklist mBuffer:[J

.field private blacklist mLastSystemTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastUserTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUsrSysTime:[J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V
    .registers 5
    .param p1, "reader"    # Lcom/android/internal/os/UidAppKernelProcStringReader;
    .param p2, "throttle"    # Z

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    .line 118
    const/4 v0, 0x2

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mBuffer:[J

    .line 120
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    .line 121
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    .line 122
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastSystemTime:Landroid/util/ArrayMap;

    .line 131
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 4
    .param p1, "throttle"    # Z

    .line 125
    invoke-static {}, Lcom/android/internal/os/UidAppKernelProcStringReader;->getSysAppUserSysTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    .line 118
    const/4 v0, 0x2

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mBuffer:[J

    .line 120
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    .line 121
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    .line 122
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastSystemTime:Landroid/util/ArrayMap;

    .line 126
    return-void
.end method


# virtual methods
.method blacklist readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 135
    .local p1, "cb":Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;, "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<[J>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, " s="

    iget-object v3, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mReader:Lcom/android/internal/os/UidAppKernelProcStringReader;

    iget-boolean v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mThrottle:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/internal/os/UidAppKernelProcStringReader;->open(Z)Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    move-result-object v3

    .line 136
    .local v3, "iter":Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    if-nez v3, :cond_18

    .line 176
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    .line 137
    :cond_17
    return-void

    .line 140
    :cond_18
    const-wide/16 v6, 0x0

    .line 141
    .local v6, "total":J
    :goto_1a
    :try_start_1a
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v4

    move-object v8, v4

    .local v8, "buf":Ljava/nio/CharBuffer;
    if-eqz v4, :cond_135

    .line 142
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "total"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 143
    goto :goto_1a

    .line 145
    :cond_2e
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 146
    .local v4, "firstSpace":I
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v9

    iget-object v10, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mBuffer:[J

    invoke-static {v9, v10}, Lcom/android/internal/os/UidAppKernelProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_68

    .line 147
    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid line: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    goto :goto_1a

    .line 150
    :cond_68
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, "pkg":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mBuffer:[J

    aget-wide v12, v11, v9

    .line 152
    .local v12, "currUsrTimeUs":J
    aget-wide v14, v11, v5

    .line 153
    .local v14, "currSysTimeUs":J
    iget-object v11, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    aput-wide v12, v11, v9

    .line 154
    aput-wide v14, v11, v5

    .line 155
    iget-object v11, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v11

    .line 156
    .local v11, "index":I
    if-ltz v11, :cond_b0

    .line 157
    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v17, v5, v9

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v17, v17, v20

    const/4 v9, 0x0

    aput-wide v17, v5, v9

    .line 158
    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    const/4 v9, 0x1

    aget-wide v17, v5, v9

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastSystemTime:Landroid/util/ArrayMap;

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v17, v17, v20

    const/4 v9, 0x1

    aput-wide v17, v5, v9

    .line 160
    :cond_b0
    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mUsrSysTime:[J

    const/4 v9, 0x0

    aget-wide v17, v5, v9

    const-wide/16 v19, 0x0

    cmp-long v9, v17, v19

    if-ltz v9, :cond_d5

    const/4 v9, 0x1

    aget-wide v21, v5, v9

    cmp-long v16, v21, v19

    if-gez v16, :cond_c3

    goto :goto_d6

    .line 165
    :cond_c3
    cmp-long v16, v17, v19

    if-gtz v16, :cond_cb

    cmp-long v16, v21, v19

    if-lez v16, :cond_11e

    .line 166
    :cond_cb
    if-eqz v2, :cond_11e

    .line 167
    add-long v6, v6, v17

    .line 168
    add-long v6, v6, v21

    .line 169
    invoke-interface {v2, v10, v5}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;->onAppCpuTime(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_11e

    .line 160
    :cond_d5
    const/4 v9, 0x1

    .line 161
    :goto_d6
    iget-object v5, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative user/sys time delta for pkg="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\nPrev times: u="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    .line 162
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastSystemTime:Landroid/util/ArrayMap;

    .line 163
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " Curr times: u="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_11e
    :goto_11e
    iget-object v2, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastUserTime:Landroid/util/ArrayMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v10, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v2, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuUserSysTimeReader;->mLastSystemTime:Landroid/util/ArrayMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v10, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_130
    .catchall {:try_start_1a .. :try_end_130} :catchall_13b

    .line 175
    move-object/from16 v2, p1

    const/4 v5, 0x1

    .end local v4    # "firstSpace":I
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v12    # "currUsrTimeUs":J
    .end local v14    # "currSysTimeUs":J
    goto/16 :goto_1a

    .line 176
    .end local v6    # "total":J
    .end local v8    # "buf":Ljava/nio/CharBuffer;
    :cond_135
    if-eqz v3, :cond_13a

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    .line 177
    .end local v3    # "iter":Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    :cond_13a
    return-void

    .line 135
    .restart local v3    # "iter":Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    :catchall_13b
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_148

    :try_start_13f
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_143

    goto :goto_148

    :catchall_143
    move-exception v0

    move-object v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_148
    :goto_148
    throw v2
.end method
