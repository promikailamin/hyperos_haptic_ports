.class public Lmiui/mqsas/oom/OOMEventManager;
.super Ljava/lang/Object;
.source "OOMEventManager.java"


# static fields
.field private static final blacklist DUMP_DIR:Ljava/lang/String; = "/data/miuilog/stability/memleak/heapdump/"

.field public static final blacklist FILE_HPROF_SUFFIX:Ljava/lang/String; = ".hprof"

.field public static final blacklist FILE_SYSTEM_SERVER_PREFIX:Ljava/lang/String; = "system_server_"

.field private static final blacklist INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

.field private static final blacklist SYSPROP_DISABLE_MINI_HPROF:Ljava/lang/String; = "persist.sys.disable_minihprof"

.field private static final blacklist TAG:Ljava/lang/String; = "OOMEventManagerFK"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 39
    const-string v0, "Binder ProxyMap has too many entries:"

    const-string v1, "occurring DMA-BUF OOM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/oom/OOMEventManager;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkEventAndDumpIfNeeded(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V
    .registers 7
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 46
    const-string v0, "/data/miuilog/stability/memleak/heapdump/"

    invoke-static {v0}, Lmiui/mqsas/oom/OOMEventManager;->ensureDumpDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 47
    return-void

    .line 49
    :cond_9
    invoke-static {p0}, Lmiui/mqsas/oom/OOMEventManager;->getDumpCategory(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v0

    .line 50
    .local v0, "dumpCategory":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkEventAndDumpForJE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OOMEventManagerFK"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p0, v0}, Lmiui/mqsas/fdmonitor/FdInfoManager;->dumpIfNeeded(Lmiui/mqsas/sdk/event/JavaExceptionEvent;I)V

    .line 52
    invoke-static {v0}, Lmiui/mqsas/oom/OOMEventManager;->isNeedDumpHprof(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 53
    const-string v1, ".hprof"

    invoke-static {p0, v1}, Lmiui/mqsas/oom/OOMEventManager;->generateOutputFileName(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lmiui/mqsas/oom/OOMEventManager;->dumpHprof(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 54
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getJeCategroy()I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setJeCategroy(I)V

    .line 57
    :cond_43
    sget-boolean v1, Landroid/os/BinderStub;->ENABLED:Z

    if-eqz v1, :cond_7a

    .line 58
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 59
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/mqsas/oom/OOMEventManager;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 60
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 61
    .local v1, "am":Landroid/os/IBinder;
    instance-of v2, v1, Landroid/os/Binder;

    if-eqz v2, :cond_7a

    .line 62
    move-object v2, v1

    check-cast v2, Landroid/os/Binder;

    sget-object v3, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    const-string v4, "binder-proxies"

    const-string v5, "--dump-details-to-file"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 66
    .end local v1    # "am":Landroid/os/IBinder;
    :cond_7a
    return-void
.end method

.method public static declared-synchronized blacklist dumpHprof(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "outPutFileName"    # Ljava/lang/String;
    .param p1, "dumpCategory"    # I

    const-class v0, Lmiui/mqsas/oom/OOMEventManager;

    monitor-enter v0

    .line 101
    :try_start_3
    const-string v1, ".hprof"

    invoke-static {v1}, Lmiui/mqsas/oom/OOMEventManager;->removeHistoricalDumps(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_59

    .line 103
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_14

    .line 105
    :try_start_e
    invoke-static {p0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    goto :goto_1d

    .line 113
    :catch_12
    move-exception v1

    goto :goto_3d

    .line 106
    :cond_14
    and-int/lit8 v1, p1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1d

    .line 108
    invoke-static {p0, v2}, Lmiui/mqsas/sdk/MiuiHprofCrop;->dumpHprofData(Ljava/lang/String;Z)V

    .line 110
    :cond_1d
    :goto_1d
    const/16 v1, 0x1b4

    const/4 v3, -0x1

    invoke-static {p0, v1, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 111
    const-string v1, "OOMEventManagerFK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpHprof success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3b} :catch_12
    .catchall {:try_start_e .. :try_end_3b} :catchall_59

    .line 112
    monitor-exit v0

    return v2

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    :goto_3d
    :try_start_3d
    const-string v2, "OOMEventManagerFK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpHprof failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_59

    .line 116
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 100
    .end local p0    # "outPutFileName":Ljava/lang/String;
    .end local p1    # "dumpCategory":I
    :catchall_59
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist ensureDumpDir(Ljava/lang/String;)Z
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "OOMEventManagerFK"

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mkdir "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v2

    .line 125
    :cond_2b
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez v1, :cond_64

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isUnReleased()Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_64

    .line 129
    :cond_3a
    const/16 v1, 0x1ed

    invoke-static {v0, v1, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v1

    .line 130
    .local v1, "errno":I
    if-eqz v1, :cond_63

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update dir perms: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", errno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v2

    .line 134
    :cond_63
    return v4

    .line 126
    .end local v1    # "errno":I
    :cond_64
    :goto_64
    const/16 v1, 0x1ff

    invoke-static {v0, v1, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 127
    return v4
.end method

.method public static blacklist generateOutputFileName(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    .param p1, "fileType"    # Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/miuilog/stability/memleak/heapdump/system_server_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    return-object v0

    .line 96
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/miuilog/stability/memleak/heapdump//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDumpCategory(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I
    .registers 3
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 69
    new-instance v0, Lmiui/mqsas/oom/ExceptionHandlerChain;

    invoke-direct {v0}, Lmiui/mqsas/oom/ExceptionHandlerChain;-><init>()V

    .line 71
    .local v0, "chain":Lmiui/mqsas/oom/ExceptionHandlerChain;
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 72
    new-instance v1, Lmiui/mqsas/oom/eventhandler/OOMHandler;

    invoke-direct {v1}, Lmiui/mqsas/oom/eventhandler/OOMHandler;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/mqsas/oom/ExceptionHandlerChain;->addHandler(Lmiui/mqsas/oom/ExceptionHandler;)V

    .line 73
    new-instance v1, Lmiui/mqsas/oom/eventhandler/InterestedEventHandler;

    invoke-direct {v1}, Lmiui/mqsas/oom/eventhandler/InterestedEventHandler;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/mqsas/oom/ExceptionHandlerChain;->addHandler(Lmiui/mqsas/oom/ExceptionHandler;)V

    goto :goto_24

    .line 75
    :cond_1c
    new-instance v1, Lmiui/mqsas/oom/eventhandler/MQSHandler;

    invoke-direct {v1}, Lmiui/mqsas/oom/eventhandler/MQSHandler;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/mqsas/oom/ExceptionHandlerChain;->addHandler(Lmiui/mqsas/oom/ExceptionHandler;)V

    .line 77
    :goto_24
    invoke-virtual {v0, p0}, Lmiui/mqsas/oom/ExceptionHandlerChain;->handle(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v1

    return v1
.end method

.method public static blacklist isNeedDumpHprof(I)Z
    .registers 3
    .param p0, "dumpCategory"    # I

    .line 81
    and-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method static synthetic blacklist lambda$removeHistoricalDumps$0(Ljava/lang/String;Ljava/io/File;)Z
    .registers 3
    .param p0, "fileType"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$removeHistoricalDumps$1(Ljava/io/File;Ljava/io/File;)I
    .registers 6
    .param p0, "o1"    # Ljava/io/File;
    .param p1, "o2"    # Ljava/io/File;

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist removeHistoricalDumps(Ljava/lang/String;)V
    .registers 7
    .param p0, "fileType"    # Ljava/lang/String;

    .line 139
    const-string v0, "OOMEventManagerFK"

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->getMaxDumpSize()I

    move-result v1

    .line 140
    .local v1, "maxDumps":I
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/miuilog/stability/memleak/heapdump/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lmiui/mqsas/oom/OOMEventManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lmiui/mqsas/oom/OOMEventManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 141
    .local v2, "historicalDumps":[Ljava/io/File;
    if-eqz v2, :cond_64

    array-length v3, v2

    if-ge v3, v1, :cond_1c

    goto :goto_64

    .line 145
    :cond_1c
    :try_start_1c
    new-instance v3, Lmiui/mqsas/oom/OOMEventManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lmiui/mqsas/oom/OOMEventManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_24} :catch_25

    .line 148
    goto :goto_3c

    .line 146
    :catch_25
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Comparate file failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_3f
    add-int/lit8 v4, v1, -0x1

    if-lt v3, v4, :cond_63

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing historical dump, file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 149
    add-int/lit8 v3, v3, -0x1

    goto :goto_3f

    .line 153
    .end local v3    # "i":I
    :cond_63
    return-void

    .line 142
    :cond_64
    :goto_64
    return-void
.end method
