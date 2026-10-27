.class public Lcom/android/server/wm/PerfettoTransitionTracer;
.super Ljava/lang/Object;
.source "PerfettoTransitionTracer.java"

# interfaces
.implements Lcom/android/server/wm/TransitionTracer;


# instance fields
.field public final mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mDataSource:Landroid/tracing/transition/TransitionDataSource;


# direct methods
.method public static synthetic $r8$lambda$H5wVlqeH1DTkwv-Szsq8DHh1DTk(Lcom/android/server/wm/Transition;Landroid/tracing/perfetto/TracingContext;)V
    .registers 8

    .line 159
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p1

    const-wide v0, 0x10b00000060L

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 163
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v2, p0, Lcom/android/server/wm/TransitionController$Logger;->mAbortTimeNs:J

    const-wide v4, 0x10300000008L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$JZkCQNdivAkAsLS9zDPgPjXKvwM(Lcom/android/server/wm/PerfettoTransitionTracer;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/tracing/perfetto/TracingContext;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/PerfettoTransitionTracer;->lambda$doLogSentTransition$1(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JtzJffuPDPLiddD6poCsLwR5bbU(Lcom/android/server/wm/Transition;Landroid/tracing/perfetto/TracingContext;)V
    .registers 8

    .line 126
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p1

    const-wide v0, 0x10b00000060L

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 130
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v2, p0, Lcom/android/server/wm/TransitionController$Logger;->mFinishTimeNs:J

    const-wide v4, 0x10300000009L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$TE1SY5-YqI6jeItAkU2z7hG8UjU()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$YxztuhFFk_HN26p2zP9tP57N4EA(Lcom/android/server/wm/StartingData;Landroid/tracing/perfetto/TracingContext;)V
    .registers 8

    .line 186
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p1

    const-wide v0, 0x10b00000060L

    .line 188
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 189
    iget p0, p0, Lcom/android/server/wm/StartingData;->mTransitionId:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10300000011L

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 190
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance v1, Landroid/tracing/transition/TransitionDataSource;

    .line 40
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v3, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda1;-><init>()V

    .line 41
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-direct {v1, v2, v3, v4}, Landroid/tracing/transition/TransitionDataSource;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    .line 44
    sget-object p0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {p0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 45
    new-instance p0, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {p0}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    const/4 v0, 0x2

    .line 47
    invoke-virtual {p0, v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object p0

    .line 50
    invoke-virtual {v1, p0}, Landroid/tracing/transition/TransitionDataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    return-void
.end method


# virtual methods
.method public final addTransitionTargetsToProto(Landroid/util/proto/ProtoOutputStream;Ljava/util/ArrayList;)V
    .registers 11

    const/4 p0, 0x0

    .line 220
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_5a

    .line 221
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 224
    iget-object v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 225
    iget-object v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v1

    goto :goto_21

    :cond_20
    const/4 v1, -0x1

    .line 229
    :goto_21
    iget-object v2, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x20b0000000eL

    .line 231
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    .line 232
    iget v7, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyMode:I

    invoke-virtual {p1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000004L

    .line 233
    iget v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyFlags:I

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000002L

    .line 234
    invoke-virtual {p1, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000003L

    .line 235
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 236
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5a
    return-void
.end method

.method public final doLogAbortedTransition(Lcom/android/server/wm/Transition;)V
    .registers 3

    .line 158
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/Transition;)V

    invoke-virtual {p0, v0}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method public final doLogFinishTransition(Lcom/android/server/wm/Transition;)V
    .registers 3

    .line 125
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/Transition;)V

    invoke-virtual {p0, v0}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method public doLogRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V
    .registers 3

    .line 185
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/StartingData;)V

    invoke-virtual {p0, v0}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method public final doLogSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    new-instance v1, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/PerfettoTransitionTracer;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method public isTracing()Z
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$doLogSentTransition$1(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/tracing/perfetto/TracingContext;)V
    .registers 10

    .line 82
    invoke-virtual {p3}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p3

    const-wide v0, 0x10b00000060L

    .line 84
    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 86
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v4

    invoke-virtual {p3, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 87
    iget-object v2, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v2, v2, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p3, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 89
    iget-object v2, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v2, v2, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p3, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 91
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getStartTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v2

    const-wide v4, 0x1040000000aL

    .line 90
    invoke-virtual {p3, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 93
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getFinishTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v2

    const-wide v4, 0x1040000000bL

    .line 92
    invoke-virtual {p3, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1050000000dL

    .line 94
    iget v4, p1, Lcom/android/server/wm/Transition;->mType:I

    invoke-virtual {p3, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000010L

    .line 95
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result p1

    invoke-virtual {p3, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 97
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/PerfettoTransitionTracer;->addTransitionTargetsToProto(Landroid/util/proto/ProtoOutputStream;Ljava/util/ArrayList;)V

    .line 99
    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public logAbortedTransition(Lcom/android/server/wm/Transition;)V
    .registers 5

    .line 144
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 148
    :cond_7
    const-string v0, "Transition::logAborted-coreSide"

    .line 149
    invoke-static {v0}, Landroid/tracing/TracingUtils;->uiTracingSliceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    .line 148
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 151
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer;->doLogAbortedTransition(Lcom/android/server/wm/Transition;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 153
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 154
    throw p0
.end method

.method public logFinishedTransition(Lcom/android/server/wm/Transition;)V
    .registers 5

    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 115
    :cond_7
    const-string v0, "Transition::logFinished"

    .line 116
    invoke-static {v0}, Landroid/tracing/TracingUtils;->uiTracingSliceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    .line 115
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 118
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer;->doLogFinishTransition(Lcom/android/server/wm/Transition;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 120
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 121
    throw p0
.end method

.method public logRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V
    .registers 5

    .line 171
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 175
    :cond_7
    const-string v0, "Transition::logRemovingStartingWindow"

    .line 176
    invoke-static {v0}, Landroid/tracing/TracingUtils;->uiTracingSliceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    .line 175
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 178
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PerfettoTransitionTracer;->doLogRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 180
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 181
    throw p0
.end method

.method public logSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    .registers 6

    .line 66
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 70
    :cond_7
    const-string v0, "Transition::logSent"

    .line 71
    invoke-static {v0}, Landroid/tracing/TracingUtils;->uiTracingSliceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    .line 70
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 73
    :try_start_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PerfettoTransitionTracer;->doLogSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 75
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 76
    throw p0
.end method

.method public startTrace(Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    return-void
.end method

.method public stopTrace(Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    return-void
.end method
