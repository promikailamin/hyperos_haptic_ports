.class public Lmiui/mqsas/sdk/HighMemoryManager;
.super Ljava/lang/Object;
.source "HighMemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/HighMemoryManager$GcWatcher;
    }
.end annotation


# static fields
.field private static final blacklist HIGH_MEM_ENABLE:Ljava/lang/String; = "persist.sys.stability.highmem.enable"

.field private static final blacklist HIGH_MEM_ENABLE_DEFAULT:Z = true

.field private static final blacklist HIGH_MEM_THRESHOLD:Ljava/lang/String; = "persist.sys.stability.highmem.threshold"

.field private static final blacklist HIGH_MEM_THRESHOLD_DEFAULT:I = 0x50

.field private static final blacklist HIGH_MEM_TIMES:Ljava/lang/String; = "persist.sys.stability.highmem.times"

.field private static final blacklist HIGH_MEM_TIMES_DEFAULT:I = 0x2

.field private static final blacklist HPROF_DIR:Ljava/lang/String; = "/data/miuilog/stability/hprof/"

.field private static final blacklist HPROF_SUFFIX:Ljava/lang/String; = ".hprof"

.field private static final blacklist ONE_SECOND_MILLIS:J = 0x3e8L

.field private static blacklist lastCheckHeapUptimeMillis:J

.field private static blacklist sDumpHprof:Z

.field static blacklist sGcWatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/mqsas/sdk/HighMemoryManager$GcWatcher;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist sGcWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sHighMemoryTimes:I

