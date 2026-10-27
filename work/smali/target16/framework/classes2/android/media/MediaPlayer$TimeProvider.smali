.class Landroid/media/MediaPlayer$TimeProvider;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TimeProvider$EventHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final greylist-max-o MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final greylist-max-o NOTIFY:I = 0x1

.field private static final greylist-max-o NOTIFY_SEEK:I = 0x3

.field private static final greylist-max-o NOTIFY_STOP:I = 0x2

.field private static final greylist-max-o NOTIFY_TIME:I = 0x0

.field private static final greylist-max-o NOTIFY_TRACK_DATA:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MTP"

.field private static final greylist-max-o TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public greylist-max-o DEBUG:Z

.field private greylist-max-o mBuffering:Z

.field private greylist-max-o mEventHandler:Landroid/os/Handler;

.field private greylist-max-o mHandlerThread:Landroid/os/HandlerThread;

.field private greylist-max-o mLastReportedTime:J

.field private greylist-max-o mLastTimeUs:J

.field private greylist-max-o mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private greylist-max-o mPaused:Z

.field private greylist-max-o mPausing:Z

.field private greylist-max-o mPlayer:Landroid/media/MediaPlayer;

.field private greylist-max-o mRefresh:Z

.field private greylist-max-o mSeeking:Z

.field private greylist-max-o mStopped:Z

