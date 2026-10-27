.class final Landroid/media/AudioManager$SafeWaitObject;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeWaitObject"
.end annotation


# instance fields
.field private greylist-max-o mQuit:Z


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 5198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5199
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioManager$SafeWaitObject;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o safeNotify()V
    .registers 2

    .line 5202
    monitor-enter p0

    .line 5203
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    .line 5204
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 5205
    monitor-exit p0

    .line 5206
    return-void

    .line 5205
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public greylist-max-o safeWait(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 5209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 5210
    monitor-enter p0

    .line 5211
    :goto_6
    :try_start_6
    iget-boolean p1, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    if-nez p1, :cond_1b

    .line 5212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v0, p1

    .line 5213
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_17

    .line 5214
    goto :goto_1b

    .line 5216
    :cond_17
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 5217
    goto :goto_6

    .line 5218
    :cond_1b
    :goto_1b
    monitor-exit p0

    .line 5219
    return-void

    .line 5218
    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p1
.end method