.field static blacklist sTmpWatchers:[Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/mqsas/sdk/HighMemoryManager;->lastCheckHeapUptimeMillis:J

    .line 34
    const/4 v0, 0x0

    sput v0, Lmiui/mqsas/sdk/HighMemoryManager;->sHighMemoryTimes:I

    .line 35
    sput-boolean v0, Lmiui/mqsas/sdk/HighMemoryManager;->sDumpHprof:Z

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lmiui/mqsas/sdk/HighMemoryManager$GcWatcher;

    invoke-direct {v1}, Lmiui/mqsas/sdk/HighMemoryManager$GcWatcher;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lmiui/mqsas/sdk/HighMemoryManager;->sGcWatcher:Ljava/lang/ref/WeakReference;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/HighMemoryManager;->sGcWatchers:Ljava/util/ArrayList;

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    sput-object v0, Lmiui/mqsas/sdk/HighMemoryManager;->sTmpWatchers:[Ljava/lang/Runnable;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addGcWatcher(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "watcher"    # Ljava/lang/Runnable;

    .line 132
    sget-object v0, Lmiui/mqsas/sdk/HighMemoryManager;->sGcWatchers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 133
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static blacklist checkJavaHeap(I)Ljava/lang/String;
    .registers 17
    .param p0, "percentage"    # I

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 73
    .local v0, "now":J
    sget-wide v2, Lmiui/mqsas/sdk/HighMemoryManager;->lastCheckHeapUptimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    const-string v3, ""

    if-gez v2, :cond_11

    return-object v3

    .line 74
    :cond_11
    sput-wide v0, Lmiui/mqsas/sdk/HighMemoryManager;->lastCheckHeapUptimeMillis:J

    .line 76
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    .line 77
    .local v4, "max":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    .line 78
    .local v6, "total":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    .line 79
    .local v8, "free":J
    sub-long v10, v6, v8

    .line 80
    .local v10, "used":J
    const-wide/16 v12, 0x64

    div-long v12, v4, v12

    move/from16 v2, p0

    int-to-long v14, v2

    mul-long/2addr v12, v14

    cmp-long v12, v10, v12

    if-lez v12, :cond_65

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Java Memory used="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v12, 0x400

    div-long v14, v10, v12

    div-long/2addr v14, v12

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "M max="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-long v14, v4, v12

    div-long/2addr v14, v12

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "M"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 83
    :cond_65
    return-object v3
.end method

.method private static blacklist directoryWritableAfterMkdirs(Ljava/io/File;)Z
    .registers 2
    .param p0, "directory"    # Ljava/io/File;

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static blacklist dumpHprof(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 13
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "summary"    # Ljava/lang/String;

    .line 94
    sget-boolean v0, Lmiui/mqsas/sdk/HighMemoryManager;->sDumpHprof:Z

    if-eqz v0, :cond_5

    return-void

    .line 95
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/mqsas/sdk/HighMemoryManager;->sDumpHprof:Z

    .line 96
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    return-void
.end method

.method private static blacklist getHprofFileName(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ".hprof"

    const-string v2, "_"

    if-nez v0, :cond_33

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_33

    .line 90
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x3a

    const/16 v4, 0x5f

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :cond_33
    :goto_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getVersionCode(Landroid/content/pm/ApplicationInfo;)J
    .registers 3
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 65
    :try_start_0
    const-class v0, Landroid/content/pm/ApplicationInfo;

    const-string v1, "longVersionCode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 66
    :catch_d
    move-exception v0

    .line 68
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static blacklist init(Landroid/content/Context;)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 41
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_3f

    .line 42
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_f

    return-void

    .line 43
    :cond_f
    const-string v1, "persist.sys.stability.highmem.enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_18

    return-void

    .line 44
    :cond_18
    const/4 v1, 0x2

    const-string v2, "persist.sys.stability.highmem.times"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, "times":I
    const/16 v2, 0x50

    const-string v3, "persist.sys.stability.highmem.threshold"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 46
    .local v2, "percentage":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 47
    .local v10, "packageName":Ljava/lang/String;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 48
    .local v11, "processName":Ljava/lang/String;
    invoke-static {v0}, Lmiui/mqsas/sdk/HighMemoryManager;->getVersionCode(Landroid/content/pm/ApplicationInfo;)J

    move-result-wide v12

    .line 49
    .local v12, "versionCode":J
    new-instance v14, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;

    move-object v3, v14

    move v4, v2

    move v5, v1

    move-object v6, v10

    move-object v7, v11

    move-wide v8, v12

    invoke-direct/range {v3 .. v9}, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    invoke-static {v14}, Lmiui/mqsas/sdk/HighMemoryManager;->addGcWatcher(Ljava/lang/Runnable;)V

    .line 57
    .end local v1    # "times":I
    .end local v2    # "percentage":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "processName":Ljava/lang/String;
    .end local v12    # "versionCode":J
    :cond_3f
    return-void
.end method

.method static synthetic blacklist lambda$dumpHprof$1(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 15
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "summary"    # Ljava/lang/String;

    .line 98
    const-string v0, "/data/miuilog/stability/hprof/"

    :try_start_2
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportHighMemoryEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    .line 99
    .local v1, "dumpHprof":Z
    if-eqz v1, :cond_68

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lmiui/mqsas/sdk/HighMemoryManager;->directoryWritableAfterMkdirs(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 100
    new-instance v2, Ljava/io/File;

    invoke-static {p0, p1, p2, p3}, Lmiui/mqsas/sdk/HighMemoryManager;->getHprofFileName(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 101
    .local v0, "hprof":Ljava/io/File;
    const-string v2, "dalvik.system.VMDebug"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 102
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpHprofData"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 103
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v6

    if-nez v6, :cond_59

    move v7, v8

    :cond_59
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/16 v4, 0x1ff

    const/4 v5, -0x1

    invoke-static {v0, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_68} :catch_69

    .line 108
    .end local v0    # "hprof":Ljava/io/File;
    .end local v1    # "dumpHprof":Z
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_68
    goto :goto_71

    .line 106
    :catch_69
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HighMemoryManager"

    const-string v2, "dumpHprof"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_71
    return-void
.end method

.method static synthetic blacklist lambda$init$0(IILjava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p0, "percentage"    # I
    .param p1, "times"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "versionCode"    # J

    .line 50
    sget-boolean v0, Lmiui/mqsas/sdk/HighMemoryManager;->sDumpHprof:Z

    if-eqz v0, :cond_5

    return-void

    .line 51
    :cond_5
    invoke-static {p0}, Lmiui/mqsas/sdk/HighMemoryManager;->checkJavaHeap(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "summary":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    sget v1, Lmiui/mqsas/sdk/HighMemoryManager;->sHighMemoryTimes:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lmiui/mqsas/sdk/HighMemoryManager;->sHighMemoryTimes:I

    if-le v1, p1, :cond_1a

    .line 53
    invoke-static {p2, p3, p4, p5, v0}, Lmiui/mqsas/sdk/HighMemoryManager;->dumpHprof(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 55
    :cond_1a
    return-void
.end method
