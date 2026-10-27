.class public Lcom/miui/leakcanary/HeapDumpTrigger;
.super Ljava/lang/Object;
.source "HeapDumpTrigger.java"

# interfaces
.implements Lcom/miui/leakcanary/OnObjectRetainedListener;


# static fields
.field private static final blacklist DUMP_HEAP_INTERVAL:J = 0x36ee80L

.field private static final blacklist HPROF_DIR:Ljava/lang/String; = "/data/miuilog/stability/hprof/"

.field private static final blacklist HPROF_SUFFIX:Ljava/lang/String; = ".prof"

.field private static final blacklist MAX_DUMP_HEAP_TIMES:I = 0x2

.field private static final blacklist RETAINED_VISIBLE_THRESHOLD:I = 0x5

.field private static final blacklist SEPARATOR:Ljava/lang/String; = "_"

.field private static final blacklist TAG:Ljava/lang/String; = "HeapDumpTrigger"

.field private static final blacklist dumpHprofDataMethod:Ljava/lang/reflect/Method;


# instance fields
.field private blacklist applicationVisible:Z

.field private blacklist checkScheduled:Z

.field private blacklist dumpHeapTimes:I

.field private blacklist lastHeapDumpUptimeMillis:J

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "method":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v1, "dalvik.system.VMDebug"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "dumpHprofData"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    move-object v0, v2

    .line 42
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_22

    .line 40
    :catch_21
    move-exception v1

    .line 43
    :goto_22
    sput-object v0, Lcom/miui/leakcanary/HeapDumpTrigger;->dumpHprofDataMethod:Ljava/lang/reflect/Method;

    .line 44
    .end local v0    # "method":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Application;)V
    .registers 4
    .param p1, "application"    # Landroid/app/Application;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->applicationVisible:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->checkScheduled:Z

    .line 32
    iput v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->dumpHeapTimes:I

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->lastHeapDumpUptimeMillis:J

    .line 47
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/miui/leakcanary/ObjectWatcher;->getInstance()Lcom/miui/leakcanary/ObjectWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/leakcanary/ObjectWatcher;->addOnObjectRetainedListener(Lcom/miui/leakcanary/OnObjectRetainedListener;)V

    .line 49
    return-void
.end method

.method private blacklist checkRetainedCount()V
    .registers 3

    .line 74
    invoke-static {}, Lcom/miui/leakcanary/ObjectWatcher;->getInstance()Lcom/miui/leakcanary/ObjectWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/leakcanary/ObjectWatcher;->getRetainedObjectCount()I

    move-result v0

    .line 75
    .local v0, "retainedReferenceCount":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_f

    .line 76
    invoke-direct {p0}, Lcom/miui/leakcanary/HeapDumpTrigger;->dumpHeap()V

    goto :goto_25

    .line 77
    :cond_f
    if-lez v0, :cond_25

    iget-boolean v1, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->applicationVisible:Z

    if-nez v1, :cond_25

    .line 78
    invoke-direct {p0}, Lcom/miui/leakcanary/HeapDumpTrigger;->runGcWhenApplicationInvisible()V

    .line 79
    invoke-static {}, Lcom/miui/leakcanary/ObjectWatcher;->getInstance()Lcom/miui/leakcanary/ObjectWatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/leakcanary/ObjectWatcher;->getRetainedObjectCount()I

    move-result v0

    .line 80
    if-lez v0, :cond_25

    .line 81
    invoke-direct {p0}, Lcom/miui/leakcanary/HeapDumpTrigger;->dumpHeap()V

    .line 84
    :cond_25
    :goto_25
    return-void
.end method

