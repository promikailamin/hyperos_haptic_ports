.class Landroid/media/MediaSync$1;
.super Ljava/lang/Object;
.source "MediaSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postRenderAudio(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaSync;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaSync;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 525
    iput-object p1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 12

    .line 527
    iget-object v0, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v0}, Landroid/media/MediaSync;->-$$Nest$fgetmAudioLock(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 528
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->-$$Nest$fgetmPlaybackRate(Landroid/media/MediaSync;)F

    move-result v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_16

    .line 529
    monitor-exit v0

    return-void

    .line 532
    :cond_16
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->-$$Nest$fgetmAudioBuffers(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 533
    monitor-exit v0

    return-void

    .line 536
    :cond_24
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->-$$Nest$fgetmAudioBuffers(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaSync$AudioBuffer;

    .line 537
    iget-object v3, v1, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 539
    if-lez v3, :cond_58

    iget-object v4, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v4}, Landroid/media/MediaSync;->-$$Nest$fgetmAudioTrack(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_b3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_58

    .line 541
    :try_start_46
    iget-object v4, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v4}, Landroid/media/MediaSync;->-$$Nest$fgetmAudioTrack(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V
    :try_end_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_4f} :catch_50
    .catchall {:try_start_46 .. :try_end_4f} :catchall_b3

    .line 544
    goto :goto_58

    .line 542
    :catch_50
    move-exception v4

    .line 543
    :try_start_51
    const-string v4, "MediaSync"

    const-string v5, "could not start audio track"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_58
    :goto_58
    iget-object v4, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v4}, Landroid/media/MediaSync;->-$$Nest$fgetmAudioTrack(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v4

    iget-object v5, v1, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v4

    .line 550
    if-lez v4, :cond_9d

    .line 551
    iget-wide v5, v1, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_78

    .line 552
    iget-object v5, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    iget-wide v9, v1, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    invoke-static {v5, v3, v9, v10}, Landroid/media/MediaSync;->-$$Nest$mnative_updateQueuedAudioData(Landroid/media/MediaSync;IJ)V

    .line 554
    iput-wide v7, v1, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    .line 557
    :cond_78
    if-ne v4, v3, :cond_9d

    .line 558
    iget-object v3, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v3, v1}, Landroid/media/MediaSync;->-$$Nest$mpostReturnByteBuffer(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    .line 559
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->-$$Nest$fgetmAudioBuffers(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 560
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->-$$Nest$fgetmAudioBuffers(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 561
    iget-object v1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/media/MediaSync;->-$$Nest$mpostRenderAudio(Landroid/media/MediaSync;J)V

    .line 563
    :cond_9b
    monitor-exit v0

    return-void

    .line 566
    :cond_9d
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 567
    invoke-static {v2}, Landroid/media/MediaSync;->-$$Nest$mnative_getPlayTimeForPendingAudioFrames(Landroid/media/MediaSync;)J

    move-result-wide v2

    .line 566
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 568
    iget-object v3, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v4, 0x2

    div-long/2addr v1, v4

    invoke-static {v3, v1, v2}, Landroid/media/MediaSync;->-$$Nest$mpostRenderAudio(Landroid/media/MediaSync;J)V

    .line 569
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_b3
    move-exception v1

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_51 .. :try_end_b5} :catchall_b3

    throw v1
.end method
