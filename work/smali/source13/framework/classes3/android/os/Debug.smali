.class public final Landroid/os/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$DebugProperty;,
        Landroid/os/Debug$InstructionCount;,
        Landroid/os/Debug$MemoryInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_TRACE_BODY:Ljava/lang/String; = "dmtrace"

.field private static final greylist-max-o DEFAULT_TRACE_EXTENSION:Ljava/lang/String; = ".trace"

.field public static final blacklist MEMINFO_ACTIVE:I = 0x10

.field public static final blacklist MEMINFO_ACTIVE_FILE:I = 0x15

.field public static final blacklist MEMINFO_AVAILABLE:I = 0x13

.field public static final greylist-max-o MEMINFO_BUFFERS:I = 0x2

.field public static final greylist-max-o MEMINFO_CACHED:I = 0x3

.field public static final greylist-max-o MEMINFO_COUNT:I = 0x17

.field public static final greylist-max-o MEMINFO_FREE:I = 0x1

.field public static final blacklist MEMINFO_INACTIVE:I = 0x11

.field public static final blacklist MEMINFO_INACTIVE_FILE:I = 0x16

.field public static final greylist-max-o MEMINFO_KERNEL_STACK:I = 0xe

.field public static final blacklist MEMINFO_KRECLAIMABLE:I = 0xf

.field public static final greylist-max-o MEMINFO_MAPPED:I = 0xb

.field public static final greylist-max-o MEMINFO_PAGE_TABLES:I = 0xd

.field public static final greylist-max-o MEMINFO_SHMEM:I = 0x4

.field public static final greylist-max-o MEMINFO_SLAB:I = 0x5

.field public static final greylist-max-o MEMINFO_SLAB_RECLAIMABLE:I = 0x6

.field public static final greylist-max-o MEMINFO_SLAB_UNRECLAIMABLE:I = 0x7

.field public static final blacklist MEMINFO_SWAPCACHED:I = 0x14

.field public static final greylist-max-o MEMINFO_SWAP_FREE:I = 0x9

.field public static final greylist-max-o MEMINFO_SWAP_TOTAL:I = 0x8

.field public static final greylist-max-o MEMINFO_TOTAL:I = 0x0

.field public static final blacklist MEMINFO_UNEVICTABLE:I = 0x12

.field public static final greylist-max-o MEMINFO_VM_ALLOC_USED:I = 0xc

.field public static final greylist-max-o MEMINFO_ZRAM_TOTAL:I = 0xa

.field private static final greylist-max-o MIN_DEBUGGER_IDLE:I = 0x514

.field public static final whitelist SHOW_CLASSLOADER:I = 0x2

.field public static final whitelist SHOW_FULL_DETAIL:I = 0x1

.field public static final whitelist SHOW_INITIALIZED:I = 0x4

.field private static final greylist-max-o SPIN_DELAY:I = 0xc8

.field private static final greylist-max-o SYSFS_QEMU_TRACE_STATE:Ljava/lang/String; = "/sys/qemu_trace/state"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Debug"

.field public static final whitelist TRACE_COUNT_ALLOCS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o debugProperties:Lcom/android/internal/util/TypedProperties;

.field private static volatile greylist-max-o mWaiting:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Debug;->mWaiting:Z

    .line 2255
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Debug;->debugProperties:Lcom/android/internal/util/TypedProperties;

    .line 2257
    return-void
.end method

.method private constructor greylist-max-r <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p0, "library"    # Ljava/lang/String;
    .param p1, "options"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2588
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2589
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2591
    if-nez p1, :cond_14

    .line 2592
    invoke-static {p0, p2}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_2c

    .line 2594
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2596
    :goto_2c
    return-void
.end method

.method public static whitelist changeDebugPort(I)V
    .registers 1
    .param p0, "port"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1107
    return-void
.end method

.method public static greylist countInstancesOfClass(Ljava/lang/Class;)J
    .registers 3
    .param p0, "cls"    # Ljava/lang/Class;

    .line 2114
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist dumpHprofData(Ljava/lang/String;)V
    .registers 1
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2064
    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V

    .line 2065
    return-void
.end method

.method public static greylist-max-o dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2078
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 2079
    return-void
.end method

.method public static greylist-max-o dumpHprofDataDdms()V
    .registers 0

    .line 2089
    invoke-static {}, Ldalvik/system/VMDebug;->dumpHprofDataDdms()V

    .line 2090
    return-void
