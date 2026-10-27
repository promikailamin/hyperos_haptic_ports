.class Lcom/android/server/wm/WindowTracing;
.super Ljava/lang/Object;
.source "WindowTracing.java"


# static fields
.field private static final BUFFER_CAPACITY_ALL:I = 0x1400000

.field private static final BUFFER_CAPACITY_CRITICAL:I = 0x500000

.field private static final BUFFER_CAPACITY_TRIM:I = 0xa00000

.field private static final MAGIC_NUMBER_VALUE:J = 0x45434152544e4957L

.field private static final TAG:Ljava/lang/String; = "WindowTracing"

.field private static final TRACE_FILENAME:Ljava/lang/String; = "/data/misc/wmtrace/wm_trace.winscope"

.field static final WINSCOPE_EXT:Ljava/lang/String; = ".winscope"


# instance fields
.field private final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mEnabled:Z

.field private final mEnabledLock:Ljava/lang/Object;

.field private volatile mEnabledLockFree:Z

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mLogLevel:I

.field private mLogOnFrame:Z

.field private mScheduled:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTraceFile:Ljava/io/File;

.field private mWindowTracingWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;I)V
    .registers 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "choreographer"    # Landroid/view/Choreographer;
    .param p4, "bufferCapacity"    # I

    .line 97
    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowTracing;-><init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V

    .line 98
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "choreographer"    # Landroid/view/Choreographer;
    .param p4, "globalLock"    # Lcom/android/server/wm/WindowManagerGlobalLock;
    .param p5, "bufferCapacity"    # I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowTracing;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowTracing;->mWindowTracingWhiteList:Ljava/util/ArrayList;

    .line 102
    iput-object p3, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    .line 103
    iput-object p2, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 104
    iput-object p4, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 105
    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 106
    new-instance v1, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v1, p5}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 107
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 109
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracing;->initWhiteList()V

    .line 110
    return-void
.end method

.method static createDefaultAndStartLooper(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)Lcom/android/server/wm/WindowTracing;
    .registers 5
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "choreographer"    # Landroid/view/Choreographer;

    .line 91
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/wm_trace.winscope"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "file":Ljava/io/File;
    new-instance v1, Lcom/android/server/wm/WindowTracing;

    const/high16 v2, 0xa00000

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/android/server/wm/WindowTracing;-><init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;I)V

    return-object v1
.end method

.method private initWhiteList()V
    .registers 4

    .line 114
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    const v1, 0x1070101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "whiteList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mWindowTracingWhiteList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    return-void
.end method

.method private isInWhiteList(I)Z
    .registers 5
    .param p1, "pid"    # I

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_12

    return v1

    .line 123
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mWindowTracingWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 124
    const/4 v1, 0x1

    return v1

    .line 126
    :cond_1c
    return v1

    .line 128
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_1d
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .registers 12
    .param p1, "where"    # Ljava/lang/String;

    .line 350
    const-string/jumbo v0, "traceStateLocked"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 352
    :try_start_8
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 353
    .local v0, "os":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x20b00000002L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 354
    .local v3, "tokenOuter":J
    const-wide v5, 0x10600000001L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 355
    const-wide v5, 0x10900000002L

    invoke-virtual {v0, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 357
    const-wide v5, 0x10b00000003L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 358
    .local v5, "tokenInner":J
    iget-object v7, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_6a
    .catchall {:try_start_8 .. :try_end_36} :catchall_68

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 359
    const-string v8, "dumpDebugLocked"

    invoke-static {v1, v2, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_62

    .line 361
    :try_start_3e
    iget-object v8, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    invoke-virtual {v8, v0, v9}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;I)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_5c

    .line 363
    :try_start_45
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 364
    nop

    .line 365
    monitor-exit v7
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_62

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 366
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 367
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 368
    iget-object v7, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v7, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 369
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5b} :catch_6a
    .catchall {:try_start_4a .. :try_end_5b} :catchall_68

    .line 373
    .end local v0    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "tokenOuter":J
    .end local v5    # "tokenInner":J
    goto :goto_73

    .line 363
    .restart local v0    # "os":Landroid/util/proto/ProtoOutputStream;
    .restart local v3    # "tokenOuter":J
    .restart local v5    # "tokenInner":J
    :catchall_5c
    move-exception v8

    :try_start_5d
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 364
    nop

    .end local v0    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "tokenOuter":J
    .end local v5    # "tokenInner":J
    .end local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .end local p1    # "where":Ljava/lang/String;
    throw v8

    .line 365
    .restart local v0    # "os":Landroid/util/proto/ProtoOutputStream;
    .restart local v3    # "tokenOuter":J
    .restart local v5    # "tokenInner":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .restart local p1    # "where":Ljava/lang/String;
    :catchall_62
    move-exception v8

    monitor-exit v7
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_62

    :try_start_64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .end local p1    # "where":Ljava/lang/String;
    throw v8
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_68} :catch_6a
    .catchall {:try_start_64 .. :try_end_68} :catchall_68

    .line 373
    .end local v0    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "tokenOuter":J
    .end local v5    # "tokenInner":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowTracing;
    .restart local p1    # "where":Ljava/lang/String;
    :catchall_68
    move-exception v0

    goto :goto_78

    .line 370
    :catch_6a
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6b
    const-string v3, "WindowTracing"

    const-string v4, "Exception while tracing state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_68

    .line 373
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_73
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 374
    nop

    .line 375
    return-void

    .line 373
    :goto_78
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 374
    throw v0
