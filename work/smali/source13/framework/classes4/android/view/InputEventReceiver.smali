.class public abstract Landroid/view/InputEventReceiver;
.super Ljava/lang/Object;
.source "InputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventReceiver$Factory;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputEventReceiver"


# instance fields
.field blacklist mChoreographer:Landroid/view/Choreographer;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mInputChannel:Landroid/view/InputChannel;

.field private blacklist mInputEventMonitor:Landroid/os/perfdebug/InputEventMonitor;

.field private greylist-max-o mMessageQueue:Landroid/os/MessageQueue;

.field private greylist-max-o mReceiverPtr:J

.field private final greylist-max-o mSeqMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 6
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Landroid/os/perfdebug/InputEventMonitor;->get()Landroid/os/perfdebug/InputEventMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mInputEventMonitor:Landroid/os/perfdebug/InputEventMonitor;

    .line 47
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 57
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    .line 77
    if-eqz p1, :cond_3d

    .line 80
    if-eqz p2, :cond_35

    .line 84
    iput-object p1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 85
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 86
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {v1, p1, v2}, Landroid/view/InputEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    .line 89
    const-string v1, "InputEventReceiver.dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 90
    return-void

    .line 81
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-r dispatchInputEvent(ILandroid/view/InputEvent;)V
    .registers 5
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 290
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mInputEventMonitor:Landroid/os/perfdebug/InputEventMonitor;

    invoke-virtual {v0, p2}, Landroid/os/perfdebug/InputEventMonitor;->monitorDispatchInputEvent(Landroid/view/InputEvent;)V

    .line 291
    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->isCoreAppOptimizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_20

    .line 292
    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/os/TurboSchedMonitor;->monitorInputEvent(Landroid/view/InputEvent;)V

    .line 294
    :cond_20
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/perfdebug/MessageMonitor;->checkInputEvent(Landroid/view/InputEvent;)V

    .line 295
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/perfdebug/MessageMonitor;->markInputEventDispatch(Landroid/view/InputEvent;)V

    .line 297
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 298
    invoke-virtual {p0, p2}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    .line 300
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/perfdebug/MessageMonitor;->markInputEventDispatchFinish(Landroid/view/InputEvent;)V

    .line 302
    return-void
.end method

.method private blacklist dispatchMotionEventInfo(II)V
    .registers 6
    .param p1, "motionEventType"    # I
    .param p2, "touchMoveNum"    # I

    .line 308
    :try_start_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_a

    .line 309
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 311
    :cond_a
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_11

    .line 312
    invoke-virtual {v0, p1, p2}, Landroid/view/Choreographer;->setMotionEventInfo(II)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 315
    :cond_11
    goto :goto_1a

    .line 313
    :catch_12
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "InputEventReceiver"

    const-string v2, "cannot invoke setMotionEventInfo."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .registers 7
    .param p1, "finalized"    # Z

    .line 119
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_e

    .line 120
    if-eqz p1, :cond_9

    .line 121
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 123
    :cond_9
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 126
    :cond_e
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1b

    .line 127
    invoke-static {v0, v1}, Landroid/view/InputEventReceiver;->nativeDispose(J)V

    .line 128
    iput-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    .line 131
    :cond_1b
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 132
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 133
    iput-object v1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 135
    :cond_25
    iput-object v1, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 136
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method private static native greylist-max-o nativeConsumeBatchedInputEvents(JJ)Z
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native blacklist nativeDump(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeFinishInputEvent(JIZ)V
.end method

.method private static native greylist-max-o nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputEventReceiver;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native blacklist nativeReportTimeline(JIJJ)V
.end method


# virtual methods
.method public final greylist-max-o consumeBatchedInputEvents(J)Z
    .registers 7
    .param p1, "frameTimeNanos"    # J

    .line 266
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 267
    const-string v0, "InputEventReceiver"

    const-string v1, "Attempted to consume batched input events but the input event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_11
    invoke-static {v0, v1, p1, p2}, Landroid/view/InputEventReceiver;->nativeConsumeBatchedInputEvents(JJ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o dispose()V
    .registers 2

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V

    .line 116
    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInputChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSeqMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReceiverPtr:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/view/InputEventReceiver;->nativeDump(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 106
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 107
    nop

    .line 108
    return-void

    .line 106
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 107
    throw v0
.end method

.method public final greylist-max-o finishInputEvent(Landroid/view/InputEvent;Z)V
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "handled"    # Z

    .line 218
    if-eqz p1, :cond_47

    .line 221
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "InputEventReceiver"

    if-nez v0, :cond_12

    .line 222
    const-string v0, "Attempted to finish an input event but the input event receiver has already been disposed."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 225
    :cond_12
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 226
    .local v0, "index":I
    if-gez v0, :cond_24

    .line 227
    const-string v2, "Attempted to finish an input event that is not in progress."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 229
    :cond_24
    iget-object v1, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 230
    .local v1, "seq":I
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 233
    invoke-static {}, Landroid/view/InputEventInterceptStub;->getInstance()Landroid/view/InputEventInterceptStub;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/InputEventInterceptStub;->isOneway(Landroid/view/InputEvent;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 234
    iget-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v2, v3, v1, p2}, Landroid/view/InputEventReceiver;->nativeFinishInputEvent(JIZ)V

    .line 238
    :cond_3e
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mInputEventMonitor:Landroid/os/perfdebug/InputEventMonitor;

    invoke-virtual {v2, p1, p0}, Landroid/os/perfdebug/InputEventMonitor;->monitorFinishInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    .line 241
    .end local v0    # "index":I
    .end local v1    # "seq":I
    :goto_43
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 242
    return-void

    .line 219
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getMonitor()Landroid/os/perfdebug/InputEventMonitor;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mInputEventMonitor:Landroid/os/perfdebug/InputEventMonitor;

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 279
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_6

    .line 280
    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_6
    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onBatchedInputEventPending(I)V
    .registers 4
    .param p1, "source"    # I

    .line 207
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 208
    return-void
.end method

.method public blacklist onDragEvent(ZFF)V
    .registers 4
    .param p1, "isExiting"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 185
    return-void
.end method

.method public blacklist onFocusEvent(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .line 161
    return-void
.end method

.method public greylist-max-r onInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 150
    return-void
.end method

.method public blacklist onPointerCaptureEvent(Z)V
    .registers 2
    .param p1, "pointerCaptureEnabled"    # Z

    .line 175
    return-void
.end method

.method public blacklist onTouchModeChanged(Z)V
    .registers 2
    .param p1, "inTouchMode"    # Z

    .line 195
    return-void
.end method

.method public final blacklist reportTimeline(IJJ)V
    .registers 16
    .param p1, "inputEventId"    # I
    .param p2, "gpuCompletedTime"    # J
    .param p4, "presentTime"    # J

    .line 248
    const-wide/16 v0, 0x4

    const-string/jumbo v2, "reportTimeline"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 249
    iget-wide v3, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-static/range {v3 .. v9}, Landroid/view/InputEventReceiver;->nativeReportTimeline(JIJJ)V

    .line 250
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 251
    return-void
.end method
