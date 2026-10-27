.class public Lcom/android/internal/os/KernelWakelockReaderRewrite;
.super Ljava/lang/Object;
.source "KernelWakelockReaderRewrite.java"


# static fields
.field private static final blacklist PROC_WAKELOCKS_FORMAT:[I

.field private static final blacklist TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final blacklist WAKEUP_SOURCES_FORMAT:[I

.field private static blacklist sKernelWakelockUpdateVersion:I = 0x0

.field private static final blacklist sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final blacklist sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field blacklist br_flag:Z

.field private final blacklist mProcWakelocksData:[J

.field private final blacklist mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->PROC_WAKELOCKS_FORMAT:[I

    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->WAKEUP_SOURCES_FORMAT:[I

    return-void

    :array_14
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    :array_24
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksName:[Ljava/lang/String;

    .line 45
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksData:[J

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    return-void
.end method

.method private blacklist readInfoCheck([BIIJ)I
    .registers 11
    .param p1, "buffer"    # [B
    .param p2, "len"    # I
    .param p3, "cnt"    # I
    .param p4, "startTime"    # J

    .line 56
    if-ltz p3, :cond_6

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lez v0, :cond_9

    .line 57
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    .line 59
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p4

    .line 60
    .local v0, "readTime":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    const-string v3, "KernelWakelockReader"

    if-lez v2, :cond_32

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading wakelock stats took "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_32
    array-length v2, p1

    if-lt p2, v2, :cond_55

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Kernel wake locks exceeded buffer size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_55
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_56
    if-ge v2, p2, :cond_61

    .line 68
    aget-byte v3, p1, v2

    if-nez v3, :cond_5e

    .line 69
    move p2, v2

    .line 70
    goto :goto_61

    .line 67
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 73
    .end local v2    # "i":I
    :cond_61
    :goto_61
    return p2
.end method


# virtual methods
.method public blacklist parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 26
    .param p1, "wlBuffer"    # [B
    .param p2, "len"    # I
    .param p3, "wakeup_sources"    # Z
    .param p4, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .line 147
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_a
    const/16 v13, 0xa

    if-ge v12, v10, :cond_19

    aget-byte v0, v9, v12

    if-eq v0, v13, :cond_19

    aget-byte v0, v9, v12

    if-eqz v0, :cond_19

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 148
    :cond_19
    add-int/lit8 v0, v12, 0x1

    move v2, v0

    .local v2, "endIndex":I
    move v3, v0

    .line 150
    .local v3, "startIndex":I
    monitor-enter p0

    .line 151
    :try_start_1e
    sget v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    sput v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_12e

    move v15, v3

    .line 152
    .end local v3    # "startIndex":I
    .local v15, "startIndex":I
    :goto_25
    if-ge v2, v10, :cond_107

    .line 153
    move v0, v15

    move v8, v0

    .line 154
    .end local v2    # "endIndex":I
    .local v8, "endIndex":I
    :goto_29
    if-ge v8, v10, :cond_3b

    :try_start_2b
    aget-byte v0, v9, v8

    if-eq v0, v13, :cond_3b

    aget-byte v0, v9, v8
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_36

    if-eqz v0, :cond_3b

    .line 155
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 222
    :catchall_36
    move-exception v0

    move v2, v8

    move v3, v15

    goto/16 :goto_12f

    .line 158
    :cond_3b
    add-int/lit8 v0, v10, -0x1

    if-le v8, v0, :cond_42

    .line 159
    move v2, v8

    goto/16 :goto_107

    .line 162
    :cond_42
    :try_start_42
    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksName:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 163
    .local v16, "nameStringArray":[Ljava/lang/String;
    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksData:[J
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_100

    move-object/from16 v17, v0

    .line 167
    .local v17, "wlData":[J
    move v0, v15

    .local v0, "j":I
    :goto_4b
    if-ge v0, v8, :cond_5a

    .line 168
    :try_start_4d
    aget-byte v2, v9, v0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_57

    const/16 v2, 0x3f

    aput-byte v2, v9, v0

    .line 167
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 170
    .end local v0    # "j":I
    :cond_5a
    nop

    .line 171
    if-eqz p3, :cond_61

    sget-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->WAKEUP_SOURCES_FORMAT:[I
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_36

    move-object v5, v0

    goto :goto_64

    .line 172
    :cond_61
    :try_start_61
    sget-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->PROC_WAKELOCKS_FORMAT:[I
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_100

    move-object v5, v0

    :goto_64
    const/4 v0, 0x0

    .line 170
    move-object/from16 v2, p1

    move v3, v15

    move v4, v8

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move/from16 v18, v8

    .end local v8    # "endIndex":I
    .local v18, "endIndex":I
    move-object v8, v0

    :try_start_70
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    move v2, v0

    .line 175
    .local v2, "parsed":Z
    const/4 v0, 0x0

    aget-object v0, v16, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 176
    .local v3, "name":Ljava/lang/String;
    aget-wide v4, v17, v14

    long-to-int v4, v4

    .line 178
    .local v4, "count":I
    const-wide/16 v5, 0x3e8

    const/4 v0, 0x2

    if-eqz p3, :cond_89

    .line 180
    aget-wide v7, v17, v0

    mul-long/2addr v7, v5

    .local v7, "totalTime":J
    goto :goto_90

    .line 183
    .end local v7    # "totalTime":J
    :cond_89
    aget-wide v7, v17, v0

    const-wide/16 v19, 0x1f4

    add-long v7, v7, v19

    div-long/2addr v7, v5

    .line 186
    .restart local v7    # "totalTime":J
    :goto_90
    if-eqz v2, :cond_c9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c9

    .line 187
    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 188
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    sget v5, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    invoke-direct {v0, v4, v7, v8, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {v11, v3, v0}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f3

    .line 191
    :cond_a9
    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 192
    .local v0, "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v6, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    if-ne v5, v6, :cond_c0

    .line 193
    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 194
    iget-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_c8

    .line 196
    :cond_c0
    iput v4, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 197
    iput-wide v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 198
    sget v5, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    iput v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_c8
    .catchall {:try_start_70 .. :try_end_c8} :catchall_fb

    .line 200
    .end local v0    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    :goto_c8
    goto :goto_f3

    .line 201
    :cond_c9
    if-nez v2, :cond_f3

    .line 203
    :try_start_cb
    const-string v0, "KernelWakelockReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse proc line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    sub-int v13, v18, v15

    invoke-direct {v6, v9, v15, v13}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ea} :catch_eb
    .catchall {:try_start_cb .. :try_end_ea} :catchall_fb

    .line 207
    goto :goto_f3

    .line 205
    :catch_eb
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ec
    const-string v5, "KernelWakelockReader"

    const-string v6, "Failed to parse proc line!"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catchall {:try_start_ec .. :try_end_f3} :catchall_fb

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f3
    :goto_f3
    add-int/lit8 v15, v18, 0x1

    .line 210
    .end local v2    # "parsed":Z
    .end local v16    # "nameStringArray":[Ljava/lang/String;
    .end local v17    # "wlData":[J
    move/from16 v2, v18

    const/16 v13, 0xa

    goto/16 :goto_25

    .line 222
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v7    # "totalTime":J
    :catchall_fb
    move-exception v0

    move v3, v15

    move/from16 v2, v18

    goto :goto_12f

    .end local v18    # "endIndex":I
    .restart local v8    # "endIndex":I
    :catchall_100
    move-exception v0

    move/from16 v18, v8

    move v3, v15

    move/from16 v2, v18

    .end local v8    # "endIndex":I
    .restart local v18    # "endIndex":I
    goto :goto_12f

    .line 213
    .end local v18    # "endIndex":I
    .local v2, "endIndex":I
    :cond_107
    :goto_107
    :try_start_107
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 214
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_10f
    :goto_10f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_125

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v3, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v4, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    if-eq v3, v4, :cond_10f

    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_10f

    .line 220
    :cond_125
    sget v3, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    iput v3, v11, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    .line 221
    monitor-exit p0
    :try_end_12a
    .catchall {:try_start_107 .. :try_end_12a} :catchall_12b

    return-object v11

    .line 222
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :catchall_12b
    move-exception v0

    move v3, v15

    goto :goto_12f

    .end local v15    # "startIndex":I
    .local v3, "startIndex":I
    :catchall_12e
    move-exception v0

    :goto_12f
    :try_start_12f
    monitor-exit p0
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    throw v0
.end method

.method public final blacklist readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 19
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .line 77
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v9, "failed to read kernel wakelocks"

    const-string v10, "KernelWakelockReader"

    const v0, 0x8000

    new-array v11, v0, [B

    .line 80
    .local v11, "buffer":[B
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v12

    .line 81
    .local v12, "oldMask":I
    const/4 v1, 0x0

    .line 83
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    :try_start_13
    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "/proc/wakelocks"

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1e

    .line 84
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v0, "is":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 94
    .local v1, "wakeup_sources":Z
    move-object v14, v0

    move v15, v1

    goto :goto_2a

    .line 85
    .end local v0    # "is":Ljava/io/FileInputStream;
    .local v1, "is":Ljava/io/FileInputStream;
    :catch_1e
    move-exception v0

    move-object v2, v0

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    :try_start_20
    new-instance v0, Ljava/io/FileInputStream;

    const-string v3, "/d/wakeup_sources"

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_c1

    .line 88
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "is":Ljava/io/FileInputStream;
    const/4 v1, 0x1

    .line 93
    .local v1, "wakeup_sources":Z
    move-object v14, v0

    move v15, v1

    .line 97
    .end local v0    # "is":Ljava/io/FileInputStream;
    .end local v1    # "wakeup_sources":Z
    .end local v2    # "e":Ljava/lang/Exception;
    .local v14, "is":Ljava/io/FileInputStream;
    .local v15, "wakeup_sources":Z
    :goto_2a
    const/4 v0, 0x0

    .line 98
    .local v0, "cnt":I
    const/4 v1, 0x0

    .line 99
    .local v1, "len":I
    :try_start_2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 101
    .local v5, "startTime":J
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    move v4, v1

    .line 102
    .end local v1    # "len":I
    .local v4, "len":I
    :goto_34
    array-length v1, v11

    sub-int/2addr v1, v4

    invoke-virtual {v14, v11, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    move v0, v1

    if-lez v1, :cond_55

    .line 103
    add-int/2addr v4, v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is.read return cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 106
    :cond_55
    if-nez v4, :cond_71

    .line 107
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is.read return cnt is zero ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    goto :goto_8c

    .line 111
    :cond_71
    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v4

    move/from16 v16, v4

    .end local v4    # "len":I
    .local v16, "len":I
    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/KernelWakelockReaderRewrite;->readInfoCheck([BIIJ)I

    move-result v1

    .line 112
    .end local v16    # "len":I
    .restart local v1    # "len":I
    invoke-virtual {v7, v11, v1, v15, v8}, Lcom/android/internal/os/KernelWakelockReaderRewrite;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    .line 113
    iget-boolean v2, v7, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    if-eqz v2, :cond_9b

    .line 114
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 115
    const-string v2, "read is at the end of file "

    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_8b} :catch_9f
    .catchall {:try_start_2c .. :try_end_8b} :catchall_9c

    .line 116
    nop

    .line 119
    .end local v0    # "cnt":I
    .end local v1    # "len":I
    .end local v5    # "startTime":J
    :goto_8c
    nop

    .line 124
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 126
    :try_start_90
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_94

    .line 129
    goto :goto_9a

    .line 127
    :catch_94
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9a
    return-object v8

    .line 118
    :cond_9b
    goto :goto_2a

    .line 124
    :catchall_9c
    move-exception v0

    move-object v1, v0

    goto :goto_b3

    .line 120
    :catch_9f
    move-exception v0

    move-object v1, v0

    .line 121
    .local v1, "e":Ljava/io/IOException;
    :try_start_a1
    invoke-static {v10, v9, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_9c

    .line 122
    nop

    .line 124
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 126
    :try_start_a8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ac

    .line 129
    goto :goto_b2

    .line 127
    :catch_ac
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 128
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b2
    return-object v13

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :goto_b3
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 126
    :try_start_b6
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_ba

    .line 129
    goto :goto_c0

    .line 127
    :catch_ba
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 128
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c0
    throw v1

    .line 89
    .end local v14    # "is":Ljava/io/FileInputStream;
    .end local v15    # "wakeup_sources":Z
    .local v1, "is":Ljava/io/FileInputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_c1
    move-exception v0

    .line 90
    .local v0, "e2":Ljava/lang/Exception;
    const-string v3, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v10, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v13
.end method