.end method

.method private logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .line 378
    const-string v0, "WindowTracing"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz p1, :cond_d

    .line 380
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 383
    :cond_d
    return-void
.end method

.method private schedule()V
    .registers 3

    .line 336
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z

    if-eqz v0, :cond_5

    .line 337
    return-void

    .line 340
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 342
    return-void
.end method

.method private setBufferCapacity(ILjava/io/PrintWriter;)V
    .registers 5
    .param p1, "capacity"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing buffer capacity to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    .line 229
    return-void
.end method

.method private setLogFrequency(ZLjava/io/PrintWriter;)V
    .registers 5
    .param p1, "onFrame"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log frequency to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    if-eqz p1, :cond_10

    const-string v1, "frame"

    goto :goto_13

    :cond_10
    const-string/jumbo v1, "transaction"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 223
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    .line 224
    return-void
.end method

.method private setLogLevel(ILjava/io/PrintWriter;)V
    .registers 5
    .param p1, "logLevel"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log level to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 202
    iput p1, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    .line 204
    packed-switch p1, :pswitch_data_30

    goto :goto_2e

    .line 214
    :pswitch_1c
    const/high16 v0, 0x500000

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    goto :goto_2e

    .line 210
    :pswitch_22
    const/high16 v0, 0xa00000

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 211
    goto :goto_2e

    .line 206
    :pswitch_28
    const/high16 v0, 0x1400000

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 207
    nop

    .line 218
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_28
        :pswitch_22
        :pswitch_1c
    .end packed-switch
.end method

.method private writeTraceToFileLocked()V
    .registers 8

    .line 391
    const-wide/16 v0, 0x20

    :try_start_2
    const-string/jumbo v2, "writeTraceToFileLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 392
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 393
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10600000001L

    const-wide v5, 0x45434152544e4957L    # 4.655612620390422E25

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 394
    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v4, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_21} :catch_24
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    .line 398
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_2d

    :catchall_22
    move-exception v2

    goto :goto_32

    .line 395
    :catch_24
    move-exception v2

    .line 396
    .local v2, "e":Ljava/io/IOException;
    :try_start_25
    const-string v3, "WindowTracing"

    const-string v4, "Unable to write buffer to file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_22

    .line 398
    nop

    .end local v2    # "e":Ljava/io/IOException;
    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 399
    nop

    .line 400
    return-void

    .line 398
    :goto_32
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 399
    throw v2
.end method


# virtual methods
.method getStatus()Ljava/lang/String;
    .registers 3

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "Enabled"

    goto :goto_16

    :cond_14
    const-string v1, "Disabled"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLog level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 311
    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    return-object v0
.end method

.method isEnabled()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    return v0
.end method

.method synthetic lambda$new$0$com-android-server-wm-WindowTracing(J)V
    .registers 4
    .param p1, "frameTimeNanos"    # J

    .line 78
    const-string/jumbo v0, "onFrame"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    return-void
.end method

.method logState(Ljava/lang/String;)V
    .registers 3
    .param p1, "where"    # Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 322
    return-void

    .line 325
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    if-eqz v0, :cond_f

    .line 326
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracing;->schedule()V

    goto :goto_12

    .line 328
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 330
    :goto_12
    return-void
.end method

