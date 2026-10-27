.class public Lcom/android/internal/os/UidAppKernelProcStringReader;
.super Ljava/lang/Object;
.source "UidAppKernelProcStringReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    }
.end annotation


# static fields
.field private static final blacklist ERROR_THRESHOLD:I = 0x5

.field private static final blacklist FRESHNESS:J = 0x1f4L

.field private static final blacklist MAX_BUFFER_SIZE:I = 0x100000

.field private static final blacklist PROC_SYS_APP_ACTIVE_TIME:Ljava/lang/String; = "/proc/sys_app_concurrent_active_time"

.field private static final blacklist PROC_SYS_APP_CLUSTER_TIME:Ljava/lang/String; = "/proc/sys_app_concurrent_policy_time"

.field private static final blacklist PROC_SYS_APP_FREQ_TIME:Ljava/lang/String; = "/proc/sys_app_time_in_state"

.field private static final blacklist PROC_SYS_APP_USER_SYS_TIME:Ljava/lang/String; = "/proc/uid_cputime/show_sys_app_stat"

.field private static final blacklist SYS_APP_ACTIVE_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

.field private static final blacklist SYS_APP_CLUSTER_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

.field private static final blacklist SYS_APP_FREQ_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

.field private static final blacklist SYS_APP_USER_SYS_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mBuf:[C

.field private blacklist mErrors:I

.field private final blacklist mFile:Ljava/nio/file/Path;

.field private blacklist mLastReadTime:J

.field private final blacklist mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final blacklist mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private blacklist mSize:I

.field private final blacklist mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuf(Lcom/android/internal/os/UidAppKernelProcStringReader;)[C
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadLock(Lcom/android/internal/os/UidAppKernelProcStringReader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 19
    const-class v0, Lcom/android/internal/os/UidAppKernelProcStringReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader;

    const-string v1, "/proc/sys_app_time_in_state"

    invoke-direct {v0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_FREQ_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    .line 31
    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader;

    const-string v1, "/proc/sys_app_concurrent_active_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_ACTIVE_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    .line 33
    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader;

    const-string v1, "/proc/sys_app_concurrent_policy_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_CLUSTER_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    .line 35
    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader;

    const-string v1, "/proc/uid_cputime/show_sys_app_stat"

    invoke-direct {v0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_USER_SYS_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "file"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    .line 57
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mLastReadTime:J

    .line 58
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 59
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 60
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 63
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mFile:Ljava/nio/file/Path;

    .line 64
    return-void
.end method

.method public static blacklist asLongs(Ljava/nio/CharBuffer;[J)I
    .registers 13
    .param p0, "buf"    # Ljava/nio/CharBuffer;
    .param p1, "array"    # [J

    .line 221
    if-nez p0, :cond_4

    .line 222
    const/4 v0, -0x1

    return v0

    .line 224
    :cond_4
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 225
    .local v0, "initialPos":I
    const/4 v1, 0x0

    .line 226
    .local v1, "count":I
    const-wide/16 v2, -0x1

    .line 229
    .local v2, "num":J
    :cond_b
    :goto_b
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lez v4, :cond_5b

    array-length v4, p1

    if-ge v1, v4, :cond_5b

    .line 230
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    .line 231
    .local v4, "c":C
    invoke-static {v4}, Lcom/android/internal/os/UidAppKernelProcStringReader;->isNumber(C)Z

    move-result v7

    if-nez v7, :cond_2d

    const/16 v7, 0x20

    if-eq v4, v7, :cond_2d

    const/16 v7, 0x3a

    if-eq v4, v7, :cond_2d

    .line 232
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    const/4 v5, -0x2

    return v5

    .line 235
    :cond_2d
    cmp-long v7, v2, v5

    if-gez v7, :cond_3b

    .line 236
    invoke-static {v4}, Lcom/android/internal/os/UidAppKernelProcStringReader;->isNumber(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 237
    add-int/lit8 v5, v4, -0x30

    int-to-long v2, v5

    goto :goto_b

    .line 240
    :cond_3b
    invoke-static {v4}, Lcom/android/internal/os/UidAppKernelProcStringReader;->isNumber(C)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 241
    const-wide/16 v7, 0xa

    mul-long/2addr v7, v2

    int-to-long v9, v4

    add-long/2addr v7, v9

    const-wide/16 v9, 0x30

    sub-long v2, v7, v9

    .line 242
    cmp-long v5, v2, v5

    if-gez v5, :cond_b

    .line 243
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    const/4 v5, -0x3

    return v5

    .line 247
    :cond_53
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .local v5, "count":I
    aput-wide v2, p1, v1

    .line 248
    const-wide/16 v2, -0x1

    move v1, v5

    goto :goto_b

    .line 252
    .end local v4    # "c":C
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_5b
    cmp-long v4, v2, v5

    if-ltz v4, :cond_64

    .line 253
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "count":I
    .local v4, "count":I
    aput-wide v2, p1, v1

    move v1, v4

    .line 255
    .end local v4    # "count":I
    .restart local v1    # "count":I
    :cond_64
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    return v1
.end method

.method private blacklist dataValid()Z
    .registers 5

    .line 152
    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mSize:I

    if-lez v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mLastReadTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method static blacklist getSysAppActiveTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;
    .registers 1

    .line 39
    sget-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_ACTIVE_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    return-object v0
.end method

.method static blacklist getSysAppClusterTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;
    .registers 1

    .line 43
    sget-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_CLUSTER_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    return-object v0
.end method

.method static blacklist getSysAppFreqTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;
    .registers 1

    .line 50
    sget-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_FREQ_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    return-object v0
.end method

.method static blacklist getSysAppUserSysTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/os/UidAppKernelProcStringReader;->SYS_APP_USER_SYS_TIME_READER:Lcom/android/internal/os/UidAppKernelProcStringReader;

    return-object v0
.end method

.method private static blacklist isNumber(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 260
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public blacklist open()Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    .registers 2

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/UidAppKernelProcStringReader;->open(Z)Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist open(Z)Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
    .registers 10
    .param p1, "ignoreCache"    # Z

    .line 91
    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_7

    .line 92
    return-object v1

    .line 95
    :cond_7
    if-eqz p1, :cond_f

    .line 96
    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    goto :goto_44

    .line 98
    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 99
    invoke-direct {p0}, Lcom/android/internal/os/UidAppKernelProcStringReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 100
    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;I)V

    return-object v0

    .line 102
    :cond_22
    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 103
    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 104
    invoke-direct {p0}, Lcom/android/internal/os/UidAppKernelProcStringReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 106
    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 107
    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 108
    new-instance v0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;I)V

    return-object v0

    .line 113
    :cond_44
    :goto_44
    const/4 v0, 0x0

    .line 115
    .local v0, "total":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mSize:I

    .line 116
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v2

    .line 117
    .local v2, "oldMask":I
    :try_start_4c
    iget-object v3, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-static {v3}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v3
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_52} :catch_ff
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_4c .. :try_end_52} :catch_ff
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_dd
    .catchall {:try_start_4c .. :try_end_52} :catchall_db

    .line 118
    .local v3, "r":Ljava/io/BufferedReader;
    :try_start_52
    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    if-nez v4, :cond_5c

    .line 119
    const/16 v4, 0x400

    new-array v4, v4, [C

    iput-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    .line 121
    :cond_5c
    :goto_5c
    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    array-length v5, v4

    sub-int/2addr v5, v0

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    move v5, v4

    .local v5, "curr":I
    if-ltz v4, :cond_af

    .line 122
    add-int/2addr v0, v5

    .line 123
    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    array-length v6, v4

    if-ne v0, v6, :cond_5c

    .line 125
    array-length v6, v4

    const/high16 v7, 0x100000

    if-ne v6, v7, :cond_a1

    .line 126
    iget v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    .line 127
    sget-object v4, Lcom/android/internal/os/UidAppKernelProcStringReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proc file too large: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_52 .. :try_end_92} :catchall_cf

    .line 128
    nop

    .line 138
    if-eqz v3, :cond_98

    :try_start_95
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/FileNotFoundException; {:try_start_95 .. :try_end_98} :catch_ff
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_95 .. :try_end_98} :catch_ff
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_dd
    .catchall {:try_start_95 .. :try_end_98} :catchall_db

    .line 145
    :cond_98
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 146
    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 128
    return-object v1

    .line 130
    :cond_a1
    :try_start_a1
    array-length v6, v4

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mBuf:[C

    goto :goto_5c

    .line 133
    :cond_af
    iput v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mSize:I

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mLastReadTime:J

    .line 136
    iget-object v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 137
    new-instance v4, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;I)V
    :try_end_c1
    .catchall {:try_start_a1 .. :try_end_c1} :catchall_cf

    .line 138
    if-eqz v3, :cond_c6

    :try_start_c3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c6
    .catch Ljava/io/FileNotFoundException; {:try_start_c3 .. :try_end_c6} :catch_ff
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_c3 .. :try_end_c6} :catch_ff
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_dd
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_db

    .line 145
    :cond_c6
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 146
    iget-object v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 137
    return-object v4

    .line 117
    .end local v5    # "curr":I
    :catchall_cf
    move-exception v4

    if-eqz v3, :cond_da

    :try_start_d2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_da

    :catchall_d6
    move-exception v5

    :try_start_d7
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "total":I
    .end local v2    # "oldMask":I
    .end local p0    # "this":Lcom/android/internal/os/UidAppKernelProcStringReader;
    .end local p1    # "ignoreCache":Z
    :cond_da
    :goto_da
    throw v4
    :try_end_db
    .catch Ljava/io/FileNotFoundException; {:try_start_d7 .. :try_end_db} :catch_ff
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_d7 .. :try_end_db} :catch_ff
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_db} :catch_dd
    .catchall {:try_start_d7 .. :try_end_db} :catchall_db

    .line 145
    .end local v3    # "r":Ljava/io/BufferedReader;
    .restart local v0    # "total":I
    .restart local v2    # "oldMask":I
    .restart local p0    # "this":Lcom/android/internal/os/UidAppKernelProcStringReader;
    .restart local p1    # "ignoreCache":Z
    :catchall_db
    move-exception v1

    goto :goto_12b

    .line 141
    :catch_dd
    move-exception v3

    .line 142
    .local v3, "e":Ljava/io/IOException;
    :try_start_de
    iget v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    .line 143
    sget-object v4, Lcom/android/internal/os/UidAppKernelProcStringReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_120

    .line 138
    .end local v3    # "e":Ljava/io/IOException;
    :catch_ff
    move-exception v3

    .line 139
    .restart local v3    # "e":Ljava/io/IOException;
    iget v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mErrors:I

    .line 140
    sget-object v4, Lcom/android/internal/os/UidAppKernelProcStringReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found. It\'s normal if not implemented: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catchall {:try_start_de .. :try_end_120} :catchall_db

    .line 145
    :goto_120
    nop

    .end local v3    # "e":Ljava/io/IOException;
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 146
    iget-object v3, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 147
    nop

    .line 148
    return-object v1

    .line 145
    :goto_12b
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 146
    iget-object v3, p0, Lcom/android/internal/os/UidAppKernelProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 147
    throw v1
.end method
