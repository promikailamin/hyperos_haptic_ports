.class public Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;
.super Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;
.source "ListenableDownloadCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

.field public final future:Lcom/android/internal/infra/AndroidFuture;

.field public final handler:Landroid/os/Handler;

.field public final idleTimeoutMs:J


# direct methods
.method public constructor <init>(Landroid/app/ondeviceintelligence/IDownloadCallback;Landroid/os/Handler;Lcom/android/internal/infra/AndroidFuture;J)V
    .registers 6

    .line 52
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    .line 54
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    .line 55
    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->future:Lcom/android/internal/infra/AndroidFuture;

    .line 56
    iput-wide p4, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->idleTimeoutMs:J

    .line 57
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->resetTimeout()V

    return-void
.end method


# virtual methods
.method public final complete()V
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->future:Lcom/android/internal/infra/AndroidFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDownloadCompleted(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadCompleted(Landroid/os/PersistableBundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->complete()V

    return-void
.end method

.method public onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->complete()V

    return-void
.end method

.method public onDownloadProgress(J)V
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadProgress(J)V

    .line 69
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->resetTimeout()V

    return-void
.end method

.method public onDownloadStarted(J)V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadStarted(J)V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->resetTimeout()V

    return-void
.end method

.method public final resetTimeout()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->idleTimeoutMs:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .registers 2

    .line 89
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->future:Lcom/android/internal/infra/AndroidFuture;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