.method onShellCommand(Landroid/os/ShellCommand;)I
    .registers 10
    .param p1, "shell"    # Landroid/os/ShellCommand;

    .line 236
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 237
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_146

    :cond_13
    goto :goto_6a

    :sswitch_14
    const-string/jumbo v2, "transaction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x5

    goto :goto_6b

    :sswitch_1f
    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v6

    goto :goto_6b

    :sswitch_2a
    const-string v2, "level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x6

    goto :goto_6b

    :sswitch_34
    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x4

    goto :goto_6b

    :sswitch_3e
    const-string/jumbo v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v5

    goto :goto_6b

    :sswitch_49
    const-string/jumbo v2, "size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x7

    goto :goto_6b

    :sswitch_54
    const-string/jumbo v2, "save-for-bugreport"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v3

    goto :goto_6b

    :sswitch_5f
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x3

    goto :goto_6b

    :goto_6a
    move v2, v4

    :goto_6b
    packed-switch v2, :pswitch_data_168

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    const-string v2, "Window manager trace options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    const-string v2, "  start: Start logging"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    const-string v2, "  stop: Stop logging"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    const-string v2, "  save-for-bugreport: Save logging data to file if it\'s running."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    const-string v2, "  frame: Log trace once per frame"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    const-string v2, "  transaction: Log each transaction"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    const-string v2, "  size: Set the maximum log size (in KB)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    const-string v2, "  status: Print trace status"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    const-string v2, "  level [lvl]: Set the log level between"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    const-string v2, "    lvl may be one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    const-string v2, "      critical: Only visible windows with reduced information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    const-string v2, "      trim: All windows with reduced"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    const-string v2, "      all: All window and information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    return v4

    .line 282
    :pswitch_c6
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 283
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 284
    return v6

    .line 260
    :pswitch_d9
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "logLevelStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_17c

    :cond_e8
    goto :goto_107

    :sswitch_e9
    const-string v7, "critical"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e8

    move v4, v3

    goto :goto_107

    :sswitch_f3
    const-string/jumbo v7, "trim"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e8

    move v4, v5

    goto :goto_107

    :sswitch_fe
    const-string v7, "all"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e8

    move v4, v6

    :goto_107
    packed-switch v4, :pswitch_data_18a

    .line 275
    invoke-direct {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_11a

    .line 271
    :pswitch_10e
    invoke-direct {p0, v3, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 272
    goto :goto_11a

    .line 267
    :pswitch_112
    invoke-direct {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 268
    goto :goto_11a

    .line 263
    :pswitch_116
    invoke-direct {p0, v6, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 264
    nop

    .line 279
    :goto_11a
    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 280
    return v6

    .line 256
    .end local v2    # "logLevelStr":Ljava/lang/String;
    :pswitch_120
    invoke-direct {p0, v6, v0}, Lcom/android/server/wm/WindowTracing;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 257
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 258
    return v6

    .line 252
    :pswitch_129
    invoke-direct {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 253
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 254
    return v6

    .line 249
    :pswitch_132
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 250
    return v6

    .line 246
    :pswitch_13a
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->saveForBugreport(Ljava/io/PrintWriter;)V

    .line 247
    return v6

    .line 243
    :pswitch_13e
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 244
    return v6

    .line 240
    :pswitch_142
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 241
    return v6

    :sswitch_data_146
    .sparse-switch
        -0x3532300e -> :sswitch_5f
        -0x174ab7ac -> :sswitch_54
        0x35e001 -> :sswitch_49
        0x360802 -> :sswitch_3e
        0x5d2a96d -> :sswitch_34
        0x6219b84 -> :sswitch_2a
        0x68ac462 -> :sswitch_1f
        0x7fa0d2de -> :sswitch_14
    .end sparse-switch

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_142
        :pswitch_13e
        :pswitch_13a
        :pswitch_132
        :pswitch_129
        :pswitch_120
        :pswitch_d9
        :pswitch_c6
    .end packed-switch

    :sswitch_data_17c
    .sparse-switch
        0x179a1 -> :sswitch_fe
        0x367422 -> :sswitch_f3
        0x745b779f -> :sswitch_e9
    .end sparse-switch

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_116
        :pswitch_112
        :pswitch_10e
    .end packed-switch
.end method

.method saveForBugreport(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    if-nez v1, :cond_9

    .line 186
    monitor-exit v0

    return-void

    .line 188
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Waiting for traces to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracing;->writeTraceToFileLocked()V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start tracing to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 195
    iput-boolean v2, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 196
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_85

    throw v1
.end method

.method startTrace(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 144
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_3a

    .line 145
    const-string/jumbo v0, "trace.enable"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 146
    return-void

    .line 144
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method stopTrace(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Waiting for traces to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 163
    nop

    .line 167
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracing;->writeTraceToFileLocked()V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 169
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_52

    .line 170
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    .line 171
    return-void

    .line 169
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1
.end method
