.class public final Lmiui/log/LogSwitchesConfigMonitor;
.super Ljava/lang/Object;
.source "LogSwitchesConfigMonitor.java"


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "LogSwitchesConfigMonitor"


# instance fields
.field private final blacklist applier:Lmiui/log/LogSwitchesConfigApplier;

.field private blacklist currentLogSwitchesConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist isWatchingSwitches:Z

.field private final blacklist logSwitchesFileName:Ljava/lang/String;

.field private final blacklist logSwitchesFilePath:Ljava/lang/String;

.field private final blacklist logSwitchesFolder:Ljava/lang/String;

.field private blacklist logSwitchsObserver:Landroid/os/FileObserver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetapplier(Lmiui/log/LogSwitchesConfigMonitor;)Lmiui/log/LogSwitchesConfigApplier;
    .registers 1

    iget-object p0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlogSwitchesFileName(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFileName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlogSwitchesFilePath(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputcurrentLogSwitchesConfig(Lmiui/log/LogSwitchesConfigMonitor;Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigMonitor;->currentLogSwitchesConfig:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "logSwitchesFolder"    # Ljava/lang/String;
    .param p2, "logSwitchesFileName"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->currentLogSwitchesConfig:Ljava/util/HashMap;

    .line 34
    iput-object p1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFolder:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFileName:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    .line 37
    new-instance v0, Lmiui/log/LogSwitchesConfigApplier;

    invoke-direct {v0}, Lmiui/log/LogSwitchesConfigApplier;-><init>()V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    .line 38
    return-void
.end method

.method private blacklist getCurrentProgramName()Ljava/lang/String;
    .registers 7

    .line 111
    const-string v0, "LogSwitchesConfigMonitor"

    const-string v1, ""

    const/4 v2, 0x0

    .line 113
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/self/cmdline"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 114
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "cmdline":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_1a} :catch_45
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_36
    .catchall {:try_start_5 .. :try_end_1a} :catchall_34

    if-eqz v4, :cond_24

    .line 116
    nop

    .line 127
    nop

    .line 129
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 131
    goto :goto_23

    .line 130
    :catch_22
    move-exception v0

    .line 116
    :goto_23
    return-object v1

    .line 118
    :cond_24
    :try_start_24
    const-string v4, "\\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v0, v4, v5
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2d} :catch_45
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2d} :catch_36
    .catchall {:try_start_24 .. :try_end_2d} :catchall_34

    .line 127
    nop

    .line 129
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 131
    goto :goto_33

    .line 130
    :catch_32
    move-exception v1

    .line 118
    :goto_33
    return-object v0

    .line 127
    .end local v3    # "cmdline":Ljava/lang/String;
    :catchall_34
    move-exception v0

    goto :goto_54

    .line 123
    :catch_36
    move-exception v3

    .line 124
    .local v3, "ex":Ljava/io/IOException;
    :try_start_37
    const-string v4, "failed to read /proc/self/cmdline"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    .line 125
    nop

    .line 127
    if-eqz v2, :cond_44

    .line 129
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    .line 131
    goto :goto_44

    .line 130
    :catch_43
    move-exception v0

    .line 125
    :cond_44
    :goto_44
    return-object v1

    .line 120
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_45
    move-exception v3

    .line 121
    .local v3, "ex":Ljava/io/FileNotFoundException;
    :try_start_46
    const-string v4, "cannot found /proc/self/cmdline"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_34

    .line 122
    nop

    .line 127
    if-eqz v2, :cond_53

    .line 129
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 131
    goto :goto_53

    .line 130
    :catch_52
    move-exception v0

    .line 122
    :cond_53
    :goto_53
    return-object v1

    .line 127
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :goto_54
    if-eqz v2, :cond_5b

    .line 129
    :try_start_56
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 131
    goto :goto_5b

    .line 130
    :catch_5a
    move-exception v1

    .line 133
    :cond_5b
    :goto_5b
    throw v0
.end method


