.class public abstract Lcom/android/server/wm/WindowTracing;
.super Ljava/lang/Object;
.source "WindowTracing.java"


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$PCVd_OZa7AR1VUIpYvVBTxPVKdE(Lcom/android/server/wm/WindowTracing;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracing;->lambda$new$0(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;)V
    .registers 6

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowTracing;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    iput-object p2, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    .line 66
    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 67
    iput-object p3, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static createDefaultAndStartLooper(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)Lcom/android/server/wm/WindowTracing;
    .registers 3

    .line 60
    new-instance v0, Lcom/android/server/wm/WindowTracingPerfetto;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowTracingPerfetto;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)V

    return-object v0
.end method


# virtual methods
.method public dumpToProto(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;J)V
    .registers 11

    .line 155
    const-string v0, "traceStateLocked"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-wide v3, 0x10600000001L

    .line 157
    :try_start_c
    invoke-virtual {p1, v3, v4, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10900000002L

    .line 158
    invoke-virtual {p1, p4, p5, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p3, 0x10b00000003L

    .line 160
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p3

    .line 161
    iget-object p5, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p5
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_38
    .catchall {:try_start_c .. :try_end_26} :catchall_36

    .line 162
    :try_start_26
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;I)V

    .line 163
    monitor-exit p5
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_3a

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 164
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_32} :catch_38
    .catchall {:try_start_2c .. :try_end_32} :catchall_36

    .line 168
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_36
    move-exception p0

    goto :goto_4b

    :catch_38
    move-exception p0

    goto :goto_40

    :catchall_3a
    move-exception p0

    .line 163
    :try_start_3b
    monitor-exit p5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_40} :catch_38
    .catchall {:try_start_3c .. :try_end_40} :catchall_36

    .line 166
    :goto_40
    :try_start_40
    const-string p1, "WindowTracing"

    const-string p2, "Exception while tracing state"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_36

    .line 168
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 169
    throw p0
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public abstract isEnabled()Z
.end method

.method public final synthetic lambda$new$0(J)V
    .registers 3

    .line 50
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->onFrame()V

    return-void
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 173
    const-string p0, "WindowTracing"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d

    .line 175
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_d
    return-void
.end method

.method public logState(Ljava/lang/String;)V
    .registers 3

    .line 116
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_19

    .line 120
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->shouldLogOnTransaction()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 124
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->shouldLogOnFrame()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 125
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->schedule()V

    :cond_19
    :goto_19
    return-void
.end method

.method public final onFrame()V
    .registers 2

    .line 141
    const-string v0, "onFrame"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public abstract onShellCommand(Landroid/os/ShellCommand;)I
.end method

.method public saveForBugreport(Ljava/io/PrintWriter;)V
    .registers 3

    .line 95
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 96
    const-string v0, "Error: Tracing is not supported on non debuggable builds."

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->saveForBugreportInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public abstract saveForBugreportInternal(Ljava/io/PrintWriter;)V
.end method

.method public final schedule()V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 137
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public abstract shouldLogOnFrame()Z
.end method

.method public abstract shouldLogOnTransaction()Z
.end method

.method public startTrace(Ljava/io/PrintWriter;)V
    .registers 3

    .line 71
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 72
    const-string v0, "Error: Tracing is not supported on non debuggable builds."

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->startTraceInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public abstract startTraceInternal(Ljava/io/PrintWriter;)V
.end method

.method public stopTrace(Ljava/io/PrintWriter;)V
    .registers 3

    .line 79
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 80
    const-string v0, "Error: Tracing is not supported on non debuggable builds."

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->stopTraceInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public abstract stopTraceInternal(Ljava/io/PrintWriter;)V
.end method
