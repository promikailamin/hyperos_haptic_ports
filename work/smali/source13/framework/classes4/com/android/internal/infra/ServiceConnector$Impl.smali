.class public Lcom/android/internal/infra/ServiceConnector$Impl;
.super Ljava/util/ArrayDeque;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector;
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/util/ArrayDeque<",
        "Lcom/android/internal/infra/ServiceConnector$Job<",
        "TI;*>;>;",
        "Lcom/android/internal/infra/ServiceConnector<",
        "TI;>;",
        "Landroid/content/ServiceConnection;",
        "Landroid/os/IBinder$DeathRecipient;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_DISCONNECT_TIMEOUT_MS:J = 0x3a98L

.field private static final blacklist DEFAULT_REQUEST_TIMEOUT_MS:J = 0x7530L

.field static final blacklist LOG_TAG:Ljava/lang/String; = "ServiceConnector.Impl"


# instance fields
.field private final blacklist mBinderAsInterface:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;"
        }
    .end annotation
.end field

.field private blacklist mBinding:Z

.field private final blacklist mBindingFlags:I

.field protected final blacklist mContext:Landroid/content/Context;

.field protected final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mMainHandler:Landroid/os/Handler;

.field private final blacklist mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TI;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;"
        }
    .end annotation
.end field

.field protected final blacklist mTimeoutDisconnect:Ljava/lang/Runnable;

.field private blacklist mUnbinding:Z

.field private final blacklist mUnfinishedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmQueue(Lcom/android/internal/infra/ServiceConnector$Impl;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfinishedJobs(Lcom/android/internal/infra/ServiceConnector$Impl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeScheduleUnbindTimeout(Lcom/android/internal/infra/ServiceConnector$Impl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bindingFlags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;)V"
        }
    .end annotation

    .line 298
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p5, "binderAsInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TI;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 257
    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    .line 260
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    .line 261
    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 264
    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 276
    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 277
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    .line 280
    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 299
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    .line 300
    iput-object p2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    .line 301
    iput p3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBindingFlags:I

    .line 302
    iput-object p5, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->getJobHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    .line 305
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 306
    return-void
.end method

.method static blacklist castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BASE:",
            "Ljava/lang/Object;",
            "T:TBASE;>(TBASE;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 496
    .local p0, "instance":Ljava/lang/Object;, "TBASE;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private blacklist dispatchOnBinderDied()V
    .registers 2

    .line 677
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 678
    .local v0, "serviceLifecycleCallbacks":Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TI;>;"
    if-eqz v0, :cond_7

    .line 679
    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onBinderDied()V

    .line 681
    :cond_7
    return-void
.end method

.method private blacklist dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 4
    .param p2, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    .line 378
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "service":Landroid/os/IInterface;, "TI;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 379
    .local v0, "serviceLifecycleCallbacks":Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TI;>;"
    if-eqz v0, :cond_d

    .line 380
    if-eqz p2, :cond_a

    .line 381
    invoke-interface {v0, p1}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onConnected(Landroid/os/IInterface;)V

    goto :goto_d

    .line 383
    :cond_a
    invoke-interface {v0, p1}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onDisconnected(Landroid/os/IInterface;)V

    .line 386
    :cond_d
    :goto_d
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 387
    return-void
.end method

.method private blacklist enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;)V"
        }
    .end annotation

    .line 441
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>.CompletionAwareJob<TI;*>;"
    invoke-direct {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 442
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to post a job to handler. Likely "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    .line 444
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 446
    :cond_2d
    return-void
.end method

.method private blacklist enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;)Z"
        }
    .end annotation

    .line 449
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;*>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    .line 450
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;Lcom/android/internal/infra/ServiceConnector$Job;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private blacklist isBound()Z
    .registers 2

    .line 551
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic blacklist lambda$connect$0(Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 1
    .param p0, "s"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 429
    return-object p0
.end method

.method private blacklist logTrace()V
    .registers 4

    .line 747
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "ServiceConnector.Impl"

    const-string v2, "See stacktrace"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    return-void
.end method

.method private blacklist maybeScheduleUnbindTimeout()V
    .registers 2

    .line 533
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 534
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->scheduleUnbindTimeout()V

    .line 536
    :cond_13
    return-void
.end method

.method private blacklist onTimeout()V
    .registers 1

    .line 692
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 693
    return-void
.end method

.method private blacklist processQueue()V
    .registers 6

    .line 505
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Job;

    move-object v1, v0

    .local v1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;*>;"
    if-eqz v0, :cond_37

    .line 506
    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 508
    .local v0, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    :try_start_13
    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 509
    .local v2, "service":Landroid/os/IInterface;, "TI;"
    if-nez v2, :cond_18

    .line 510
    return-void

    .line 512
    :cond_18
    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Job;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 516
    .local v3, "result":Ljava/lang/Object;
    if-eqz v0, :cond_31

    .line 517
    iget-boolean v4, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    if-eqz v4, :cond_2e

    .line 518
    iget-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    move-object v4, v3

    check-cast v4, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v4, v0}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    goto :goto_31

    .line 521
    :cond_2e
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->complete(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_32

    .line 526
    .end local v2    # "service":Landroid/os/IInterface;, "TI;"
    .end local v3    # "result":Ljava/lang/Object;
    :cond_31
    :goto_31
    goto :goto_36

    .line 524
    :catchall_32
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    .line 527
    .end local v0    # "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_36
    goto :goto_0

    .line 529
    :cond_37
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    .line 530
    return-void
.end method

.method private blacklist scheduleUnbindTimeout()V
    .registers 5

    .line 542
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->getAutoDisconnectTimeoutMs()J

    move-result-wide v0

    .line 543
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    .line 544
    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 548
    :cond_11
    return-void
.end method

.method private blacklist stateToString()Ljava/lang/String;
    .registers 2

    .line 735
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v0, :cond_7

    .line 736
    const-string v0, "Binding..."

    return-object v0

    .line 737
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_e

    .line 738
    const-string v0, "Unbinding..."

    return-object v0

    .line 739
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 740
    const-string v0, "Bound"

    return-object v0

    .line 742
    :cond_17
    const-string v0, "Unbound"

    return-object v0
.end method


# virtual methods
.method protected blacklist bindService(Landroid/content/ServiceConnection;)Z
    .registers 6
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .line 348
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBindingFlags:I

    or-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method protected blacklist binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TI;"
        }
    .end annotation

    .line 361
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method public whitelist binderDied()V
    .registers 2

    .line 671
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 672
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 673
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnBinderDied()V

    .line 674
    return-void
