.class final Landroid/app/ActivityThread$SafeCancellationTransport;
.super Landroid/os/ICancellationSignal$Stub;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeCancellationTransport"
.end annotation


# instance fields
.field private final blacklist mWeakActivityThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ActivityThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)V
    .registers 3

    .line 2474
    invoke-direct {p0}, Landroid/os/ICancellationSignal$Stub;-><init>()V

    .line 2475
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/app/ActivityThread$SafeCancellationTransport;->mWeakActivityThread:Ljava/lang/ref/WeakReference;

    .line 2476
    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 2

    .line 2480
    iget-object v0, p0, Landroid/app/ActivityThread$SafeCancellationTransport;->mWeakActivityThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    .line 2481
    if-eqz v0, :cond_14

    .line 2482
    nop

    .line 2483
    invoke-static {v0, p0}, Landroid/app/ActivityThread;->-$$Nest$mremoveSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;

    move-result-object v0

    .line 2484
    if-eqz v0, :cond_14

    .line 2485
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 2488
    :cond_14
    return-void
.end method
