.class final Landroid/app/Instrumentation$SyncRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncRunnable"
.end annotation


# instance fields
.field private greylist-max-o mComplete:Z

.field private final greylist-max-o mTarget:Ljava/lang/Runnable;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 2431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2432
    iput-object p1, p0, Landroid/app/Instrumentation$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    .line 2433
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 2436
    iget-object v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2437
    monitor-enter p0

    .line 2438
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mComplete:Z

    .line 2439
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2440
    monitor-exit p0

    .line 2441
    return-void

    .line 2440
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public greylist-max-o waitForComplete()V
    .registers 2

    .line 2444
    monitor-enter p0

    .line 2445
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mComplete:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    .line 2447
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 2449
    :goto_8
    goto :goto_1

    .line 2448
    :catch_9
    move-exception v0

    goto :goto_8

    .line 2451
    :cond_b
    :try_start_b
    monitor-exit p0

    .line 2452
    return-void

    .line 2451
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0
.end method
