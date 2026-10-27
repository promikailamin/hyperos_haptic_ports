.class public Lcom/android/server/wm/WindowTracingPerfetto;
.super Lcom/android/server/wm/WindowTracing;
.source "WindowTracingPerfetto.java"


# instance fields
.field public final mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mDataSource:Lcom/android/server/wm/WindowTracingDataSource;

.field public final mMainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$7hqLGzut_c4jBmiJs_jpiy5t9Ac(Lcom/android/server/wm/WindowTracingPerfetto;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingPerfetto;->lambda$onStop$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$UY1h1HlDpP4vEhtloAZqNUGsisQ(Lcom/android/server/wm/WindowTracingPerfetto;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingPerfetto;->lambda$onStart$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hUckbCMkSumpvgl54TwyKSZQA-g(Lcom/android/server/wm/WindowTracingPerfetto;ZLjava/util/ArrayList;ZLjava/lang/String;Landroid/tracing/perfetto/TracingContext;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/WindowTracingPerfetto;->lambda$log$0(ZLjava/util/ArrayList;ZLjava/lang/String;Landroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)V
    .registers 5

    .line 48
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    const-string v1, "android.windowmanager"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/WindowTracingPerfetto;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/String;)V
    .registers 5

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowTracing;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;)V

    .line 42
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mMainHandler:Landroid/os/Handler;

    .line 55
    new-instance p1, Lcom/android/server/wm/WindowTracingDataSource;

    invoke-direct {p1, p0, p4}, Lcom/android/server/wm/WindowTracingDataSource;-><init>(Lcom/android/server/wm/WindowTracingPerfetto;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mDataSource:Lcom/android/server/wm/WindowTracingDataSource;

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingPerfetto;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "Enabled"

    goto :goto_15

    :cond_13
    const-string v1, "Disabled"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSessions logging \'on frame\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSessions logging \'on transaction\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    add-int/2addr v0, p0

    if-lez v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$log$0(ZLjava/util/ArrayList;ZLjava/lang/String;Landroid/tracing/perfetto/TracingContext;)V
    .registers 16

    .line 122
    invoke-virtual {p5}, Landroid/tracing/perfetto/TracingContext;->getCustomTlsState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;

    const/4 v1, 0x1

    if-eqz p1, :cond_2d

    .line 125
    iget-object p1, v0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    iget p1, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_23

    .line 128
    iget-object p1, v0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {p1, p3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_35

    .line 134
    :cond_1a
    new-instance p1, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda3;

    invoke-direct {p1, p5}, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda3;-><init>(Landroid/tracing/perfetto/TracingContext;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 136
    :cond_23
    iget-object p1, v0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_35

    :cond_2d
    if-eqz p3, :cond_40

    .line 144
    iget-object p1, v0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    iget p1, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    if-eqz p1, :cond_36

    :goto_35
    return-void

    .line 147
    :cond_36
    iget-object p1, v0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 148
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v1, :cond_3f

    goto :goto_40

    :cond_3f
    return-void

    .line 154
    :cond_40
    :goto_40
    invoke-virtual {p5}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v3

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    const-wide p1, 0x10400000008L

    .line 156
    invoke-virtual {v3, p1, p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p1, 0x10b00000070L

    .line 158
    invoke-virtual {v3, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const-wide v1, 0x10b00000006L

    .line 160
    invoke-virtual {v3, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 161
    iget-object p3, v0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    iget v4, p3, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogLevel:I

    move-object v2, p0

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowTracing;->dumpToProto(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;J)V

    .line 162
    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 163
    invoke-virtual {v3, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final synthetic lambda$onStart$1()V
    .registers 2

    .line 204
    const-string v0, "trace.enable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracingPerfetto;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onStop$2()V
    .registers 2

    .line 221
    const-string v0, "trace.enable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracingPerfetto;->log(Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .registers 10

    .line 115
    const-string v1, "WindowTracing"

    :try_start_2
    const-string v0, "Window::log"

    invoke-static {v0}, Landroid/tracing/TracingUtils;->uiTracingSliceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 116
    const-string v0, "trace.enable"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 117
    const-string v0, "onFrame"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 119
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mDataSource:Lcom/android/server/wm/WindowTracingDataSource;

    new-instance v2, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowTracingPerfetto;ZLjava/util/ArrayList;ZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/tracing/perfetto/DataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    const/4 p0, 0x0

    .line 169
    :goto_29
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_43

    .line 170
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 171
    const-string p1, "Stopped session (frequency=SINGLE_DUMP) (postponed stop)"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_40
    .catchall {:try_start_2 .. :try_end_3d} :catchall_50

    add-int/lit8 p0, p0, 0x1

    goto :goto_29

    :catch_40
    move-exception v0

    move-object p0, v0

    goto :goto_47

    .line 176
    :cond_43
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 174
    :goto_47
    :try_start_47
    const-string p1, "Exception while tracing state"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_50

    .line 176
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_50
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 177
    throw p0
.end method

.method public onShellCommand(Landroid/os/ShellCommand;)I
    .registers 2

    .line 80
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 81
    const-string p1, "Shell commands are ignored. Any type of action should be performed through perfetto."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public onStart(Lcom/android/server/wm/WindowTracingDataSource$Config;)V
    .registers 6

    .line 191
    iget v0, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    const-string v1, ")"

    const-string v2, "WindowTracing"

    if-nez v0, :cond_27

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started session (frequency=FRAME, log level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_66

    :cond_27
    const/4 v3, 0x1

    if-ne v0, v3, :cond_49

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started session (frequency=TRANSACTION, log level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_66

    :cond_49
    const/4 v3, 0x2

    if-ne v0, v3, :cond_66

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Started session (frequency=SINGLE_DUMP, log level="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 204
    :cond_66
    :goto_66
    iget-object p1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowTracingPerfetto;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop(Lcom/android/server/wm/WindowTracingDataSource$Instance;)V
    .registers 6

    .line 208
    iget-object v0, p1, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    iget v0, v0, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    const/4 v1, 0x3

    const-string v2, "WindowTracing"

    if-nez v0, :cond_1c

    .line 209
    invoke-virtual {p1}, Landroid/tracing/perfetto/DataSourceInstance;->stopDone()V

    .line 210
    iget-object p1, p1, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 211
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 212
    const-string p0, "Stopped session (frequency=FRAME)"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    const/4 v3, 0x1

    if-ne v0, v3, :cond_32

    .line 214
    invoke-virtual {p1}, Landroid/tracing/perfetto/DataSourceInstance;->stopDone()V

    .line 215
    iget-object p1, p1, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 216
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 217
    const-string p0, "Stopped session (frequency=TRANSACTION)"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    .line 219
    const-string v0, "Triggering log event on stop (frequency=SINGLE_DUMP)"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p1, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 221
    iget-object p1, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowTracingPerfetto$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowTracingPerfetto;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_49
    return-void
.end method

.method public saveForBugreportInternal(Ljava/io/PrintWriter;)V
    .registers 3

    .line 109
    const-string v0, "Tracing snapshot for bugreport must be handled through perfetto"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public shouldLogOnFrame()Z
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnFrame:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLogOnTransaction()Z
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingPerfetto;->mCountSessionsOnTransaction:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public startTraceInternal(Ljava/io/PrintWriter;)V
    .registers 3

    .line 99
    const-string v0, "Tracing must be started through perfetto"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public stopTraceInternal(Ljava/io/PrintWriter;)V
    .registers 3

    .line 104
    const-string v0, "Tracing must be stopped through perfetto"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
