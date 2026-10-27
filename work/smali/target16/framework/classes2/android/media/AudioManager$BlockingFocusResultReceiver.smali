.class final Landroid/media/AudioManager$BlockingFocusResultReceiver;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingFocusResultReceiver"
.end annotation


# instance fields
.field private final greylist-max-o mFocusClientId:Ljava/lang/String;

.field private greylist-max-o mFocusRequestResult:I

.field private final greylist-max-o mLock:Landroid/media/AudioManager$SafeWaitObject;

.field private greylist-max-o mResultReceived:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4

    .line 5230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5223
    new-instance v0, Landroid/media/AudioManager$SafeWaitObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioManager$SafeWaitObject;-><init>(Landroid/media/AudioManager-IA;)V

    iput-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    .line 5224
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    .line 5227
    iput v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    .line 5231
    iput-object p1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusClientId:Ljava/lang/String;

    .line 5232
    return-void
.end method


# virtual methods
.method greylist-max-o notifyResult(I)V
    .registers 4

    .line 5238
    iget-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    monitor-enter v0

    .line 5239
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    .line 5240
    iput p1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    .line 5241
    iget-object p1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    invoke-virtual {p1}, Landroid/media/AudioManager$SafeWaitObject;->safeNotify()V

    .line 5242
    monitor-exit v0

    .line 5243
    return-void

    .line 5242
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw p1
.end method

.method greylist-max-o receivedResult()Z
    .registers 2

    .line 5234
    iget-boolean v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    return v0
.end method

.method greylist-max-o requestResult()I
    .registers 2

    .line 5235
    iget v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    return v0
.end method

.method public greylist-max-o waitForResult(J)V
    .registers 5

    .line 5246
    iget-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    monitor-enter v0

    .line 5247
    :try_start_3
    iget-boolean v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    if-eqz v1, :cond_9

    .line 5249
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_13

    return-void

    .line 5252
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    invoke-virtual {v1, p1, p2}, Landroid/media/AudioManager$SafeWaitObject;->safeWait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    goto :goto_10

    .line 5253
    :catch_f
    move-exception p1

    :goto_10
    nop

    .line 5254
    :try_start_11
    monitor-exit v0

    .line 5255
    return-void

    .line 5254
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw p1
.end method