# virtual methods
.method public declared-synchronized blacklist isWatching()Z
    .registers 2

    monitor-enter p0

    .line 98
    :try_start_1
    iget-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 98
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigMonitor;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist retrieveCurrentLogSwitches()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor;->currentLogSwitchesConfig:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/AppLogSwitches;

    .line 104
    .local v2, "value":Lmiui/log/AppLogSwitches;
    invoke-virtual {v2}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/log/AppLogSwitches;

    .line 105
    .local v3, "clonedValue":Lmiui/log/AppLogSwitches;
    iget-object v4, v3, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    .line 106
    nop

    .end local v2    # "value":Lmiui/log/AppLogSwitches;
    .end local v3    # "clonedValue":Lmiui/log/AppLogSwitches;
    goto :goto_10

    .line 107
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigMonitor;
    :cond_29
    monitor-exit p0

    return-object v0

    .line 101
    .end local v0    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist startMonitoring(ZZ)V
    .registers 6
    .param p1, "createLogSwitchesFileIfNotExisted"    # Z
    .param p2, "synchronizedReadInitialLogSwitches"    # Z

    monitor-enter p0

    .line 53
    :try_start_1
    iget-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_47

    if-eqz v0, :cond_7

    .line 54
    monitor-exit p0

    return-void

    .line 55
    :cond_7
    if-eqz p1, :cond_10

    .line 56
    :try_start_9
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFolder:Ljava/lang/String;

    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/log/Utils;->createLogSwitchesFileIfNotExisted(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigMonitor;
    :cond_10
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;

    if-nez v0, :cond_1f

    .line 59
    new-instance v0, Lmiui/log/LogSwitchesConfigMonitor$1;

    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFolder:Ljava/lang/String;

    const/16 v2, 0x208

    invoke-direct {v0, p0, v1, v2}, Lmiui/log/LogSwitchesConfigMonitor$1;-><init>(Lmiui/log/LogSwitchesConfigMonitor;Ljava/lang/String;I)V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;

    .line 71
    :cond_1f
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z

    .line 73
    if-eqz p2, :cond_38

    .line 74
    const-string v0, "LogSwitchesConfigMonitor"

    const-string v1, "Read log switches for config file synchronously"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/log/LogSwitchesConfigApplier;->apply(Ljava/lang/String;)Ljava/util/HashMap;

    goto :goto_45

    .line 77
    :cond_38
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/log/LogSwitchesConfigMonitor$2;

    invoke-direct {v1, p0}, Lmiui/log/LogSwitchesConfigMonitor$2;-><init>(Lmiui/log/LogSwitchesConfigMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_47

    .line 86
    :goto_45
    monitor-exit p0

    return-void

    .line 52
    .end local p1    # "createLogSwitchesFileIfNotExisted":Z
    .end local p2    # "synchronizedReadInitialLogSwitches":Z
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist stopMonitoring()V
    .registers 3

    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_7

    .line 90
    monitor-exit p0

    return-void

    .line 91
    :cond_7
    :try_start_7
    iget-boolean v1, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_15

    if-nez v1, :cond_d

    .line 92
    monitor-exit p0

    return-void

    .line 93
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    .line 95
    monitor-exit p0

    return-void

    .line 88
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigMonitor;
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist updatePackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigApplier;->updatePackageName(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 42
    monitor-exit p0

    return-void

    .line 40
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigMonitor;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateProgramName()V
    .registers 2

    monitor-enter p0

    .line 49
    :try_start_1
    invoke-direct {p0}, Lmiui/log/LogSwitchesConfigMonitor;->getCurrentProgramName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/log/LogSwitchesConfigMonitor;->updateProgramName(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 50
    monitor-exit p0

    return-void

    .line 48
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigMonitor;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist updateProgramName(Ljava/lang/String;)V
    .registers 3
    .param p1, "programName"    # Ljava/lang/String;

    monitor-enter p0

    .line 45
    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigApplier;->updateProgramName(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 46
    monitor-exit p0

    return-void

    .line 44
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigMonitor;
    .end local p1    # "programName":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
