.class public Lcom/android/server/audio/AudioService$CacheWatcher;
.super Ljava/lang/Thread;
.source "AudioService.java"


# instance fields
.field public final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mTask:Ljava/lang/Runnable;

.field public final mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 4

    .line 11832
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11824
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11833
    sget-object v0, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->getNonceWatcher(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    .line 11835
    iput-object p1, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public declared-synchronized doCheck()V
    .registers 2

    monitor-enter p0

    .line 11854
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11855
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    goto :goto_13

    .line 11857
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw v0
.end method

.method public run()V
    .registers 4

    .line 11839
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11840
    :goto_6
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 11841
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$CacheWatcher;->doCheck()V

    .line 11843
    :try_start_11
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->waitForChange()I
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_6

    :catch_17
    move-exception v0

    .line 11845
    const-string v1, "AS.AudioService"

    const-string v2, "Unexpected Interrupt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_20
    return-void
.end method
