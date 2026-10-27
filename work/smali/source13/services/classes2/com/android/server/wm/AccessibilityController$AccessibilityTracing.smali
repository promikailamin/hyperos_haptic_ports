.class final Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessibilityTracing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;
    }
.end annotation


# static fields
.field private static final BUFFER_CAPACITY:I = 0xc00000

.field private static final CPU_STATS_COUNT:I = 0x5

.field private static final MAGIC_NUMBER_VALUE:J = 0x4341525459313141L

.field private static final TAG:Ljava/lang/String; = "AccessibilityTracing"

.field private static final TRACE_FILENAME:Ljava/lang/String; = "/data/misc/a11ytrace/a11y_trace.winscope"

.field private static sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# instance fields
.field private final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field private volatile mEnabled:Z

.field private final mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTraceFile:Ljava/io/File;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBuffer(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/internal/util/TraceBuffer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprintCpuStats(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->printCpuStats(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtoStackTraceString(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;[Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->toStackTraceString([Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mwriteTraceToFileInternal(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->writeTraceToFileInternal()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 1944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1937
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    .line 1945
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1946
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/a11ytrace/a11y_trace.winscope"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mTraceFile:Ljava/io/File;

    .line 1947
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    const/high16 v1, 0xc00000

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 1948
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AccessibilityTracing"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1949
    .local v0, "workThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1950
    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;-><init>(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    .line 1951
    return-void
.end method

.method static getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
    .registers 3
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 1921
    invoke-static {}, Lcom/android/server/wm/AccessibilityController;->-$$Nest$sfgetSTATIC_LOCK()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1922
    :try_start_5
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    if-nez v1, :cond_10

    .line 1923
    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sput-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 1925
    :cond_10
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    monitor-exit v0

    return-object v1

    .line 1926
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 29
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J
    .param p4, "callingParams"    # Ljava/lang/String;
    .param p5, "a11yDump"    # [B
    .param p6, "callingUid"    # I
    .param p7, "callingStack"    # [Ljava/lang/StackTraceElement;
    .param p8, "timeStamp"    # J
    .param p10, "processName"    # Ljava/lang/String;
    .param p11, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI[",
            "Ljava/lang/StackTraceElement;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2123
    .local p12, "ignoreStackEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2124
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    move-wide/from16 v1, p8

    iput-wide v1, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 2125
    move-wide/from16 v3, p2

    iput-wide v3, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 2126
    move-object/from16 v5, p1

    iput-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2127
    move-object/from16 v6, p10

    iput-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2128
    move-object/from16 v7, p11

    iput-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2129
    move-object/from16 v8, p12

    iput-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2130
    move-object/from16 v9, p4

    iput-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 2131
    move-object/from16 v10, p7

    iput-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 2132
    move-object/from16 v11, p5

    iput-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 2134
    move-object/from16 v12, p0

    iget-object v13, v12, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    const/4 v14, 0x1

    const/4 v15, 0x0

    move/from16 v1, p6

    invoke-virtual {v13, v14, v1, v15, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2135
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2136
    return-void
.end method

.method private printCpuStats(J)Ljava/lang/String;
    .registers 6
    .param p1, "timeStampNanos"    # J

    .line 2239
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/ActivityManagerInternal;->getAppProfileStatsForDebugging(JI)Landroid/util/Pair;

    move-result-object v0

    .line 2242
    .local v0, "stats":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toStackTraceString([Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;
    .registers 10
    .param p1, "stackTraceElements"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2065
    .local p2, "ignoreStackEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_5

    .line 2066
    const-string v0, ""

    return-object v0

    .line 2069
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2070
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2073
    .local v1, "i":I
    const/4 v2, -0x1

    .line 2074
    .local v2, "firstMatch":I
    :goto_c
    array-length v3, p1

    if-ge v1, v3, :cond_33

    .line 2075
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2076
    .local v4, "ele":Ljava/lang/String;
    aget-object v5, p1, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 2078
    move v2, v1

    .line 2079
    goto :goto_2e

    .line 2081
    .end local v4    # "ele":Ljava/lang/String;
    :cond_2d
    goto :goto_13

    .line 2082
    :cond_2e
    :goto_2e
    if-gez v2, :cond_33

    .line 2084
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2089
    :cond_33
    move v3, v2

    .line 2090
    .local v3, "lastMatch":I
    array-length v4, p1

    if-ge v1, v4, :cond_61

    .line 2091
    add-int/lit8 v1, v1, 0x1

    .line 2093
    :goto_39
    array-length v4, p1

    if-ge v1, v4, :cond_61

    .line 2094
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2095
    .local v5, "ele":Ljava/lang/String;
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 2097
    move v3, v1

    .line 2098
    goto :goto_5b

    .line 2100
    .end local v5    # "ele":Ljava/lang/String;
    :cond_5a
    goto :goto_40

    .line 2101
    :cond_5b
    :goto_5b
    if-eq v3, v1, :cond_5e

    .line 2103
    goto :goto_61

    .line 2105
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 2109
    :cond_61
    :goto_61
    add-int/lit8 v1, v3, 0x1

    .line 2110
    :goto_63
    array-length v4, p1

    if-ge v1, v4, :cond_78

    .line 2111
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 2114
    :cond_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private writeTraceToFileInternal()V
    .registers 6

    .line 2227
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 2228
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10600000001L

    const-wide v3, 0x4341525459313141L    # 9.75119366241549E15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2229
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 2232
    .end local v0    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_22

    .line 2230
    :catch_1a
    move-exception v0

    .line 2231
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AccessibilityTracing"

    const-string v2, "Unable to write buffer to file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2233
    .end local v0    # "e":Ljava/io/IOException;
    :goto_22
    return-void
.end method


# virtual methods
.method isEnabled()Z
    .registers 2

    .line 1986
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    return v0
.end method

.method logState(Ljava/lang/String;J)V
    .registers 5
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J

    .line 1993
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_5

    .line 1994
    return-void

    .line 1996
    :cond_5
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;)V

    .line 1997
    return-void
.end method

.method logState(Ljava/lang/String;JLjava/lang/String;)V
    .registers 12
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J
    .param p4, "callingParams"    # Ljava/lang/String;

    .line 2003
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_5

    .line 2004
    return-void

    .line 2006
    :cond_5
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[B)V

    .line 2007
    return-void
.end method

.method logState(Ljava/lang/String;JLjava/lang/String;[B)V
    .registers 15
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J
    .param p4, "callingParams"    # Ljava/lang/String;
    .param p5, "a11yDump"    # [B

    .line 2013
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_5

    .line 2014
    return-void

    .line 2016
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    new-instance v8, Ljava/util/HashSet;

    const-string v0, "logState"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2017
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2016
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BILjava/util/Set;)V

    .line 2018
    return-void
.end method

.method logState(Ljava/lang/String;JLjava/lang/String;[BILjava/util/Set;)V
    .registers 20
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J
    .param p4, "callingParams"    # Ljava/lang/String;
    .param p5, "a11yDump"    # [B
    .param p6, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2025
    .local p7, "ignoreStackEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v9, p0

    iget-boolean v0, v9, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_6

    .line 2026
    return-void

    .line 2028
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    .line 2029
    .local v10, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const-string v0, "logState"

    move-object/from16 v11, p7

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2030
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    .line 2032
    return-void
.end method

.method logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJLjava/util/Set;)V
    .registers 28
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J
    .param p4, "callingParams"    # Ljava/lang/String;
    .param p5, "a11yDump"    # [B
    .param p6, "callingUid"    # I
    .param p7, "callingStack"    # [Ljava/lang/StackTraceElement;
    .param p8, "timeStamp"    # J
    .param p10, "processId"    # I
    .param p11, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI[",
            "Ljava/lang/StackTraceElement;",
            "JIJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2055
    .local p13, "ignoreStackEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v13, p0

    iget-boolean v0, v13, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_6

    .line 2056
    return-void

    .line 2058
    :cond_6
    nop

    .line 2059
    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 2058
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 2060
    return-void
.end method

.method logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .registers 23
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "loggingTypes"    # J
    .param p4, "callingParams"    # Ljava/lang/String;
    .param p5, "a11yDump"    # [B
    .param p6, "callingUid"    # I
    .param p7, "stackTrace"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2039
    .local p8, "ignoreStackEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v13, p0

    iget-boolean v0, v13, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_6

    .line 2040
    return-void

    .line 2042
    :cond_6
    nop

    .line 2043
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2044
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2045
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2042
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 2047
    return-void
.end method

.method startTrace()V
    .registers 3

    .line 1957
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_c

    .line 1958
    const-string v0, "AccessibilityTracing"

    const-string v1, "Error: Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    return-void

    .line 1961
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1962
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    .line 1963
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 1964
    monitor-exit v0

    .line 1965
    return-void

    .line 1964
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method stopTrace()V
    .registers 4

    .line 1971
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_c

    .line 1972
    const-string v0, "AccessibilityTracing"

    const-string v1, "Error: Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    return-void

    .line 1975
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1976
    const/4 v1, 0x0

    :try_start_10
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    .line 1977
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-eqz v1, :cond_1f

    .line 1978
    const-string v1, "AccessibilityTracing"

    const-string v2, "Error: tracing enabled while waiting for flush."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    monitor-exit v0

    return-void

    .line 1981
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->writeTraceToFile()V

    .line 1982
    monitor-exit v0

    .line 1983
    return-void

    .line 1982
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw v1
.end method

.method writeTraceToFile()V
    .registers 3

    .line 2142
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->sendEmptyMessage(I)Z

    .line 2143
    return-void
.end method
