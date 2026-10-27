.class public final Landroid/graphics/HardwareRendererObserver;
.super Ljava/lang/Object;
.source "HardwareRendererObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;
    }
.end annotation


# instance fields
.field private final blacklist mFrameMetrics:[J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mListener:Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;

.field private blacklist mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;


# direct methods
.method public static synthetic blacklist $r8$lambda$PeqK8_uy-Wp8rbu7N1ihQlz9qD4(Landroid/graphics/HardwareRendererObserver;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/HardwareRendererObserver;->lambda$notifyDataAvailable$0()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;[JLandroid/os/Handler;Z)V
    .registers 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p3, :cond_34

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 73
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 77
    iput-object p2, p0, Landroid/graphics/HardwareRendererObserver;->mFrameMetrics:[J

    .line 78
    iput-object p3, p0, Landroid/graphics/HardwareRendererObserver;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Landroid/graphics/HardwareRendererObserver;->mListener:Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;

    .line 80
    new-instance p1, Lcom/android/internal/util/VirtualRefBasePtr;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p2, p4}, Landroid/graphics/HardwareRendererObserver;->nCreateObserver(Ljava/lang/ref/WeakReference;Z)J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object p1, p0, Landroid/graphics/HardwareRendererObserver;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 82
    return-void

    .line 74
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid looper, null message queue\n"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_34
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "handler and its looper cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist invokeDataAvailable(Ljava/lang/ref/WeakReference;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/HardwareRendererObserver;",
            ">;)Z"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/HardwareRendererObserver;

    .line 110
    if-eqz p0, :cond_d

    .line 111
    invoke-direct {p0}, Landroid/graphics/HardwareRendererObserver;->notifyDataAvailable()V

    .line 112
    const/4 p0, 0x1

    return p0

    .line 114
    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$notifyDataAvailable$0()V
    .registers 5

    .line 90
    const/4 v0, 0x1

    .line 91
    :goto_1
    if-eqz v0, :cond_19

    .line 93
    iget-object v1, p0, Landroid/graphics/HardwareRendererObserver;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v1

    iget-object v3, p0, Landroid/graphics/HardwareRendererObserver;->mFrameMetrics:[J

    invoke-static {v1, v2, v3}, Landroid/graphics/HardwareRendererObserver;->nGetNextBuffer(J[J)I

    move-result v1

    .line 94
    if-ltz v1, :cond_17

    .line 95
    iget-object v2, p0, Landroid/graphics/HardwareRendererObserver;->mListener:Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;

    invoke-interface {v2, v1}, Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;->onFrameMetricsAvailable(I)V

    goto :goto_18

    .line 97
    :cond_17
    const/4 v0, 0x0

    .line 99
    :goto_18
    goto :goto_1

    .line 100
    :cond_19
    return-void
.end method

.method private static native blacklist nCreateObserver(Ljava/lang/ref/WeakReference;Z)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/HardwareRendererObserver;",
            ">;Z)J"
        }
    .end annotation
.end method

.method private static native blacklist nGetNextBuffer(J[J)I
.end method

.method private blacklist notifyDataAvailable()V
    .registers 3

    .line 89
    iget-object v0, p0, Landroid/graphics/HardwareRendererObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/HardwareRendererObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method


# virtual methods
.method blacklist getNativeInstance()J
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/graphics/HardwareRendererObserver;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method