.end method

.method public static native greylist-max-o dumpJavaBacktraceToFileTimeout(ILjava/lang/String;I)Z
.end method

.method public static native greylist-max-o dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z
.end method

.method public static native greylist-max-r dumpNativeHeap(Ljava/io/FileDescriptor;)V
.end method

.method public static native greylist-max-o dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V
.end method

.method public static final greylist dumpReferenceTables()V
    .registers 0

    .line 2155
    invoke-static {}, Ldalvik/system/VMDebug;->dumpReferenceTables()V

    .line 2156
    return-void
.end method

.method public static whitelist dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 2454
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2455
    .local v0, "service":Landroid/os/IBinder;
    const/4 v1, 0x0

    const-string v2, "Debug"

    if-nez v0, :cond_20

    .line 2456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find service to dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    return v1

    .line 2461
    :cond_20
    :try_start_20
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_25

    .line 2462
    const/4 v1, 0x1

    return v1

    .line 2463
    :catch_25
    move-exception v3

    .line 2464
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t dump service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2465
    return v1
.end method

.method public static whitelist enableEmulatorTraceOutput()V
    .registers 2

    .line 1196
    const-string v0, "Debug"

    const-string v1, "Unimplemented"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return-void
.end method

.method private static greylist-max-o fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z
    .registers 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2267
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 2268
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    if-ne v0, p1, :cond_8

    .line 2269
    return v1

    .line 2277
    :cond_8
    const/4 v2, 0x0

    :try_start_9
    const-string v3, "TYPE"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_f} :catch_1e

    .line 2280
    .local v3, "primitiveTypeField":Ljava/lang/reflect/Field;
    nop

    .line 2282
    const/4 v4, 0x0

    :try_start_11
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_17} :catch_1c

    if-ne v0, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1

    .line 2283
    :catch_1c
    move-exception v1

    .line 2284
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    return v2

    .line 2278
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    .end local v3    # "primitiveTypeField":Ljava/lang/reflect/Field;
    :catch_1e
    move-exception v1

    .line 2279
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    return v2
.end method

.method private static greylist-max-o fixTracePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "tracePath"    # Ljava/lang/String;

    .line 1346
    if-eqz p0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_32

    .line 1347
    :cond_b
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 1349
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_17

    .line 1350
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .local v1, "dir":Ljava/io/File;
    goto :goto_1b

    .line 1352
    .end local v1    # "dir":Ljava/io/File;
    :cond_17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 1355
    .restart local v1    # "dir":Ljava/io/File;
    :goto_1b
    if-nez p0, :cond_29

    .line 1356
    new-instance v2, Ljava/io/File;

    const-string v3, "dmtrace"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 1358
    :cond_29
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 1361
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dir":Ljava/io/File;
    :cond_32
    :goto_32
    const-string v0, ".trace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1364
    :cond_4b
    return-object p0
.end method

.method public static final native whitelist getBinderDeathObjectCount()I
.end method

.method public static final native whitelist getBinderLocalObjectCount()I
.end method

.method public static final native whitelist getBinderProxyObjectCount()I
.end method

.method public static native whitelist getBinderReceivedTransactions()I
.end method

.method public static native whitelist getBinderSentTransactions()I
.end method

.method public static greylist getCaller()Ljava/lang/String;
    .registers 2

    .line 2569
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 5
    .param p0, "callStack"    # [Ljava/lang/StackTraceElement;
    .param p1, "depth"    # I

    .line 2507
    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-lt v0, v1, :cond_8

    .line 2508
    const-string v0, "<bottom of call stack>"

    return-object v0

    .line 2510
    :cond_8
    add-int/lit8 v0, p1, 0x4

    aget-object v0, p0, v0

    .line 2511
    .local v0, "caller":Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getCallers(I)Ljava/lang/String;
    .registers 6
    .param p0, "depth"    # I

    .line 2522
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2523
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2524
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, p0, :cond_20

    .line 2525
    invoke-static {v0, v2}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2527
    .end local v2    # "i":I
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o getCallers(II)Ljava/lang/String;
    .registers 7
    .param p0, "start"    # I
    .param p1, "depth"    # I

    .line 2537
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2538
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2539
    .local v1, "sb":Ljava/lang/StringBuilder;
    add-int/2addr p1, p0

    .line 2540
    move v2, p0

    .local v2, "i":I
    :goto_f
    if-ge v2, p1, :cond_21

    .line 2541
    invoke-static {v0, v2}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2540
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2543
    .end local v2    # "i":I
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o getCallers(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "depth"    # I
    .param p1, "linePrefix"    # Ljava/lang/String;

    .line 2555
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2556
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2557
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, p0, :cond_24

    .line 2558
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v2}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2560
    .end local v2    # "i":I
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static native blacklist getDmabufHeapPoolsSizeKb()J
.end method