.method private blacklist dumpHeap()V
    .registers 3

    .line 113
    iget v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->dumpHeapTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->dumpHeapTimes:I

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->lastHeapDumpUptimeMillis:J

    .line 115
    invoke-static {v0, v1}, Lcom/miui/leakcanary/KeyedWeakReference;->setHeapDumpUptimeMillis(J)V

    .line 117
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/leakcanary/HeapDumpTrigger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/leakcanary/HeapDumpTrigger$$ExternalSyntheticLambda0;-><init>(Lcom/miui/leakcanary/HeapDumpTrigger;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method private blacklist runGcWhenApplicationInvisible()V
    .registers 3

    .line 87
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 89
    const-wide/16 v0, 0x64

    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    .line 91
    goto :goto_e

    .line 90
    :catch_d
    move-exception v0

    .line 92
    :goto_e
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 93
    return-void
.end method

.method private blacklist scheduleRetainedObjectCheck()V
    .registers 5

    .line 65
    iget-boolean v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->checkScheduled:Z

    if-eqz v0, :cond_5

    return-void

    .line 66
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->checkScheduled:Z

    .line 67
    invoke-static {}, Lcom/miui/leakcanary/internal/HandlerExt;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/leakcanary/HeapDumpTrigger$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/leakcanary/HeapDumpTrigger$$ExternalSyntheticLambda2;-><init>(Lcom/miui/leakcanary/HeapDumpTrigger;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    return-void
.end method

.method private blacklist shouldDumpHeap()Z
    .registers 9

    .line 96
    sget-object v0, Lcom/miui/leakcanary/HeapDumpTrigger;->dumpHprofDataMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 97
    return v1

    .line 100
    :cond_6
    iget v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->dumpHeapTimes:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_c

    .line 101
    return v1

    .line 104
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 105
    .local v2, "now":J
    iget-wide v4, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->lastHeapDumpUptimeMillis:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-gez v0, :cond_1c

    .line 106
    return v1

    .line 109
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist supportForkDump()Z
    .registers 1

    .line 132
    sget-object v0, Lcom/miui/leakcanary/HeapDumpTrigger;->dumpHprofDataMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method synthetic blacklist lambda$dumpHeap$1$com-miui-leakcanary-HeapDumpTrigger()V
    .registers 4

    .line 127
    invoke-static {}, Lcom/miui/leakcanary/ObjectWatcher;->getInstance()Lcom/miui/leakcanary/ObjectWatcher;

    move-result-object v0

    iget-wide v1, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->lastHeapDumpUptimeMillis:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/leakcanary/ObjectWatcher;->clearObjectsWatchedBefore(J)V

    return-void
.end method

.method synthetic blacklist lambda$dumpHeap$2$com-miui-leakcanary-HeapDumpTrigger()V
    .registers 8

    .line 119
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".prof"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/miuilog/stability/hprof/"

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v1, "heapDumpFile":Ljava/io/File;
    sget-object v2, Lcom/miui/leakcanary/HeapDumpTrigger;->dumpHprofDataMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v6, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/16 v2, 0x1ff

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_54

    .line 126
    nop

    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "heapDumpFile":Ljava/io/File;
    goto :goto_5c

    .line 124
    :catch_54
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HeapDumpTrigger"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5c
    new-instance v0, Lcom/miui/leakcanary/HeapDumpTrigger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/leakcanary/HeapDumpTrigger$$ExternalSyntheticLambda1;-><init>(Lcom/miui/leakcanary/HeapDumpTrigger;)V

    invoke-static {v0}, Lcom/miui/leakcanary/internal/HandlerExt;->runInMainThread(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method synthetic blacklist lambda$scheduleRetainedObjectCheck$0$com-miui-leakcanary-HeapDumpTrigger()V
    .registers 2

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->checkScheduled:Z

    .line 69
    invoke-direct {p0}, Lcom/miui/leakcanary/HeapDumpTrigger;->checkRetainedCount()V

    .line 70
    return-void
.end method

.method public blacklist onApplicationVisibilityChanged(Z)V
    .registers 3
    .param p1, "applicationVisible"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/miui/leakcanary/HeapDumpTrigger;->applicationVisible:Z

    .line 53
    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/miui/leakcanary/HeapDumpTrigger;->shouldDumpHeap()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54
    invoke-direct {p0}, Lcom/miui/leakcanary/HeapDumpTrigger;->scheduleRetainedObjectCheck()V

    .line 56
    :cond_d
    return-void
.end method

.method public blacklist onObjectRetained()V
    .registers 2

    .line 59
    invoke-direct {p0}, Lcom/miui/leakcanary/HeapDumpTrigger;->shouldDumpHeap()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 60
    invoke-direct {p0}, Lcom/miui/leakcanary/HeapDumpTrigger;->checkRetainedCount()V

    .line 62
    :cond_9
    return-void
.end method
