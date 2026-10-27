.class public Lcom/android/server/pm/ParallelPackageParser;
.super Ljava/lang/Object;
.source "ParallelPackageParser.java"


# instance fields
.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public volatile mInterruptedInThread:Ljava/lang/String;

.field public final mPackageParser:Lcom/android/internal/pm/parsing/PackageParser2;

.field public final mQueue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public static synthetic $r8$lambda$emkxoYaw1Ep3JTEL3MsSosv7fPA(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser;->lambda$submit$0(Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rG2AgiDLJn5T2RTmd2_m26uw_l4(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser;->lambda$orderedSubmit$1(Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 62
    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParser:Lcom/android/internal/pm/parsing/PackageParser2;

    .line 63
    iput-object p2, p0, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static makeExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 3

    .line 53
    const-string/jumbo v0, "package-parsing-thread"

    const/4 v1, -0x2

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic lambda$orderedSubmit$1(Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .registers 7

    .line 149
    new-instance v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    invoke-direct {v0}, Lcom/android/server/pm/ParallelPackageParser$ParseResult;-><init>()V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parallel parsePackage ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 152
    :try_start_22
    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 153
    iput-object p2, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanParams:Lcom/android/server/pm/InitAppsHelper$ScanParams;

    .line 154
    iget p2, p2, Lcom/android/server/pm/InitAppsHelper$ScanParams;->parseFlags:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser;->parsePackage(Ljava/io/File;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_32

    .line 158
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_32
    move-exception p0

    .line 156
    :try_start_33
    iput-object p0, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_39

    .line 158
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_39
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 159
    throw p0
.end method

.method public final synthetic lambda$submit$0(Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V
    .registers 7

    .line 108
    new-instance v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    invoke-direct {v0}, Lcom/android/server/pm/ParallelPackageParser$ParseResult;-><init>()V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parallel parsePackage ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 111
    :try_start_22
    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 112
    iput-object p2, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanParams:Lcom/android/server/pm/InitAppsHelper$ScanParams;

    .line 113
    iget p2, p2, Lcom/android/server/pm/InitAppsHelper$ScanParams;->parseFlags:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser;->parsePackage(Ljava/io/File;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_32

    .line 117
    :goto_2e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_36

    :catchall_32
    move-exception p1

    .line 115
    :try_start_33
    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_4e

    goto :goto_2e

    .line 120
    :goto_36
    :try_start_36
    iget-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_4d

    .line 122
    :catch_3c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    :goto_4d
    return-void

    :catchall_4e
    move-exception p0

    .line 117
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 118
    throw p0
.end method

.method public orderedSubmit(Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)Lcom/android/server/pm/ParallelPackageParser$OrderedResult;
    .registers 6

    .line 148
    new-instance v0, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;

    iget-object v1, p0, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;-><init>(Ljava/io/File;Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public parsePackage(Ljava/io/File;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 168
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParser:Lcom/android/internal/pm/parsing/PackageParser2;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p0
    :try_end_7
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    .line 170
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    iget p2, p0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public submit(Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .registers 4

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 93
    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    return-object p0

    .line 91
    :cond_d
    new-instance v0, Ljava/lang/InterruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception p0

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
