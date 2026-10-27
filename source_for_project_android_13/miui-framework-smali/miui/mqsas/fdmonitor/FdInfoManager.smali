.class public Lmiui/mqsas/fdmonitor/FdInfoManager;
.super Ljava/lang/Object;
.source "FdInfoManager.java"


# static fields
.field public static final blacklist FILE_FDINFO_SUFFIX:Ljava/lang/String; = ".fds"

.field public static final blacklist FILE_MAPS_SUFFIX:Ljava/lang/String; = ".maps"

.field private static final blacklist INTERESTED_CLASS:[Ljava/lang/String;

.field private static final blacklist INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

.field private static blacklist OPEN_FILE_HIGH_WATER_MARK:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "FdInfoManager"

.field private static blacklist sDumpSystem:Z

.field private static blacklist sGetTagMethod:Ljava/lang/reflect/Method;

.field private static blacklist sGetTagTypeMethod:Ljava/lang/reflect/Method;

.field private static blacklist sGetTagValueMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 32
    const-string v0, "java.lang.OutOfMemoryError"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_CLASS:[Ljava/lang/String;

    .line 35
    const-string v1, "Could not allocate JNI Env"

    const-string v2, "Could not allocate dup blob fd"

    const-string v3, "Could not read input channel file descriptors from parcel"

    const-string v4, "pthread_create"

    const-string v5, "InputChannel is not initialized"

    const-string v6, "Could not open input channel pair"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->sDumpSystem:Z

    .line 44
    const/16 v0, 0x7918

    sput v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->OPEN_FILE_HIGH_WATER_MARK:I

    .line 47
    :try_start_21
    sget v0, Landroid/system/OsConstants;->RLIMIT_NOFILE:I

    invoke-static {v0}, Landroid/system/Os;->getrlimit(I)Landroid/system/StructRlimit;

    move-result-object v0

    .line 48
    .local v0, "rlimit":Landroid/system/StructRlimit;
    iget-wide v1, v0, Landroid/system/StructRlimit;->rlim_cur:J

    const-wide/16 v3, 0x7d0

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sput v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->OPEN_FILE_HIGH_WATER_MARK:I
    :try_end_2f
    .catch Landroid/system/ErrnoException; {:try_start_21 .. :try_end_2f} :catch_30

    .line 51
    .end local v0    # "rlimit":Landroid/system/StructRlimit;
    goto :goto_38

    .line 49
    :catch_30
    move-exception v0

    .line 50
    .local v0, "errno":Landroid/system/ErrnoException;
    const-string v1, "FdInfoManager"

    const-string v2, "Error thrown from getrlimit(RLIMIT_NOFILE)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0    # "errno":Landroid/system/ErrnoException;
    :goto_38
    const/4 v0, 0x0

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagMethod:Ljava/lang/reflect/Method;

    .line 202
    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagTypeMethod:Ljava/lang/reflect/Method;

    .line 203
    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagValueMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkTooManyOpenFiles(I)Z
    .registers 5
    .param p0, "limit"    # I

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "retryCount":I
    :goto_1
    const/16 v1, 0x18

    if-gt v0, v1, :cond_2a

    .line 102
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/self/fd/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 103
    const/4 v1, 0x1

    return v1

    .line 105
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist copyFileInternal(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 128
    .local v0, "in":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 130
    .local v1, "out":Ljava/io/FileOutputStream;
    const-wide/16 v2, 0x0

    .line 132
    .local v2, "size":J
    :cond_c
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/32 v7, 0x7d8f0

    invoke-static {v4, v5, v6, v7, v8}, Landroid/system/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide v4
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_1c} :catch_26
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    move-wide v2, v4

    .line 133
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_c

    .line 137
    .end local v2    # "size":J
    goto :goto_2b

    :catchall_24
    move-exception v2

    goto :goto_33

    .line 134
    :catch_26
    move-exception v2

    .line 135
    .local v2, "e":Landroid/system/ErrnoException;
    :try_start_27
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    .line 137
    nop

    .end local v2    # "e":Landroid/system/ErrnoException;
    :goto_2b
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 139
    nop

    .line 140
    return-void

    .line 137
    :goto_33
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 139
    throw v2
.end method

.method public static declared-synchronized blacklist dumpIfNeeded(Lmiui/mqsas/sdk/event/JavaExceptionEvent;I)V
    .registers 5
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    .param p1, "dumpCategory"    # I

    const-class v0, Lmiui/mqsas/fdmonitor/FdInfoManager;

    monitor-enter v0

    .line 78
    :try_start_3
    sget-boolean v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sDumpSystem:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->isSystem()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_51

    if-eqz v1, :cond_f

    .line 79
    monitor-exit v0

    return-void

    .line 81
    :cond_f
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2c

    .line 82
    :try_start_13
    const-string v1, ".fds"

    invoke-static {p0, v1}, Lmiui/mqsas/oom/OOMEventManager;->generateOutputFileName(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "outputFileName":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPid()I

    move-result v2

    invoke-static {v2, v1}, Lmiui/mqsas/fdmonitor/FdInfoManager;->dumpOpenFds(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 84
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getJeCategroy()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setJeCategroy(I)V

    .line 87
    .end local v1    # "outputFileName":Ljava/lang/String;
    :cond_2c
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_49

    .line 88
    const-string v1, ".maps"

    invoke-static {p0, v1}, Lmiui/mqsas/oom/OOMEventManager;->generateOutputFileName(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .restart local v1    # "outputFileName":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPid()I

    move-result v2

    invoke-static {v2, v1}, Lmiui/mqsas/fdmonitor/FdInfoManager;->dumpProcessMaps(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 90
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getJeCategroy()I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setJeCategroy(I)V

    .line 93
    .end local v1    # "outputFileName":Ljava/lang/String;
    :cond_49
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->isSystem()Z

    move-result v1

    sput-boolean v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sDumpSystem:Z
    :try_end_4f
    .catchall {:try_start_13 .. :try_end_4f} :catchall_51

    .line 94
    monitor-exit v0

    return-void

    .line 77
    .end local p0    # "event":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    .end local p1    # "dumpCategory":I
    :catchall_51
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static blacklist dumpOpenFds(ILjava/lang/String;)Z
    .registers 12
    .param p0, "pid"    # I
    .param p1, "outputPath"    # Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 144
    .local v0, "fds":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 145
    const-string v1, "FdInfoManager"

    const-string v3, "failed to read fds!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v2

    .line 148
    :cond_1a
    const-string v1, ".fds"

    invoke-static {v1}, Lmiui/mqsas/oom/OOMEventManager;->removeHistoricalDumps(Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_20
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size of open file descriptors: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/mqsas/fdmonitor/FdInfoManager;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 153
    array-length v3, v0

    move v4, v2

    :goto_4e
    if-ge v4, v3, :cond_83

    aget-object v5, v0, v4

    .line 154
    .local v5, "fd":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_91
    .catchall {:try_start_20 .. :try_end_56} :catchall_8f

    .line 157
    .local v6, "fd_path":Ljava/lang/String;
    :try_start_56
    invoke-static {v6}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_5a
    .catch Landroid/system/ErrnoException; {:try_start_56 .. :try_end_5a} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_91
    .catchall {:try_start_56 .. :try_end_5a} :catchall_8f

    .line 162
    .local v7, "linkPath":Ljava/lang/String;
    nop

    .line 163
    :try_start_5b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ----> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lmiui/mqsas/fdmonitor/FdInfoManager;->getFdOwner(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lmiui/mqsas/fdmonitor/FdInfoManager;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_80

    .line 158
    .end local v7    # "linkPath":Ljava/lang/String;
    :catch_7e
    move-exception v7

    .line 161
    .local v7, "e":Landroid/system/ErrnoException;
    nop

    .line 153
    .end local v5    # "fd":Ljava/io/File;
    .end local v6    # "fd_path":Ljava/lang/String;
    .end local v7    # "e":Landroid/system/ErrnoException;
    :goto_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 165
    :cond_83
    const/16 v3, 0x1b4

    const/4 v4, -0x1

    invoke-static {p1, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_89} :catch_91
    .catchall {:try_start_5b .. :try_end_89} :catchall_8f

    .line 166
    nop

    .line 170
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 166
    const/4 v2, 0x1

    return v2

    .line 170
    :catchall_8f
    move-exception v2

    goto :goto_9a

    .line 167
    :catch_91
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/Exception;
    :try_start_92
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_8f

    .line 170
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 171
    nop

    .line 172
    return v2

    .line 170
    :goto_9a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 171
    throw v2
.end method

.method private static blacklist dumpProcessMaps(ILjava/lang/String;)Z
    .registers 7
    .param p0, "pid"    # I
    .param p1, "outputPath"    # Ljava/lang/String;

    .line 111
    const-string v0, "FdInfoManager"

    const-string v1, ".maps"

    invoke-static {v1}, Lmiui/mqsas/oom/OOMEventManager;->removeHistoricalDumps(Ljava/lang/String;)V

    .line 113
    :try_start_7
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/self/maps"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "fin":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "fout":Ljava/io/File;
    invoke-static {v1, v2}, Lmiui/mqsas/fdmonitor/FdInfoManager;->copyFileInternal(Ljava/io/File;Ljava/io/File;)V

    .line 117
    const/16 v3, 0x1b4

    const/4 v4, -0x1

    invoke-static {p1, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Complete dump process maps for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3c} :catch_3e

    .line 119
    const/4 v0, 0x1

    return v0

    .line 120
    .end local v1    # "fin":Ljava/io/File;
    .end local v2    # "fout":Ljava/io/File;
    :catch_3e
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to collect maps file"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getFdOwner(Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .param p0, "fdPath"    # Ljava/io/File;

    .line 178
    const-string v0, ""

    const-string v1, "getFdOwner: "

    const-string v2, "FdInfoManager"

    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_4b

    .line 182
    .local v3, "rawFd":I
    nop

    .line 184
    :try_start_f
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    .line 185
    .local v4, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v4, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lmiui/mqsas/fdmonitor/FdInfoManager;->getFdOwnerImpl(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_35

    return-object v0

    .line 187
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    :catch_35
    move-exception v4

    .line 188
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    return-object v0

    .line 179
    .end local v3    # "rawFd":I
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4b
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is not a valid fd path"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    return-object v0
.end method

.method private static blacklist getFdOwnerImpl(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .registers 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-static {}, Llibcore/io/Os;->getDefault()Llibcore/io/Os;

    move-result-object v0

    .line 209
    .local v0, "os":Llibcore/io/Os;
    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3a

    .line 210
    const-class v1, Llibcore/io/Os;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/io/FileDescriptor;

    aput-object v5, v4, v2

    const-string v5, "android_fdsan_get_owner_tag"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagMethod:Ljava/lang/reflect/Method;

    .line 212
    const-class v1, Llibcore/io/Os;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-string v5, "android_fdsan_get_tag_type"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagTypeMethod:Ljava/lang/reflect/Method;

    .line 214
    const-class v1, Llibcore/io/Os;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-string v5, "android_fdsan_get_tag_value"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagValueMethod:Ljava/lang/reflect/Method;

    .line 217
    :cond_3a
    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagMethod:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 218
    .local v4, "tag":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_53

    const-string v1, "unowned"

    return-object v1

    .line 219
    :cond_53
    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagTypeMethod:Ljava/lang/reflect/Method;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    .local v1, "type":Ljava/lang/String;
    sget-object v6, Lmiui/mqsas/fdmonitor/FdInfoManager;->sGetTagValueMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-virtual {v6, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 221
    .local v2, "value":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "owned by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static blacklist isInterestedFdLeakEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z
    .registers 11
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 55
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionClassName()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "eventExceptionClass":Ljava/lang/String;
    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_CLASS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    const-string v5, "FdInfoManager"

    const/4 v6, 0x1

    if-ge v4, v2, :cond_30

    aget-object v7, v1, v4

    .line 57
    .local v7, "exceptionClass":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUI_FD Interested Fd leak events, exceptionClass : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v6

    .line 56
    .end local v7    # "exceptionClass":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 63
    :cond_30
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionMessage()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "eventExceptionMsg":Ljava/lang/String;
    sget-object v2, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    array-length v4, v2

    move v7, v3

    :goto_38
    if-ge v7, v4, :cond_5e

    aget-object v8, v2, v7

    .line 65
    .local v8, "exceptionMsg":Ljava/lang/String;
    if-eqz v1, :cond_5b

    .line 66
    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUI_FD Interested Fd leak events, exceptionMsg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v6

    .line 64
    .end local v8    # "exceptionMsg":Ljava/lang/String;
    :cond_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 73
    :cond_5e
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_6d

    sget v2, Lmiui/mqsas/fdmonitor/FdInfoManager;->OPEN_FILE_HIGH_WATER_MARK:I

    invoke-static {v2}, Lmiui/mqsas/fdmonitor/FdInfoManager;->checkTooManyOpenFiles(I)Z

    move-result v2

    if-eqz v2, :cond_6d

    move v3, v6

    :cond_6d
    return v3
.end method

.method private static blacklist println(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 194
    if-eqz p0, :cond_5

    .line 195
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    :cond_5
    const-string v0, "FdInfoManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method
