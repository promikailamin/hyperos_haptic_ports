.class Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;
.super Ljava/lang/Object;
.source "ExternalCaptureStateTracker.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureStateTracker"


# instance fields
.field private mCaptureActive:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNeedToConnect:Ljava/util/concurrent/Semaphore;


# direct methods
.method public static synthetic $r8$lambda$RZMAt4xyair7XupdR0vc4Crojqo(Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->run()V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mCaptureActive:Z

    .line 43
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

.method private binderDied()V
    .registers 3

    .line 105
    const-string v0, "CaptureStateTracker"

    const-string v1, "Audio policy service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 107
    return-void
.end method

.method private native connect()V
.end method

.method private run()V
    .registers 2

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mNeedToConnect:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 74
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->connect()V

    goto :goto_0
.end method

.method private setCaptureState(Z)V
    .registers 5
    .param p1, "active"    # Z

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_20

    .line 91
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mCaptureActive:Z

    .line 92
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;

    .line 93
    .local v2, "listener":Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;
    invoke-interface {v2, p1}, Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;->onCaptureStateChange(Z)V

    .line 94
    .end local v2    # "listener":Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;
    goto :goto_b

    .line 95
    :cond_1b
    monitor-exit v0

    .line 98
    goto :goto_28

    .line 95
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;
    .end local p1    # "active":Z
    :try_start_1f
    throw v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    .line 96
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;
    .restart local p1    # "active":Z
    :catch_20
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CaptureStateTracker"

    const-string v2, "Exception caught while setting capture state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    return-void
.end method


# virtual methods
.method public registerListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)Z
    .registers 4
    .param p1, "listener"    # Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;

    .line 55
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 56
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-boolean v1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mCaptureActive:Z

    monitor-exit v0

    return v1

    .line 58
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public unregisterListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;

    .line 63
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 64
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
