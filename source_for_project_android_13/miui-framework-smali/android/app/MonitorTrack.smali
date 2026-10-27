.class public Landroid/app/MonitorTrack;
.super Ljava/lang/Object;
.source "MonitorTrack.java"


# static fields
.field private static final blacklist MAX_HEAP_DUMPS:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "MonitorTrack"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    :try_start_0
    const-string v0, "monitortrack"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    .line 38
    goto :goto_a

    .line 36
    :catch_6
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist DumpHprof()V
    .registers 10

    .line 42
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 43
    .local v0, "activityThread":Landroid/app/ActivityThread;
    if-nez v0, :cond_7

    .line 44
    return-void

    .line 46
    :cond_7
    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 48
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/AppHeap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, "HEAP_DUMP_PATH":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 52
    :cond_2e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_35

    .line 53
    return-void

    .line 57
    :cond_35
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 58
    .local v3, "existingTombstones":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_40
    if-ge v6, v5, :cond_5e

    aget-object v7, v4, v6

    .line 59
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_4b

    .line 60
    goto :goto_5b

    .line 62
    :cond_4b
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "app-fdtrack-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_58

    .line 63
    goto :goto_5b

    .line 65
    :cond_58
    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v7    # "file":Ljava/io/File;
    :goto_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 67
    :cond_5e
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_9e

    .line 68
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_66
    const/4 v5, 0x1

    if-ge v4, v5, :cond_6f

    .line 70
    invoke-virtual {v3}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 72
    .end local v4    # "i":I
    :cond_6f
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 73
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_9d

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to clean up hprof "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MonitorTrack"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v5    # "file":Ljava/io/File;
    :cond_9d
    goto :goto_73

    .line 80
    :cond_9e
    :try_start_9e
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "date":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/app-fdtrack-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".hprof"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "filename":Ljava/lang/String;
    invoke-static {v5}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_ce} :catch_cf

    .line 85
    .end local v4    # "date":Ljava/lang/String;
    .end local v5    # "filename":Ljava/lang/String;
    goto :goto_d3

    .line 83
    :catch_cf
    move-exception v4

    .line 84
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    .end local v4    # "e":Ljava/io/IOException;
    :goto_d3
    return-void
.end method

.method private static blacklist ForceGC()V
    .registers 0

    .line 89
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 90
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 91
    return-void
.end method

.method private static native blacklist native_startMonitor(III)V
.end method

.method private static native blacklist native_startMonitorByDefault()V
.end method

.method private static native blacklist native_stopMonitor()V
.end method

.method public static blacklist startMonitor(III)V
    .registers 3
    .param p0, "warnThresholdByParam"    # I
    .param p1, "abortThresholdByParam"    # I
    .param p2, "checkIntervalByParam"    # I

    .line 95
    invoke-static {p0, p1, p2}, Landroid/app/MonitorTrack;->native_startMonitor(III)V

    .line 96
    return-void
.end method

.method public static blacklist startMonitorByDefault()V
    .registers 0

    .line 99
    invoke-static {}, Landroid/app/MonitorTrack;->native_startMonitorByDefault()V

    .line 100
    return-void
.end method

.method public static blacklist stopMonitor()V
    .registers 0

    .line 103
    invoke-static {}, Landroid/app/MonitorTrack;->native_stopMonitor()V

    .line 104
    return-void
.end method
