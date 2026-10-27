.class public abstract Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;
.super Ljava/util/ArrayDeque;
.source "ServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/util/ArrayDeque<",
        "Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;",
        ">;",
        "Landroid/content/ServiceConnection;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field private final mBinderAsInterface:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;"
        }
    .end annotation
.end field

.field private mBinding:Z

.field private final mBindingFlags:I

.field protected final mContext:Landroid/content/Context;

.field protected final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceConnectionFutureCache:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;"
        }
    .end annotation
.end field

.field private volatile mServiceLifecycleCallbacks:Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;"
        }
    .end annotation
.end field

.field private final mTimeoutDisconnect:Ljava/lang/Runnable;

.field private mUnbinding:Z

.field private final mUnfinishedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0-zwaacuw813NaYdimyqBhj_iI8(Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$NuP-oIJOEmTDqI-HAQQcjEZHTtc(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->lambda$enqueue$1(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmQueue(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;)Ljava/util/Queue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUnfinishedJobs(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeScheduleUnbindTimeout(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V
    .registers 8

    .line 295
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->LOG_TAG:Ljava/lang/String;

    .line 256
    iput-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    .line 259
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    .line 260
    iput-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 261
    iput-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;

    .line 273
    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 v1, 0x0

    .line 274
    iput-boolean v1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mBinding:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnbinding:Z

    .line 277
    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    .line 296
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p4

    invoke-virtual {p1, p4, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    .line 297
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    .line 298
    iput p3, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mBindingFlags:I

    .line 299
    iput-object p5, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    .line 301
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->getJobHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    .line 302
    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 493
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bindService(Landroid/content/ServiceConnection;)Z
    .registers 5

    .line 345
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mBindingFlags:I

    or-int/lit8 v2, v2, 0x1

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p0

    return p0
.end method

.method public binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 358
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0
.end method

.method public cancelPendingJobs()V
    .registers 3

    .line 603
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

    if-eqz v0, :cond_19

    .line 607
    const-class v1, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v0, v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 609
    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    goto :goto_0

    :cond_19
    return-void
.end method

.method public cancelTimeout()V
    .registers 2

    .line 477
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public completeExceptionally(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;Ljava/lang/Throwable;)V
    .registers 5

    .line 481
    const-class v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {p1, v0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v0, :cond_d

    .line 484
    invoke-virtual {v0, p2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_d
    if-eqz v0, :cond_10

    return-void

    .line 487
    :cond_10
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public declared-synchronized connect()Lcom/android/internal/infra/AndroidFuture;
    .registers 3

    monitor-enter p0

    .line 424
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    if-nez v0, :cond_24

    .line 425
    new-instance v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;)V

    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    .line 426
    new-instance v1, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$$ExternalSyntheticLambda2;-><init>()V

    iput-object v1, v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

    .line 427
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_1f

    .line 429
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    invoke-virtual {v1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_24

    :catchall_1d
    move-exception v0

    goto :goto_28

    .line 431
    :cond_1f
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    invoke-virtual {p0, v0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->enqueue(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;)V

    .line 434
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_1d

    monitor-exit p0

    return-object v0

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_1d

    throw v0
.end method

.method public final dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;

    if-eqz v0, :cond_d

    if-eqz p2, :cond_a

    .line 378
    invoke-interface {v0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;->onConnected(Landroid/os/IInterface;)V

    goto :goto_d

    .line 380
    :cond_a
    invoke-interface {v0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;->onDisconnected(Landroid/os/IInterface;)V

    .line 383
    :cond_d
    :goto_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 685
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "ServiceConnector:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 686
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 687
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "userId: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    .line 688
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 689
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "State: "

    .line 690
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 691
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Pending jobs: "

    .line 692
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 699
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, "Unfinished async jobs: "

    .line 700
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    .line 701
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final enqueue(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;)V
    .registers 5

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->enqueue(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 439
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to post a job to handler. Likely "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    .line 441
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is exiting"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_2a
    return-void
.end method

.method public final enqueue(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)Z
    .registers 4

    .line 446
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->cancelTimeout()V

    .line 447
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public enqueueJobThread(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)V
    .registers 5

    .line 454
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->cancelTimeout()V

    .line 455
    iget-boolean v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_21

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service is unbinding. Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->completeExceptionally(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;Ljava/lang/Throwable;)V

    return-void

    .line 458
    :cond_21
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 459
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add to queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->completeExceptionally(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;Ljava/lang/Throwable;)V

    return-void

    .line 461
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 462
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->processQueue()V

    return-void

    .line 463
    :cond_4d
    iget-boolean v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mBinding:Z

    if-nez v0, :cond_78

    .line 464
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 p1, 0x1

    .line 465
    iput-boolean p1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mBinding:Z

    return-void

    .line 467
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->completeExceptionally(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;Ljava/lang/Throwable;)V

    :cond_78
    return-void
.end method

.method public abstract getAutoDisconnectTimeoutMs()J
.end method

.method public getJobHandler()Landroid/os/Handler;
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public abstract getRequestTimeoutMs()J
.end method

.method public final isBound()Z
    .registers 1

    .line 548
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$enqueue$1(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)V
    .registers 2

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->enqueueJobThread(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)V

    return-void
.end method

.method public final maybeScheduleUnbindTimeout()V
    .registers 2

    .line 530
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 531
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->scheduleUnbindTimeout()V

    :cond_13
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 643
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 616
    iget-boolean p1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz p1, :cond_1b

    .line 617
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring onServiceConnected due to ongoing unbinding: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 623
    :cond_1b
    invoke-virtual {p0, p2}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    .line 624
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 p2, 0x0

    .line 625
    iput-boolean p2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mBinding:Z

    const/4 p2, 0x1

    .line 626
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 627
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->processQueue()V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 635
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method public onServiceUnbound()V
    .registers 1

    .line 0
    return-void
.end method

.method public final onTimeout()V
    .registers 1

    .line 662
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method public post(Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->postForResult(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object p0

    return-object p0
.end method

.method public postAsync(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3

    .line 415
    new-instance v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;)V

    .line 416
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

    iput-object p1, v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

    const/4 p1, 0x1

    .line 417
    iput-boolean p1, v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    .line 418
    invoke-virtual {p0, v0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->enqueue(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;)V

    return-object v0
.end method

.method public postForResult(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;
    .registers 3

    .line 407
    new-instance v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;)V

    .line 408
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

    iput-object p1, v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

    .line 409
    invoke-virtual {p0, v0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->enqueue(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;)V

    return-object v0
.end method

.method public final processQueue()V
    .registers 5

    .line 502
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;

    if-eqz v0, :cond_36

    .line 503
    const-class v1, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v0, v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    .line 505
    :try_start_12
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-nez v2, :cond_17

    return-void

    .line 509
    :cond_17
    invoke-interface {v0, v2}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 514
    iget-boolean v3, v1, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    if-eqz v3, :cond_2e

    .line 515
    iget-object v3, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    check-cast v2, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v2, v1}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    goto :goto_0

    :catchall_2c
    move-exception v1

    goto :goto_32

    .line 518
    :cond_2e
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_2c

    goto :goto_0

    .line 522
    :goto_32
    invoke-virtual {p0, v0, v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->completeExceptionally(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 526
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    return-void
.end method

.method public run()V
    .registers 1

    .line 655
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->onTimeout()V

    return-void
.end method

.method public run(Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;)Z
    .registers 2

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->enqueue(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)Z

    move-result p0

    return p0
.end method

.method public final scheduleUnbindTimeout()V
    .registers 5

    .line 539
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->getAutoDisconnectTimeoutMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    .line 541
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method public setServiceLifecycleCallbacks(Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;)V
    .registers 2

    .line 562
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;

    return-void
.end method

.method public final stateToString()Ljava/lang/String;
    .registers 2

    .line 705
    iget-boolean v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mBinding:Z

    if-eqz v0, :cond_7

    .line 706
    const-string p0, "Binding..."

    return-object p0

    .line 707
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_e

    .line 708
    const-string p0, "Unbinding..."

    return-object p0

    .line 709
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->isBound()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 710
    const-string p0, "Bound"

    return-object p0

    .line 712
    :cond_17
    const-string p0, "Unbound"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceConnector@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")["

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_53

    .line 672
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pending job(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    :cond_53
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 678
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " unfinished async job(s)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_6c
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unbind()V
    .registers 3

    const/4 v0, 0x1

    .line 556
    iput-boolean v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnbinding:Z

    .line 557
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unbindJobThread()V
    .registers 9

    .line 566
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->cancelTimeout()V

    .line 567
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v2

    :goto_c
    if-nez v3, :cond_12

    .line 572
    iget-boolean v4, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mBinding:Z

    if-eqz v4, :cond_31

    .line 574
    :cond_12
    :try_start_12
    iget-object v4, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_31

    :catch_1a
    move-exception v4

    .line 578
    iget-object v5, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unbind: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    const/4 v4, 0x0

    if-eqz v3, :cond_39

    .line 582
    invoke-virtual {p0, v0, v2}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 583
    iput-object v4, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 585
    :cond_39
    iput-boolean v2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mBinding:Z

    .line 586
    iput-boolean v2, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mUnbinding:Z

    .line 587
    monitor-enter p0

    .line 588
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v0, :cond_4a

    .line 589
    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    .line 590
    iput-object v4, p0, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl$CompletionAwareJob;

    goto :goto_4a

    :catchall_48
    move-exception v0

    goto :goto_54

    .line 592
    :cond_4a
    :goto_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_48

    .line 594
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->cancelPendingJobs()V

    if-eqz v3, :cond_53

    .line 597
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->onServiceUnbound()V

    :cond_53
    return-void

    .line 592
    :goto_54
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_48

    throw v0
.end method