.field private greylist-max-o mTimes:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifySeek(Landroid/media/MediaPlayer$TimeProvider;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifySeek()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyStop(Landroid/media/MediaPlayer$TimeProvider;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifyStop()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTimedEvent(Landroid/media/MediaPlayer$TimeProvider;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTrackData(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTrackData(Landroid/util/Pair;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/MediaPlayer;)V
    .registers 7

    .line 5896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5872
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 5874
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 5875
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5883
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 5884
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 5885
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5894
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 5897
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    .line 5899
    :try_start_17
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 5903
    goto :goto_1e

    .line 5900
    :catch_1b
    move-exception p1

    .line 5902
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 5906
    :goto_1e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_3f

    .line 5907
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_3f

    .line 5909
    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "MediaPlayerMTPEventThread"

    const/4 v4, -0x2

    invoke-direct {p1, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5911
    iget-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 5912
    iget-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 5914
    :cond_3f
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider$EventHandler;

    invoke-direct {v2, p0, p1}, Landroid/media/MediaPlayer$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 5916
    new-array p1, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 5917
    new-array p1, v3, [J

    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 5918
    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 5919
    return-void
.end method

.method private declared-synchronized greylist-max-o notifySeek()V
    .registers 9

    monitor-enter p0

    .line 6017
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_4a

    .line 6019
    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

    .line 6020
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v4, :cond_25

    const-string v4, "MTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSeekComplete at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6022
    :cond_25
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v4

    move v6, v0

    :goto_29
    if-ge v6, v5, :cond_36

    aget-object v7, v4, v6

    .line 6023
    if-nez v7, :cond_30

    .line 6024
    goto :goto_36

    .line 6026
    :cond_30
    invoke-interface {v7, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_33} :catch_37
    .catchall {:try_start_5 .. :try_end_33} :catchall_4a

    .line 6022
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 6033
    :cond_36
    :goto_36
    goto :goto_48

    .line 6028
    :catch_37
    move-exception v2

    .line 6030
    :try_start_38
    iget-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v2, :cond_43

    const-string v2, "MTP"

    const-string v3, "onSeekComplete but no player"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6031
    :cond_43
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 6032
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_4a

    .line 6034
    :goto_48
    monitor-exit p0

    return-void

    .line 6016
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private declared-synchronized greylist-max-o notifyStop()V
    .registers 5

    monitor-enter p0

    .line 6043
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 6044
    if-nez v3, :cond_c

    .line 6045
    goto :goto_12

    .line 6047
    :cond_c
    invoke-interface {v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    .line 6043
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6049
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 6042
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private declared-synchronized greylist-max-o notifyTimedEvent(Z)V
    .registers 15

    monitor-enter p0

    .line 6124
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v1
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_6} :catch_a
    .catchall {:try_start_2 .. :try_end_6} :catchall_7

    .line 6130
    goto :goto_13

    .line 6123
    :catchall_7
    move-exception p1

    goto/16 :goto_10b

    .line 6125
    :catch_a
    move-exception v1

    .line 6127
    :try_start_b
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 6128
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 6129
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v1

    .line 6131
    :goto_13
    nop

    .line 6133
    iget-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_7

    if-eqz p1, :cond_1a

    .line 6135
    monitor-exit p0

    return-void

    .line 6138
    :cond_1a
    :try_start_1a
    iget-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_6c

    .line 6139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6140
    const-string v6, "notifyTimedEvent("

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6141
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") from {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6142
    nop

    .line 6143
    iget-object v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v7, v6

    move v9, v0

    move v8, v5

    :goto_47
    if-ge v8, v7, :cond_5e

    aget-wide v10, v6, v8

    .line 6144
    cmp-long v12, v10, v3

    if-nez v12, :cond_50

    .line 6145
    goto :goto_5b

    .line 6147
    :cond_50
    if-nez v9, :cond_57

    const-string v9, ", "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6148
    :cond_57
    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6149
    move v9, v5

    .line 6143
    :goto_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 6151
    :cond_5e
    const-string v6, "}"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6152
    const-string v6, "MTP"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6155
    :cond_6c
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 6157
    move-wide v6, v1

    :goto_72
    iget-object v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v8, v8

    if-ge v5, v8, :cond_bc

    .line 6158
    iget-object v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v8, v8, v5

    if-nez v8, :cond_7e

    .line 6159
    goto :goto_bc

    .line 6161
    :cond_7e
    iget-object v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v8, v8, v5

    cmp-long v8, v8, v3

    if-gtz v8, :cond_87

    goto :goto_b9

    .line 6163
    :cond_87
    iget-object v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x3e8

    add-long/2addr v10, v1

    cmp-long v8, v8, v10

    if-gtz v8, :cond_a9

    .line 6164
    iget-object v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v8, v8, v5

    invoke-virtual {p1, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 6165
    iget-boolean v8, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v8, :cond_a4

    const-string v8, "MTP"

    const-string v9, "removed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6166
    :cond_a4
    iget-object v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aput-wide v3, v8, v5

    goto :goto_b9

    .line 6167
    :cond_a9
    cmp-long v8, v6, v1

    if-eqz v8, :cond_b5

    iget-object v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v8, v8, v5

    cmp-long v8, v8, v6

    if-gez v8, :cond_b9

    .line 6168
    :cond_b5
    iget-object v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v6, v6, v5

    .line 6157
    :cond_b9
    :goto_b9
    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    .line 6172
    :cond_bc
    :goto_bc
    cmp-long v3, v6, v1

    if-lez v3, :cond_f0

    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-nez v3, :cond_f0

    .line 6174
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_ea

    const-string v0, "MTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduling for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6175
    :cond_ea
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaPlayer;->notifyAt(J)V

    goto :goto_f5

    .line 6177
    :cond_f0
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6181
    :goto_f5
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6182
    invoke-interface {v0, v1, v2}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_108
    .catchall {:try_start_1a .. :try_end_108} :catchall_7

    .line 6183
    goto :goto_f9

    .line 6184
    :cond_109
    monitor-exit p0

    return-void

    .line 6123
    :goto_10b
    :try_start_10b
    monitor-exit p0
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_7

    throw p1
.end method

.method private declared-synchronized greylist-max-o notifyTrackData(Landroid/util/Pair;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/media/SubtitleTrack;",
            "[B>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 6037
    :try_start_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    .line 6038
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [B

    .line 6039
    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 6040
    monitor-exit p0

    return-void

    .line 6036
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method private greylist-max-o registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .registers 8

    .line 6052
    const/4 v0, 0x0

    move v1, v0

    .line 6053
    :goto_2
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 6054
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-eq v2, p1, :cond_17

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-nez v2, :cond_14

    .line 6055
    goto :goto_17

    .line 6053
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6060
    :cond_17
    :goto_17
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-lt v1, v2, :cond_36

    .line 6061
    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6063
    new-array v2, v2, [J

    .line 6064
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v5

    invoke-static {v4, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6065
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v5, v5

    invoke-static {v4, v0, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6066
    iput-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6067
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 6070
    :cond_36
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v0, v0, v1

    if-nez v0, :cond_46

    .line 6071
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aput-object p1, v0, v1

    .line 6072
    iget-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, -0x1

    aput-wide v2, p1, v1

    .line 6074
    :cond_46
    return v1
.end method

.method private greylist-max-o scheduleNotification(IJ)V
    .registers 7

    .line 5923
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 5924
    return-void

    .line 5927
    :cond_7
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTP"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5928
    :cond_2d
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5929
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 5930
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    long-to-int p2, p2

    int-to-long p2, p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5931
    return-void
.end method


# virtual methods
.method public greylist-max-o cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 7

    .line 6100
    monitor-enter p0

    .line 6101
    const/4 v0, 0x0

    move v1, v0

    .line 6102
    :goto_3
    :try_start_3
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-ge v1, v2, :cond_4a

    .line 6103
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_40

    .line 6104
    iget-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6106
    iget-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6108
    iget-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 6109
    iget-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, -0x1

    aput-wide v2, p1, v1

    .line 6110
    goto :goto_4a

    .line 6111
    :cond_40
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-nez v2, :cond_47

    .line 6112
    goto :goto_4a

    .line 6102
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6116
    :cond_4a
    :goto_4a
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6117
    monitor-exit p0

    .line 6118
    return-void

    .line 6117
    :catchall_51
    move-exception p1

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public greylist-max-o close()V
    .registers 3

    .line 5935
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5936
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_12

    .line 5937
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5938
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5940
    :cond_12
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 5944
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    .line 5945
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5947
    :cond_9
    return-void
.end method

.method public greylist-max-o getCurrentTimeUs(ZZ)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 6188
    monitor-enter p0

    .line 6191
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v0, :cond_b

    if-nez p1, :cond_b

    .line 6192
    iget-wide p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_ba

    return-wide p1

    .line 6196
    :cond_b
    const/4 p1, 0x1

    const/4 v0, 0x0

    :try_start_d
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 6197
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    if-eqz v1, :cond_26

    goto :goto_28

    :cond_26
    move v1, v0

    goto :goto_29

    :cond_28
    :goto_28
    move v1, p1

    :goto_29
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 6198
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_56

    const-string v1, "MTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v3, :cond_3d

    const-string v3, "paused"

    goto :goto_3f

    :cond_3d
    const-string v3, "playing"

    :goto_3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_56} :catch_80
    .catchall {:try_start_d .. :try_end_56} :catchall_ba

    .line 6212
    :cond_56
    nop

    .line 6213
    if-eqz p2, :cond_78

    :try_start_59
    iget-wide v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    cmp-long p2, v1, v3

    if-gez p2, :cond_78

    .line 6215
    iget-wide v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    cmp-long p2, v1, v3

    if-lez p2, :cond_7c

    .line 6218
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 6219
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6220
    const/4 p1, 0x3

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_7c

    .line 6223
    :cond_78
    iget-wide p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 6226
    :cond_7c
    :goto_7c
    iget-wide p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide p1

    .line 6199
    :catch_80
    move-exception v1

    .line 6200
    iget-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    if-eqz v2, :cond_b9

    .line 6202
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 6203
    if-eqz p2, :cond_91

    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    cmp-long p2, v0, v2

    if-gez p2, :cond_95

    .line 6204
    :cond_91
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 6206
    :cond_95
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 6207
    iget-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz p1, :cond_b5

    const-string p1, "MTP"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal state, but pausing: estimating at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6208
    :cond_b5
    iget-wide p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide p1

    .line 6211
    :cond_b9
    throw v1

    .line 6227
    :catchall_ba
    move-exception p1

    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_59 .. :try_end_bc} :catchall_ba

    throw p1
.end method

.method public greylist-max-o notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 7

    .line 6079
    monitor-enter p0

    .line 6080
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6081
    :cond_1d
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    invoke-direct {p0, p3}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result p3

    aput-wide p1, v0, p3

    .line 6082
    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6083
    monitor-exit p0

    .line 6084
    return-void

    .line 6083
    :catchall_2d
    move-exception p1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public greylist-max-o onBuffering(Z)V
    .registers 5

    .line 5975
    monitor-enter p0

    .line 5976
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBuffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5977
    :cond_1d
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 5978
    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5979
    monitor-exit p0

    .line 5980
    return-void

    .line 5979
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public greylist-max-o onNewPlayer()V
    .registers 4

    .line 6006
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    if-eqz v0, :cond_18

    .line 6007
    monitor-enter p0

    .line 6008
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 6009
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6010
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 6011
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6012
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0

    .line 6014
    :cond_18
    :goto_18
    return-void
.end method

.method public greylist-max-o onNotifyTime()V
    .registers 4

    .line 5951
    monitor-enter p0

    .line 5952
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "MTP"

    const-string v1, "onNotifyTime: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5953
    :cond_c
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5954
    monitor-exit p0

    .line 5955
    return-void

    .line 5954
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public greylist-max-o onPaused(Z)V
    .registers 6

    .line 5959
    monitor-enter p0

    .line 5960
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5961
    :cond_1d
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    .line 5962
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5963
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5964
    const/4 p1, 0x3

    invoke-direct {p0, p1, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_35

    .line 5966
    :cond_2e
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 5967
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5968
    invoke-direct {p0, v3, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5970
    :goto_35
    monitor-exit p0

    .line 5971
    return-void

    .line 5970
    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public whitelist onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 5997
    monitor-enter p0

    .line 5998
    const/4 p1, 0x0

    :try_start_2
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5999
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6000
    const/4 p1, 0x3

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6001
    monitor-exit p0

    .line 6002
    return-void

    .line 6001
    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public greylist-max-o onStopped()V
    .registers 4

    .line 5984
    monitor-enter p0

    .line 5985
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "MTP"

    const-string v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5986
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 5987
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5988
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5989
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 5990
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5991
    monitor-exit p0

    .line 5992
    return-void

    .line 5991
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public greylist-max-o scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 5

    .line 6087
    monitor-enter p0

    .line 6088
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "MTP"

    const-string v1, "scheduleUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6089
    :cond_c
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result p1

    .line 6091
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    if-nez v0, :cond_1e

    .line 6092
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    .line 6093
    const/4 p1, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6095
    :cond_1e
    monitor-exit p0

    .line 6096
    return-void

    .line 6095
    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw p1
.end method