.method public static native blacklist getDmabufHeapTotalExportedKb()J
.end method

.method public static native blacklist getDmabufMappedSizeKb()J
.end method

.method public static native blacklist getDmabufTotalExportedKb()J
.end method

.method public static whitelist getGlobalAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1463
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1485
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalClassInitCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1574
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalClassInitTime()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1597
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalExternalAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1617
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalExternalAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1640
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalExternalFreedCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1649
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalExternalFreedSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1665
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalFreedCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1507
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalFreedSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1529
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalGcInvocationCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1551
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static native blacklist getGpuPrivateMemoryKb()J
.end method

.method public static native blacklist getGpuTotalUsageKb()J
.end method

.method public static native blacklist getIonHeapsSizeKb()J
.end method

.method public static native blacklist getIonPoolsSizeKb()J
.end method

.method public static whitelist getLoadedClassCount()I
    .registers 1

    .line 2052
    invoke-static {}, Ldalvik/system/VMDebug;->getLoadedClassCount()I

    move-result v0

    return v0
.end method

.method public static native greylist getMemInfo([J)V
.end method

.method public static native whitelist getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
.end method

.method public static native greylist getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z
.end method

.method public static greylist-max-o getMethodTracingMode()I
    .registers 1

    .line 1400
    invoke-static {}, Ldalvik/system/VMDebug;->getMethodTracingMode()I

    move-result v0

    return v0
.end method

.method public static native whitelist getNativeHeapAllocatedSize()J
.end method

.method public static native whitelist getNativeHeapFreeSize()J
.end method

.method public static native whitelist getNativeHeapSize()J
.end method

.method public static native whitelist getPss()J
.end method

.method public static native greylist-max-o getPss(I[J[J)J
.end method

.method public static whitelist getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "statName"    # Ljava/lang/String;

    .line 1878
    invoke-static {p0}, Ldalvik/system/VMDebug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRuntimeStats()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1888
    invoke-static {}, Ldalvik/system/VMDebug;->getRuntimeStats()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getThreadAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1683
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getThreadAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1706
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getThreadExternalAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1726
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getThreadExternalAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1742
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getThreadGcInvocationCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1760
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static native greylist-max-o getUnreachableMemory(IZ)Ljava/lang/String;
.end method

.method public static greylist-max-o getVmFeatureList()[Ljava/lang/String;
    .registers 1

    .line 1098
    invoke-static {}, Ldalvik/system/VMDebug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native blacklist getZramFreeKb()J
.end method

.method public static whitelist isDebuggerConnected()Z
    .registers 1

    .line 1087
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method public static native blacklist isVmapStack()Z
.end method

.method private static greylist-max-o modifyFieldIfSet(Ljava/lang/reflect/Field;Lcom/android/internal/util/TypedProperties;Ljava/lang/String;)V
    .registers 9
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "properties"    # Lcom/android/internal/util/TypedProperties;
    .param p2, "propertyName"    # Ljava/lang/String;

    .line 2295
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-string v2, "Cannot set field for "

    const-string v3, ")"

    const-string v4, "Type of "

    const/4 v5, 0x0

    if-ne v0, v1, :cond_81

    .line 2296
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->getStringInfo(Ljava/lang/String;)I

    move-result v0

    .line 2297
    .local v0, "stringInfo":I
    packed-switch v0, :pswitch_data_e6

    .line 2316
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected getStringInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2300
    :pswitch_39
    goto :goto_81

    .line 2303
    :pswitch_3a
    :try_start_3a
    invoke-virtual {p0, v5, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_3d} :catch_3f

    .line 2307
    nop

    .line 2308
    return-void

    .line 2304
    :catch_3f
    move-exception v1

    .line 2305
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2310
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :pswitch_57
    return-void

    .line 2312
    :pswitch_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  does not match field type ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2314
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2321
    .end local v0    # "stringInfo":I
    :cond_81
    :goto_81
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2322
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_e4

    .line 2323
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/os/Debug;->fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 2329
    :try_start_91
    invoke-virtual {p0, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_91 .. :try_end_94} :catch_95

    .line 2333
    goto :goto_e4

    .line 2330
    :catch_95
    move-exception v1

    .line 2331
    .restart local v1    # "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2324
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :cond_ad
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")  does not match field type ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2326
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2335
    :cond_e4
    :goto_e4
    return-void

    nop

    :pswitch_data_e6
    .packed-switch -0x2
        :pswitch_58
        :pswitch_57
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public static whitelist printLoadedClasses(I)V
    .registers 1
    .param p0, "flags"    # I

    .line 2044
    invoke-static {p0}, Ldalvik/system/VMDebug;->printLoadedClasses(I)V

    .line 2045
    return-void
.end method

.method public static whitelist resetAllCounts()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1782
    const/4 v0, -0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1783
    return-void
.end method

.method public static whitelist resetGlobalAllocCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1474
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1475
    return-void
.end method

.method public static whitelist resetGlobalAllocSize()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1496
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1497
    return-void
.end method

.method public static whitelist resetGlobalClassInitCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1585
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1586
    return-void
.end method

.method public static whitelist resetGlobalClassInitTime()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1608
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1609
    return-void
.end method

.method public static whitelist resetGlobalExternalAllocCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1632
    return-void
.end method

.method public static whitelist resetGlobalExternalAllocSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1625
    return-void
.end method

.method public static whitelist resetGlobalExternalFreedCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1657
    return-void
.end method

.method public static whitelist resetGlobalExternalFreedSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1673
    return-void
.end method

.method public static whitelist resetGlobalFreedCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1518
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1519
    return-void
.end method

.method public static whitelist resetGlobalFreedSize()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1540
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1541
    return-void
.end method

.method public static whitelist resetGlobalGcInvocationCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1562
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1563
    return-void
.end method

.method public static whitelist resetThreadAllocCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1694
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1695
    return-void
.end method

.method public static whitelist resetThreadAllocSize()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1717
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1718
    return-void
.end method

.method public static whitelist resetThreadExternalAllocCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1734
    return-void
.end method

.method public static whitelist resetThreadExternalAllocSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1750
    return-void
.end method

.method public static whitelist resetThreadGcInvocationCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1771
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1772
    return-void
.end method

.method public static whitelist setAllocationLimit(I)I
    .registers 2
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2022
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist-max-o setFieldsOn(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2346
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Debug;->setFieldsOn(Ljava/lang/Class;Z)V

    .line 2347
    return-void
.end method

.method public static greylist-max-o setFieldsOn(Ljava/lang/Class;Z)V
    .registers 4
    .param p1, "partial"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2425
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFieldsOn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2426
    if-nez p0, :cond_12

    const-string/jumbo v1, "null"

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") called in non-DEBUG build"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2425
    const-string v1, "Debug"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    return-void
.end method

.method public static whitelist setGlobalAllocationLimit(I)I
    .registers 2
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2035
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist startAllocCounting()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1442
    invoke-static {}, Ldalvik/system/VMDebug;->startAllocCounting()V

    .line 1443
    return-void
.end method

.method public static whitelist startMethodTracing()V
    .registers 2

    .line 1220
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1221
    return-void
.end method

.method public static whitelist startMethodTracing(Ljava/lang/String;)V
    .registers 2
    .param p0, "tracePath"    # Ljava/lang/String;

    .line 1249
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 1250
    return-void
.end method

.method public static whitelist startMethodTracing(Ljava/lang/String;I)V
    .registers 3
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I

    .line 1281
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 1282
    return-void
.end method

.method public static whitelist startMethodTracing(Ljava/lang/String;II)V
    .registers 5
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "flags"    # I

    .line 1315
    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1316
    return-void
.end method

.method public static greylist-max-o startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)V
    .registers 12
    .param p0, "traceName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bufferSize"    # I
    .param p3, "flags"    # I
    .param p4, "streamOutput"    # Z

    .line 1378
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    .line 1379
    return-void
.end method

.method public static greylist-max-o startMethodTracingDdms(IIZI)V
    .registers 4
    .param p0, "bufferSize"    # I
    .param p1, "flags"    # I
    .param p2, "samplingEnabled"    # Z
    .param p3, "intervalUs"    # I

    .line 1390
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdms(IIZI)V

    .line 1391
    return-void
.end method

.method public static whitelist startMethodTracingSampling(Ljava/lang/String;II)V
    .registers 6
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "intervalUs"    # I

    .line 1339
    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, p2}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1340
    return-void
.end method

.method public static whitelist startNativeTracing()V
    .registers 3

    .line 1145
    const/4 v0, 0x0

    .line 1147
    .local v0, "outStream":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/qemu_trace/state"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 1149
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1f
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    .line 1152
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 1153
    :goto_14
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_23

    .line 1152
    :catchall_18
    move-exception v1

    if-eqz v0, :cond_1e

    .line 1153
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1154
    :cond_1e
    throw v1

    .line 1150
    :catch_1f
    move-exception v1

    .line 1152
    if-eqz v0, :cond_23

    .line 1153
    goto :goto_14

    .line 1155
    :cond_23
    :goto_23
    return-void
.end method

.method public static whitelist stopAllocCounting()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1452
    invoke-static {}, Ldalvik/system/VMDebug;->stopAllocCounting()V

    .line 1453
    return-void
.end method

.method public static whitelist stopMethodTracing()V
    .registers 0

    .line 1407
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    .line 1408
    return-void
.end method

.method public static whitelist stopNativeTracing()V
    .registers 3

    .line 1169
    const/4 v0, 0x0

    .line 1171
    .local v0, "outStream":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/qemu_trace/state"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 1173
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1f
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    .line 1178
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 1179
    :goto_14
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_23

    .line 1178
    :catchall_18
    move-exception v1

    if-eqz v0, :cond_1e

    .line 1179
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1180
    :cond_1e
    throw v1

    .line 1174
    :catch_1f
    move-exception v1

    .line 1178
    if-eqz v0, :cond_23

    .line 1179
    goto :goto_14

    .line 1181
    :cond_23
    :goto_23
    return-void
.end method

.method public static whitelist threadCpuTimeNanos()J
    .registers 2

    .line 1422
    invoke-static {}, Ldalvik/system/VMDebug;->threadCpuTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist waitForDebugger()V
    .registers 10

    .line 1026
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1028
    return-void

    .line 1030
    :cond_7
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1031
    return-void

    .line 1034
    :cond_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Sending WAIT chunk"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1035
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 1036
    .local v1, "data":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string v4, "WAIT"

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4, v1, v2, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 1037
    .local v3, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 1039
    sput-boolean v0, Landroid/os/Debug;->mWaiting:Z

    .line 1040
    :goto_2b
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    const-wide/16 v4, 0xc8

    if-nez v0, :cond_39

    .line 1041
    :try_start_33
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_37

    .line 1042
    :goto_36
    goto :goto_2b

    :catch_37
    move-exception v0

    goto :goto_36

    .line 1044
    :cond_39
    sput-boolean v2, Landroid/os/Debug;->mWaiting:Z

    .line 1046
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Debugger has connected"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1058
    :goto_42
    invoke-static {}, Ldalvik/system/VMDebug;->lastDebuggerActivity()J

    move-result-wide v6

    .line 1059
    .local v6, "delta":J
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_54

    .line 1060
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "debugger detached?"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1061
    goto :goto_88

    .line 1064
    :cond_54
    const-wide/16 v8, 0x514

    cmp-long v0, v6, v8

    if-gez v0, :cond_69

    .line 1065
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "waiting for debugger to settle..."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1066
    :try_start_62
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_65} :catch_66

    .line 1067
    :goto_65
    goto :goto_68

    :catch_66
    move-exception v0

    goto :goto_65

    .line 1072
    .end local v6    # "delta":J
    :goto_68
    goto :goto_42

    .line 1069
    .restart local v6    # "delta":J
    :cond_69
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debugger has settled ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1070
    nop

    .line 1073
    .end local v6    # "delta":J
    :goto_88
    return-void
.end method

.method public static whitelist waitingForDebugger()Z
    .registers 1

    .line 1080
    sget-boolean v0, Landroid/os/Debug;->mWaiting:Z

    return v0
.end method
