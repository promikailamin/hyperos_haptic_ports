.class public Landroid/os/BinderAllocationTracker;
.super Landroid/os/BinderStub;
.source "BinderAllocationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BinderAllocationTracker$Backtrace;,
        Landroid/os/BinderAllocationTracker$LogPrinterWriter;,
        Landroid/os/BinderAllocationTracker$MinHeap;,
        Landroid/os/BinderAllocationTracker$Allocation;,
        Landroid/os/BinderAllocationTracker$Filter;
    }
.end annotation


# static fields
.field private static final blacklist MAX_BACKTRACE_SIZE:I = 0x1f4

.field private static final blacklist sAllocations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/BinderAllocationTracker$Backtrace;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Binder;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile blacklist mTracking:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/os/BinderAllocationTracker;->sAllocations:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/BinderStub;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/BinderAllocationTracker;->mTracking:Z

    return-void
.end method

.method private static blacklist clearDeadBindersLocked(Landroid/os/Binder;)Z
    .registers 4
    .param p0, "newBinder"    # Landroid/os/Binder;

    .line 203
    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 204
    .local v1, "exists":[Z
    new-instance v2, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda0;-><init>(Landroid/os/Binder;[Z)V

    invoke-static {v2, v0}, Landroid/os/BinderAllocationTracker;->iterateBindersLocked(Landroid/os/BinderAllocationTracker$Filter;Z)V

    .line 210
    const/4 v0, 0x0

    aget-boolean v0, v1, v0

    return v0
.end method

.method private static blacklist currentProcessName()Ljava/lang/String;
    .registers 2

    .line 226
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "process":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 228
    return-object v0

    .line 230
    :cond_7
    const-string v1, "unknown"

    return-object v1
.end method

.method private static blacklist doDump(Landroid/os/BinderAllocationTracker$LogPrinterWriter;)V
    .registers 12
    .param p0, "printer"    # Landroid/os/BinderAllocationTracker$LogPrinterWriter;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/BinderAllocationTracker;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Landroid/os/BinderAllocationTracker;->dumpSortedDebugDescriptors(Landroid/os/BinderAllocationTracker$LogPrinterWriter;)V

    .line 117
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v1, "Traces:"

    invoke-virtual {p0, v1}, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->println(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Landroid/os/BinderAllocationTracker;->getTopAllocations()[Landroid/os/BinderAllocationTracker$Allocation;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_4a
    if-ge v4, v2, :cond_86

    aget-object v5, v1, v4

    .line 120
    .local v5, "alloc":Landroid/os/BinderAllocationTracker$Allocation;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Landroid/os/BinderAllocationTracker$Allocation;->interfaces:Ljava/util/HashMap;

    invoke-static {v7}, Landroid/os/BinderAllocationTracker;->sortInterfaces(Ljava/util/HashMap;)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " were allocated by:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->println(Ljava/lang/String;)V

    .line 122
    iget-object v6, v5, Landroid/os/BinderAllocationTracker$Allocation;->backtrace:[Ljava/lang/StackTraceElement;

    array-length v7, v6

    move v8, v3

    :goto_72
    if-ge v8, v7, :cond_80

    aget-object v9, v6, v8

    .line 123
    .local v9, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->println(Ljava/lang/String;)V

    .line 122
    .end local v9    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v8, v8, 0x1

    goto :goto_72

    .line 125
    :cond_80
    invoke-virtual {p0, v0}, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->println(Ljava/lang/String;)V

    .line 119
    .end local v5    # "alloc":Landroid/os/BinderAllocationTracker$Allocation;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 127
    :cond_86
    invoke-virtual {p0, v0}, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->flush()V

    .line 129
    return-void
.end method

.method private static blacklist dumpSortedDebugDescriptors(Landroid/os/BinderAllocationTracker$LogPrinterWriter;)V
    .registers 6
    .param p0, "printer"    # Landroid/os/BinderAllocationTracker$LogPrinterWriter;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v0, "interfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Landroid/os/BinderAllocationTracker;->sAllocations:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 187
    :try_start_8
    new-instance v2, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashMap;)V

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/BinderAllocationTracker;->iterateBindersLocked(Landroid/os/BinderAllocationTracker$Filter;Z)V

    .line 193
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_4d

    .line 194
    const-string v1, "Binder descriptor histogram"

    invoke-virtual {p0, v1}, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->println(Ljava/lang/String;)V

    .line 195
    invoke-static {v0}, Landroid/os/BinderAllocationTracker;->sortInterfaces(Ljava/util/HashMap;)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object v1

    .line 196
    .local v1, "sorted":[Landroid/os/BinderProxy$InterfaceCount;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v3, v1

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BinderAllocationTracker$LogPrinterWriter;->println(Ljava/lang/String;)V

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 199
    .end local v2    # "i":I
    :cond_4c
    return-void

    .line 193
    .end local v1    # "sorted":[Landroid/os/BinderProxy$InterfaceCount;
    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method private static blacklist getDebugDescriptor(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "desc":Ljava/lang/String;
    instance-of v1, p0, Landroid/os/Binder;

    if-eqz v1, :cond_c

    .line 216
    move-object v1, p0

    check-cast v1, Landroid/os/Binder;

    invoke-virtual {v1}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_c
    if-nez v0, :cond_16

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getTopAllocations()[Landroid/os/BinderAllocationTracker$Allocation;
    .registers 5

    .line 133
    new-instance v0, Landroid/os/BinderAllocationTracker$MinHeap;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/BinderAllocationTracker$MinHeap;-><init>(ILandroid/os/BinderAllocationTracker$MinHeap-IA;)V

    .line 134
    .local v0, "minHeap":Landroid/os/BinderAllocationTracker$MinHeap;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/BinderAllocationTracker$Allocation;

    new-instance v3, Landroid/os/BinderAllocationTracker$Allocation;

    invoke-direct {v3, v2}, Landroid/os/BinderAllocationTracker$Allocation;-><init>([Ljava/lang/StackTraceElement;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 135
    .local v1, "prevAlloc":[Landroid/os/BinderAllocationTracker$Allocation;
    sget-object v3, Landroid/os/BinderAllocationTracker;->sAllocations:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 136
    :try_start_16
    new-instance v4, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v0}, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda3;-><init>([Landroid/os/BinderAllocationTracker$Allocation;Landroid/os/BinderAllocationTracker$MinHeap;)V

    invoke-static {v4, v2}, Landroid/os/BinderAllocationTracker;->iterateBindersLocked(Landroid/os/BinderAllocationTracker$Filter;Z)V

    .line 150
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_2f

    .line 152
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/os/BinderAllocationTracker$Allocation;->backtrace:[Ljava/lang/StackTraceElement;

    if-eqz v3, :cond_2a

    .line 153
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/os/BinderAllocationTracker$MinHeap;->add(Landroid/os/BinderAllocationTracker$Allocation;)V

    .line 155
    :cond_2a
    invoke-virtual {v0}, Landroid/os/BinderAllocationTracker$MinHeap;->toSortedArray()[Landroid/os/BinderAllocationTracker$Allocation;

    move-result-object v2

    return-object v2

    .line 150
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method private blacklist isBeingTracked()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Landroid/os/BinderAllocationTracker;->mTracking:Z

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist iterateBindersLocked(Landroid/os/BinderAllocationTracker$Filter;Z)V
    .registers 9
    .param p0, "callback"    # Landroid/os/BinderAllocationTracker$Filter;
    .param p1, "removeDead"    # Z

    .line 164
    sget-object v0, Landroid/os/BinderAllocationTracker;->sAllocations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 165
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_50

    .line 166
    sget-object v2, Landroid/os/BinderAllocationTracker;->sAllocations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 167
    .local v3, "binderRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/Binder;>;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BinderAllocationTracker$Backtrace;

    .line 168
    .local v2, "backtrace":Landroid/os/BinderAllocationTracker$Backtrace;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1e
    if-ltz v4, :cond_40

    .line 169
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Binder;

    .line 170
    .local v5, "binder":Landroid/os/Binder;
    if-nez v5, :cond_34

    .line 171
    if-eqz p1, :cond_3d

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3d

    .line 174
    :cond_34
    if-eqz p0, :cond_3d

    invoke-interface {p0, v2, v5}, Landroid/os/BinderAllocationTracker$Filter;->accept(Landroid/os/BinderAllocationTracker$Backtrace;Landroid/os/Binder;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 175
    return-void

    .line 168
    .end local v5    # "binder":Landroid/os/Binder;
    :cond_3d
    :goto_3d
    add-int/lit8 v4, v4, -0x1

    goto :goto_1e

    .line 178
    .end local v4    # "j":I
    :cond_40
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4d

    if-eqz p1, :cond_4d

    .line 179
    sget-object v4, Landroid/os/BinderAllocationTracker;->sAllocations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 165
    .end local v2    # "backtrace":Landroid/os/BinderAllocationTracker$Backtrace;
    .end local v3    # "binderRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/Binder;>;>;"
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 182
    .end local v1    # "i":I
    :cond_50
    return-void
.end method

.method static synthetic blacklist lambda$clearDeadBindersLocked$3(Landroid/os/Binder;[ZLandroid/os/BinderAllocationTracker$Backtrace;Landroid/os/Binder;)Z
    .registers 6
    .param p0, "newBinder"    # Landroid/os/Binder;
    .param p1, "exists"    # [Z
    .param p2, "trace"    # Landroid/os/BinderAllocationTracker$Backtrace;
    .param p3, "binder"    # Landroid/os/Binder;

    .line 205
    const/4 v0, 0x0

    if-ne p0, p3, :cond_6

    .line 206
    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 208
    :cond_6
    return v0
.end method

.method static synthetic blacklist lambda$dump$0(Landroid/os/BinderAllocationTracker$LogPrinterWriter;Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p0, "printer"    # Landroid/os/BinderAllocationTracker$LogPrinterWriter;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 104
    :try_start_0
    invoke-static {p0}, Landroid/os/BinderAllocationTracker;->doDump(Landroid/os/BinderAllocationTracker$LogPrinterWriter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_a
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 108
    nop

    :goto_4
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 109
    goto :goto_14

    .line 108
    :catchall_8
    move-exception v0

    goto :goto_15

    .line 105
    :catch_a
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b
    const-string v1, "Binder"

    const-string v2, "failed to dump binder allocation records"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_8

    .line 108
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 110
    :goto_14
    return-void

    .line 108
    :goto_15
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 109
    throw v0
.end method

.method static synthetic blacklist lambda$dumpSortedDebugDescriptors$2(Ljava/util/HashMap;Landroid/os/BinderAllocationTracker$Backtrace;Landroid/os/Binder;)Z
    .registers 7
    .param p0, "interfaces"    # Ljava/util/HashMap;
    .param p1, "trace"    # Landroid/os/BinderAllocationTracker$Backtrace;
    .param p2, "binder"    # Landroid/os/Binder;

    .line 188
    invoke-static {p2}, Landroid/os/BinderAllocationTracker;->getDebugDescriptor(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 190
    .local v2, "count":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return v1
.end method

.method static synthetic blacklist lambda$getTopAllocations$1([Landroid/os/BinderAllocationTracker$Allocation;Landroid/os/BinderAllocationTracker$MinHeap;Landroid/os/BinderAllocationTracker$Backtrace;Landroid/os/Binder;)Z
    .registers 10
    .param p0, "prevAlloc"    # [Landroid/os/BinderAllocationTracker$Allocation;
    .param p1, "minHeap"    # Landroid/os/BinderAllocationTracker$MinHeap;
    .param p2, "trace"    # Landroid/os/BinderAllocationTracker$Backtrace;
    .param p3, "binder"    # Landroid/os/Binder;

    .line 137
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 138
    .local v1, "alloc":Landroid/os/BinderAllocationTracker$Allocation;
    iget-object v2, v1, Landroid/os/BinderAllocationTracker$Allocation;->backtrace:[Ljava/lang/StackTraceElement;

    iget-object v3, p2, Landroid/os/BinderAllocationTracker$Backtrace;->backtrace:[Ljava/lang/StackTraceElement;

    if-eq v2, v3, :cond_1a

    .line 139
    iget-object v2, v1, Landroid/os/BinderAllocationTracker$Allocation;->backtrace:[Ljava/lang/StackTraceElement;

    if-eqz v2, :cond_10

    .line 140
    invoke-virtual {p1, v1}, Landroid/os/BinderAllocationTracker$MinHeap;->add(Landroid/os/BinderAllocationTracker$Allocation;)V

    .line 142
    :cond_10
    new-instance v2, Landroid/os/BinderAllocationTracker$Allocation;

    iget-object v3, p2, Landroid/os/BinderAllocationTracker$Backtrace;->backtrace:[Ljava/lang/StackTraceElement;

    invoke-direct {v2, v3}, Landroid/os/BinderAllocationTracker$Allocation;-><init>([Ljava/lang/StackTraceElement;)V

    move-object v1, v2

    aput-object v2, p0, v0

    .line 144
    :cond_1a
    invoke-static {p3}, Landroid/os/BinderAllocationTracker;->getDebugDescriptor(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "descriptor":Ljava/lang/String;
    iget-object v3, v1, Landroid/os/BinderAllocationTracker$Allocation;->interfaces:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 146
    .local v3, "count":Ljava/lang/Integer;
    iget-object v4, v1, Landroid/os/BinderAllocationTracker$Allocation;->interfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget v4, v1, Landroid/os/BinderAllocationTracker$Allocation;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/os/BinderAllocationTracker$Allocation;->count:I

    .line 148
    return v0
.end method

.method static synthetic blacklist lambda$sortInterfaces$4(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4
    .param p0, "a"    # Ljava/util/Map$Entry;
    .param p1, "b"    # Ljava/util/Map$Entry;

    .line 238
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private static blacklist sortInterfaces(Ljava/util/HashMap;)[Landroid/os/BinderProxy$InterfaceCount;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/os/BinderProxy$InterfaceCount;"
        }
    .end annotation

    .line 235
    .local p0, "interfaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 237
    .local v0, "sorted":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 239
    array-length v1, v0

    new-array v1, v1, [Landroid/os/BinderProxy$InterfaceCount;

    .line 240
    .local v1, "ifaceCounts":[Landroid/os/BinderProxy$InterfaceCount;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v3, v0

    if-ge v2, v3, :cond_3d

    .line 241
    new-instance v3, Landroid/os/BinderProxy$InterfaceCount;

    aget-object v4, v0, v2

    .line 242
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v5, v0, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/os/BinderProxy$InterfaceCount;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v2

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 244
    .end local v2    # "i":I
    :cond_3d
    return-object v1
.end method


# virtual methods
.method public blacklist dump(Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 91
    if-nez p1, :cond_3

    .line 92
    return-void

    .line 94
    :cond_3
    invoke-virtual {p0}, Landroid/os/BinderAllocationTracker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 95
    return-void

    .line 97
    :cond_a
    invoke-direct {p0}, Landroid/os/BinderAllocationTracker;->isBeingTracked()Z

    move-result v0

    if-nez v0, :cond_11

    .line 98
    return-void

    .line 100
    :cond_11
    new-instance v0, Landroid/os/BinderAllocationTracker$LogPrinterWriter;

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    .line 101
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Landroid/os/BinderAllocationTracker$LogPrinterWriter;-><init>(Ljava/io/PrintWriter;)V

    .line 102
    .local v0, "printer":Landroid/os/BinderAllocationTracker$LogPrinterWriter;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Landroid/os/BinderAllocationTracker$$ExternalSyntheticLambda2;-><init>(Landroid/os/BinderAllocationTracker$LogPrinterWriter;Landroid/os/ParcelFileDescriptor;)V

    const-string v3, "BinderAllocationTracker"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public blacklist startTracking()V
    .registers 2

    .line 44
    invoke-virtual {p0}, Landroid/os/BinderAllocationTracker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/BinderAllocationTracker;->mTracking:Z

    .line 47
    :cond_9
    return-void
.end method

.method public blacklist stopTracking()V
    .registers 3

    .line 51
    iget-boolean v0, p0, Landroid/os/BinderAllocationTracker;->mTracking:Z

    if-eqz v0, :cond_12

    .line 52
    sget-object v0, Landroid/os/BinderAllocationTracker;->sAllocations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 53
    :try_start_7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 54
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/BinderAllocationTracker;->mTracking:Z

    goto :goto_12

    .line 54
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1

    .line 57
    :cond_12
    :goto_12
    return-void
.end method

.method blacklist track(Landroid/os/Binder;)V
    .registers 6
    .param p1, "newBinder"    # Landroid/os/Binder;

    .line 66
    invoke-virtual {p0}, Landroid/os/BinderAllocationTracker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 67
    return-void

    .line 70
    :cond_7
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-nez v0, :cond_e

    .line 71
    return-void

    .line 73
    :cond_e
    invoke-direct {p0}, Landroid/os/BinderAllocationTracker;->isBeingTracked()Z

    move-result v0

    if-nez v0, :cond_15

    .line 74
    return-void

    .line 76
    :cond_15
    new-instance v0, Landroid/os/BinderAllocationTracker$Backtrace;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BinderAllocationTracker$Backtrace;-><init>([Ljava/lang/StackTraceElement;)V

    .line 77
    .local v0, "backtrace":Landroid/os/BinderAllocationTracker$Backtrace;
    sget-object v1, Landroid/os/BinderAllocationTracker;->sAllocations:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 78
    :try_start_26
    invoke-static {p1}, Landroid/os/BinderAllocationTracker;->clearDeadBindersLocked(Landroid/os/Binder;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 79
    monitor-exit v1

    return-void

    .line 81
    :cond_2e
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 82
    .local v2, "binderRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/Binder;>;>;"
    if-nez v2, :cond_3f

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 84
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_3f
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    nop

    .end local v2    # "binderRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/Binder;>;>;"
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_26 .. :try_end_4c} :catchall_4a

    throw v2
.end method