.end method

.method protected blacklist cancelPendingJobs()V
    .registers 4

    .line 613
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Job;

    move-object v1, v0

    .local v1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;*>;"
    if-eqz v0, :cond_1a

    .line 617
    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 618
    .local v0, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    if-eqz v0, :cond_19

    .line 619
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    .line 621
    .end local v0    # "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    :cond_19
    goto :goto_0

    .line 622
    :cond_1a
    return-void
.end method

.method protected blacklist cancelTimeout()V
    .registers 3

    .line 480
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method

.method blacklist completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V
    .registers 7
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "**>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 484
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<**>;"
    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 485
    .local v0, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    const/4 v1, 0x0

    .line 486
    .local v1, "taskChanged":Z
    if-eqz v0, :cond_f

    .line 487
    invoke-virtual {v0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v1

    .line 489
    :cond_f
    if-eqz v0, :cond_12

    goto :goto_2a

    .line 490
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceConnector.Impl"

    invoke-static {v3, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    :goto_2a
    return-void
.end method

.method public declared-synchronized blacklist connect()Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TI;>;"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    monitor-enter p0

    .line 427
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-nez v0, :cond_22

    .line 428
    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 429
    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;-><init>()V

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    .line 430
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 431
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    if-eqz v0, :cond_1d

    .line 432
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-virtual {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->complete(Ljava/lang/Object;)Z

    goto :goto_22

    .line 434
    .end local p0    # "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    .line 437
    .end local v0    # "service":Landroid/os/IInterface;, "TI;"
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object v0

    .line 426
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 714
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const-string v0, "  "

    .line 715
    .local v0, "tab":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "ServiceConnector:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 716
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 717
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    .line 718
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 719
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 720
    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 721
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 722
    const-string v2, "Pending jobs: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 729
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 730
    const-string v2, "Unfinished async jobs: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    .line 731
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 732
    return-void
.end method

.method blacklist enqueueJobThread(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;)V"
        }
    .end annotation

    .line 457
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;*>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    .line 458
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_23

    .line 459
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service is unbinding. Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_7e

    .line 461
    :cond_23
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 462
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add to queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_7e

    .line 464
    :cond_47
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 465
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->processQueue()V

    goto :goto_7e

    .line 466
    :cond_51
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-nez v0, :cond_7e

    .line 467
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    goto :goto_7e

    .line 470
    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    .line 474
    :cond_7e
    :goto_7e
    return-void
.end method

.method protected blacklist getAutoDisconnectTimeoutMs()J
    .registers 3

    .line 322
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method protected blacklist getJobHandler()Landroid/os/Handler;
    .registers 2

    .line 312
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected blacklist getRequestTimeoutMs()J
    .registers 3

    .line 335
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method synthetic blacklist lambda$enqueue$1$com-android-internal-infra-ServiceConnector$Impl(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .registers 2
    .param p1, "job"    # Lcom/android/internal/infra/ServiceConnector$Job;

    .line 450
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueueJobThread(Lcom/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method

.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 663
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 664
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 626
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    const-string v1, "ServiceConnector.Impl"

    if-eqz v0, :cond_1d

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring onServiceConnected due to ongoing unbinding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void

    .line 633
    :cond_1d
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    .line 634
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 635
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 637
    :try_start_26
    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 640
    goto :goto_48

    .line 638
    :catch_2a
    move-exception v2

    .line 639
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_48
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 642
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->processQueue()V

    .line 643
    return-void
.end method

.method protected blacklist onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3
    .param p2, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    .line 392
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "service":Landroid/os/IInterface;, "TI;"
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 650
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 651
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 652
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    if-eqz v0, :cond_e

    .line 653
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 654
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 656
    :cond_e
    return-void
.end method

.method protected blacklist onServiceUnbound()V
    .registers 1

    .line 374
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    return-void
.end method

.method public blacklist post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 405
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$VoidJob;, "Lcom/android/internal/infra/ServiceConnector$VoidJob<TI;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object v0

    return-object v0
.end method

.method public blacklist postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;Ljava/util/concurrent/CompletableFuture<TR;>;>;"
    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    .line 419
    .local v0, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>.CompletionAwareJob<TI;TR;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector$Job;

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    .line 420
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    .line 421
    invoke-direct {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    .line 422
    return-object v0
.end method

.method public bridge synthetic blacklist postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2

    .line 248
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object p1

    return-object p1
.end method

.method public blacklist postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;TR;>;)",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TR;>;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;TR;>;"
    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    .line 411
    .local v0, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>.CompletionAwareJob<TI;TR;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector$Job;

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    .line 412
    invoke-direct {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    .line 413
    return-object v0
.end method

.method public whitelist test-api run()V
    .registers 1

    .line 685
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->onTimeout()V

    .line 686
    return-void
.end method

.method public blacklist run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)Z"
        }
    .end annotation

    .line 400
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$VoidJob;, "Lcom/android/internal/infra/ServiceConnector$VoidJob<TI;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z

    move-result v0

    return v0
.end method

.method public blacklist setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;)V"
        }
    .end annotation

    .line 565
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "callbacks":Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TI;>;"
    iput-object p1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 566
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 697
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceConnector@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 700
    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 701
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_5c

    .line 702
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pending job(s)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_5c
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_77

    .line 708
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unfinished async job(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_77
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist unbind()V
    .registers 3

    .line 559
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    .line 560
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    return-void
.end method

.method blacklist unbindJobThread()V
    .registers 9

    .line 569
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    .line 570
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 574
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v2

    .line 575
    .local v3, "wasBound":Z
    :goto_c
    if-nez v3, :cond_12

    iget-boolean v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v4, :cond_33

    .line 577
    :cond_12
    :try_start_12
    iget-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 582
    goto :goto_33

    .line 578
    :catch_1a
    move-exception v4

    .line 581
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "ServiceConnector.Impl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unbind: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_33
    :goto_33
    const/4 v4, 0x0

    if-eqz v3, :cond_4b

    .line 585
    invoke-direct {p0, v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 588
    :try_start_39
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_40
    .catch Ljava/util/NoSuchElementException; {:try_start_39 .. :try_end_40} :catch_41

    .line 591
    goto :goto_49

    .line 589
    :catch_41
    move-exception v5

    .line 590
    .local v5, "e":Ljava/util/NoSuchElementException;
    const-string v6, "ServiceConnector.Impl"

    const-string v7, "death recipient already released"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    .end local v5    # "e":Ljava/util/NoSuchElementException;
    :goto_49
    iput-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 595
    :cond_4b
    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 596
    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    .line 597
    monitor-enter p0

    .line 598
    :try_start_50
    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v2, :cond_59

    .line 599
    invoke-virtual {v2, v1}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    .line 600
    iput-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 602
    :cond_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_63

    .line 604
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelPendingJobs()V

    .line 606
    if-eqz v3, :cond_62

    .line 607
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->onServiceUnbound()V

    .line 609
    :cond_62
    return-void

    .line 602
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method
