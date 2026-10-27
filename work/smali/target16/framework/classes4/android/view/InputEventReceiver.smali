.class public abstract Landroid/view/InputEventReceiver;
.super Ljava/lang/Object;
.source "InputEventReceiver.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputEventReceiver"


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mInputChannel:Landroid/view/InputChannel;

.field private blacklist mLooper:Landroid/os/Looper;

.field private greylist-max-o mReceiverPtr:J

.field private final greylist-max-o mSeqMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 50
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    .line 71
    if-eqz p1, :cond_3b

    .line 74
    if-eqz p2, :cond_33

    .line 78
    iput-object p1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 79
    iput-object p2, p0, Landroid/view/InputEventReceiver;->mLooper:Landroid/os/Looper;

    .line 80
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    iget-object v0, p0, Landroid/view/InputEventReceiver;->mLooper:Landroid/os/Looper;

    .line 81
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 80
    invoke-static {p1, p2, v0}, Landroid/view/InputEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    .line 83
    iget-object p1, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p2, "InputEventReceiver.dispose"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 84
    return-void

    .line 75
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "looper must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputChannel must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-r dispatchInputEvent(ILandroid/view/InputEvent;)V
    .registers 5

    .line 276
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    invoke-virtual {p0, p2}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    .line 278
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .registers 6

    .line 118
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_10

    .line 119
    if-eqz p1, :cond_b

    .line 120
    iget-object p1, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 122
    :cond_b
    iget-object p1, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->close()V

    .line 125
    :cond_10
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1f

    .line 126
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/InputEventReceiver;->nativeDispose(J)V

    .line 127
    iput-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    .line 130
    :cond_1f
    iget-object p1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 131
    iget-object p1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 132
    iput-object v0, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 134
    :cond_2b
    iput-object v0, p0, Landroid/view/InputEventReceiver;->mLooper:Landroid/os/Looper;

    .line 135
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 136
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

.method private static native blacklist nativeGetFrameMetricsObserver(J)J
.end method

.method private static native blacklist nativeGetToken(J)Landroid/os/IBinder;
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

.method private static native blacklist nativeProbablyHasInput(J)Z
.end method


# virtual methods
.method public final greylist-max-o consumeBatchedInputEvents(J)Z
    .registers 7

    .line 249
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 250
    const-string p1, "InputEventReceiver"

    const-string p2, "Attempted to consume batched input events but the input event receiver has already been disposed."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 p1, 0x0

    return p1

    .line 253
    :cond_11
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/InputEventReceiver;->nativeConsumeBatchedInputEvents(JJ)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o dispose()V
    .registers 3

    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputEventReceiver;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V

    .line 115
    return-void

    .line 112
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call dispose() on the Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 286
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

    .line 287
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

    .line 288
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

    .line 289
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

    move-result-object p1

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Landroid/view/InputEventReceiver;->nativeDump(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 91
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 92
    throw v0
.end method

.method public final greylist-max-o finishInputEvent(Landroid/view/InputEvent;Z)V
    .registers 7

    .line 217
    if-eqz p1, :cond_38

    .line 220
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "InputEventReceiver"

    if-nez v0, :cond_12

    .line 221
    const-string p2, "Attempted to finish an input event but the input event receiver has already been disposed."

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 224
    :cond_12
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 225
    if-gez v0, :cond_24

    .line 226
    const-string p2, "Attempted to finish an input event that is not in progress."

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 228
    :cond_24
    iget-object v1, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 229
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 230
    iget-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v2, v3, v1, p2}, Landroid/view/InputEventReceiver;->nativeFinishInputEvent(JIZ)V

    .line 233
    :goto_34
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 234
    return-void

    .line 218
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final blacklist getNativeFrameMetricsObserver()J
    .registers 3

    .line 259
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/InputEventReceiver;->nativeGetFrameMetricsObserver(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 5

    .line 266
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_a
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/InputEventReceiver;->nativeGetToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onBatchedInputEventPending(I)V
    .registers 4

    .line 206
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 207
    return-void
.end method

.method public blacklist onDragEvent(ZFFI)V
    .registers 5

    .line 184
    return-void
.end method

.method public blacklist onFocusEvent(Z)V
    .registers 2

    .line 160
    return-void
.end method

.method public greylist-max-r onInputEvent(Landroid/view/InputEvent;)V
    .registers 3

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 149
    return-void
.end method

.method public blacklist onPointerCaptureEvent(Z)V
    .registers 2

    .line 174
    return-void
.end method

.method public blacklist onTouchModeChanged(Z)V
    .registers 2

    .line 194
    return-void
.end method

.method public blacklist probablyHasInput()Z
    .registers 5

    .line 100
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 101
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_a
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/InputEventReceiver;->nativeProbablyHasInput(J)Z

    move-result v0

    return v0
.end method
