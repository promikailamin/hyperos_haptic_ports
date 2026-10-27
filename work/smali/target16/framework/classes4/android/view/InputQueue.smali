.class public final Landroid/view/InputQueue;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputQueue$FinishedInputEventCallback;,
        Landroid/view/InputQueue$ActiveInputEvent;,
        Landroid/view/InputQueue$Callback;
    }
.end annotation


# instance fields
.field private final greylist-max-o mActiveEventArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mActiveInputEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mPtr:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/LongSparseArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    .line 38
    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    .line 41
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/InputQueue;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    .line 55
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "InputQueue.dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private greylist-max-r finishInputEvent(JZ)V
    .registers 5

    .line 107
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result p1

    .line 108
    if-ltz p1, :cond_1f

    .line 109
    iget-object p2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {p2, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/InputQueue$ActiveInputEvent;

    .line 110
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 111
    iget-object p1, p2, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    iget-object v0, p2, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    invoke-interface {p1, v0, p3}, Landroid/view/InputQueue$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 112
    invoke-direct {p0, p2}, Landroid/view/InputQueue;->recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V

    .line 114
    :cond_1f
    return-void
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native greylist-max-o nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J
.end method

.method private static native greylist-max-o nativeSendMotionEvent(JLandroid/view/MotionEvent;)J
.end method

.method private greylist-max-o obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;
    .registers 5

    .line 118
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputQueue$ActiveInputEvent;

    .line 119
    if-nez v0, :cond_10

    .line 120
    new-instance v0, Landroid/view/InputQueue$ActiveInputEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputQueue$ActiveInputEvent;-><init>(Landroid/view/InputQueue;Landroid/view/InputQueue-IA;)V

    .line 122
    :cond_10
    iput-object p1, v0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    .line 123
    iput-object p2, v0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    .line 124
    return-object v0
.end method

.method private greylist-max-o recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V
    .registers 3

    .line 128
    invoke-virtual {p1}, Landroid/view/InputQueue$ActiveInputEvent;->recycle()V

    .line 129
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .registers 2

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V

    .line 70
    return-void
.end method

.method public greylist-max-o dispose(Z)V
    .registers 6

    .line 74
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_10

    .line 75
    if-eqz p1, :cond_b

    .line 76
    iget-object p1, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 78
    :cond_b
    iget-object p1, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->close()V

    .line 81
    :cond_10
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1f

    .line 82
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/InputQueue;->nativeDispose(J)V

    .line 83
    iput-wide v2, p0, Landroid/view/InputQueue;->mPtr:J

    .line 85
    :cond_1f
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 63
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    nop

    .line 65
    return-void

    .line 63
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    throw v0
.end method

.method public greylist-max-o getNativePtr()J
    .registers 3

    .line 89
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    return-wide v0
.end method

.method public greylist-max-o sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V
    .registers 7

    .line 95
    invoke-direct {p0, p2, p4}, Landroid/view/InputQueue;->obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;

    move-result-object p2

    .line 97
    instance-of p4, p1, Landroid/view/KeyEvent;

    if-eqz p4, :cond_11

    .line 98
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    check-cast p1, Landroid/view/KeyEvent;

    invoke-static {v0, v1, p1, p3}, Landroid/view/InputQueue;->nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J

    move-result-wide p3

    goto :goto_19

    .line 100
    :cond_11
    iget-wide p3, p0, Landroid/view/InputQueue;->mPtr:J

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p3, p4, p1}, Landroid/view/InputQueue;->nativeSendMotionEvent(JLandroid/view/MotionEvent;)J

    move-result-wide p3

    .line 102
    :goto_19
    iget-object p1, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {p1, p3, p4, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 103
    return-void
.end method
