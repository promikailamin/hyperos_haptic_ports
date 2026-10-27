.class abstract Landroid/accounts/AccountManager$Future2Task;
.super Landroid/accounts/AccountManager$BaseFutureTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Future2Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/accounts/AccountManager$BaseFutureTask<",
        "TT;>;",
        "Landroid/accounts/AccountManagerFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 2537
    iput-object p1, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    .line 2538
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManager$BaseFutureTask;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;)V

    .line 2539
    iput-object p3, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 2540
    return-void
.end method

.method private greylist-max-o internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2561
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->isDone()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2562
    iget-object v0, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$mensureNotOnMainThread(Landroid/accounts/AccountManager;)V

    .line 2565
    :cond_b
    const/4 v0, 0x1

    if-nez p1, :cond_16

    .line 2566
    :try_start_e
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_12} :catch_5d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_12} :catch_5b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_12} :catch_59
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_12} :catch_24
    .catchall {:try_start_e .. :try_end_12} :catchall_22

    .line 2592
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 2566
    return-object p1

    .line 2568
    :cond_16
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p2}, Landroid/accounts/AccountManager$Future2Task;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1e} :catch_5d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_16 .. :try_end_1e} :catch_5b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16 .. :try_end_1e} :catch_59
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1e} :catch_24
    .catchall {:try_start_16 .. :try_end_1e} :catchall_22

    .line 2592
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 2568
    return-object p1

    .line 2592
    :catchall_22
    move-exception p1

    goto :goto_55

    .line 2576
    :catch_24
    move-exception p1

    .line 2577
    :try_start_25
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 2578
    instance-of p2, p1, Ljava/io/IOException;

    if-nez p2, :cond_52

    .line 2580
    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    if-nez p2, :cond_4c

    .line 2582
    instance-of p2, p1, Landroid/accounts/AuthenticatorException;

    if-nez p2, :cond_49

    .line 2584
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-nez p2, :cond_46

    .line 2586
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_40

    .line 2587
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 2589
    :cond_40
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 2585
    :cond_46
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 2583
    :cond_49
    check-cast p1, Landroid/accounts/AuthenticatorException;

    throw p1

    .line 2581
    :cond_4c
    new-instance p2, Landroid/accounts/AuthenticatorException;

    invoke-direct {p2, p1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 2579
    :cond_52
    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_22

    .line 2592
    :goto_55
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 2593
    throw p1

    .line 2574
    :catch_59
    move-exception p1

    goto :goto_5e

    .line 2572
    :catch_5b
    move-exception p1

    goto :goto_5e

    .line 2570
    :catch_5d
    move-exception p1

    .line 2592
    :goto_5e
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 2593
    nop

    .line 2594
    new-instance p1, Landroid/accounts/OperationCanceledException;

    invoke-direct {p1}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected whitelist test-api done()V
    .registers 2

    .line 2544
    iget-object v0, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_c

    .line 2545
    new-instance v0, Landroid/accounts/AccountManager$Future2Task$1;

    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$Future2Task$1;-><init>(Landroid/accounts/AccountManager$Future2Task;)V

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->postRunnableToHandler(Ljava/lang/Runnable;)V

    .line 2552
    :cond_c
    return-void
.end method

.method public whitelist getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2600
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2606
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o start()Landroid/accounts/AccountManager$Future2Task;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManager$Future2Task<",
            "TT;>;"
        }
    .end annotation

    .line 2555
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->startTask()V

    .line 2556
    return-object p0
.end method
