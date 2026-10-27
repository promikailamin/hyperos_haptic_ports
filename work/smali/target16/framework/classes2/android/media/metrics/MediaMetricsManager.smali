.class public final Landroid/media/metrics/MediaMetricsManager;
.super Ljava/lang/Object;
.source "MediaMetricsManager.java"


# static fields
.field public static final whitelist INVALID_TIMESTAMP:J = -0x1L

.field private static final blacklist TAG:Ljava/lang/String; = "MediaMetricsManager"


# instance fields
.field private blacklist mService:Landroid/media/metrics/IMediaMetricsManager;

.field private blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Landroid/media/metrics/IMediaMetricsManager;I)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    .line 42
    iput p2, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist createBundleSession()Landroid/media/metrics/BundleSession;
    .registers 3

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/metrics/IMediaMetricsManager;->getBundleSessionId(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Landroid/media/metrics/BundleSession;

    invoke-direct {v1, v0, p0}, Landroid/media/metrics/BundleSession;-><init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 167
    return-object v1

    .line 168
    :catch_e
    move-exception v0

    .line 169
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist createEditingSession()Landroid/media/metrics/EditingSession;
    .registers 3

    .line 151
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/metrics/IMediaMetricsManager;->getEditingSessionId(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/media/metrics/EditingSession;

    invoke-direct {v1, v0, p0}, Landroid/media/metrics/EditingSession;-><init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 153
    return-object v1

    .line 154
    :catch_e
    move-exception v0

    .line 155
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist createPlaybackSession()Landroid/media/metrics/PlaybackSession;
    .registers 3

    .line 109
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/metrics/IMediaMetricsManager;->getPlaybackSessionId(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/media/metrics/PlaybackSession;

    invoke-direct {v1, v0, p0}, Landroid/media/metrics/PlaybackSession;-><init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 111
    return-object v1

    .line 112
    :catch_e
    move-exception v0

    .line 113
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist createRecordingSession()Landroid/media/metrics/RecordingSession;
    .registers 3

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/metrics/IMediaMetricsManager;->getRecordingSessionId(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/media/metrics/RecordingSession;

    invoke-direct {v1, v0, p0}, Landroid/media/metrics/RecordingSession;-><init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 125
    return-object v1

    .line 126
    :catch_e
    move-exception v0

    .line 127
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist createTranscodingSession()Landroid/media/metrics/TranscodingSession;
    .registers 3

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/metrics/IMediaMetricsManager;->getTranscodingSessionId(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/media/metrics/TranscodingSession;

    invoke-direct {v1, v0, p0}, Landroid/media/metrics/TranscodingSession;-><init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 139
    return-object v1

    .line 140
    :catch_e
    move-exception v0

    .line 141
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist releaseSessionId(Ljava/lang/String;)V
    .registers 4

    .line 179
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, v1}, Landroid/media/metrics/IMediaMetricsManager;->releaseSessionId(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 182
    nop

    .line 183
    return-void

    .line 180
    :catch_9
    move-exception p1

    .line 181
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 5

    .line 62
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 65
    nop

    .line 66
    return-void

    .line 63
    :catch_9
    move-exception p1

    .line 64
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;)V
    .registers 5

    .line 205
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 208
    nop

    .line 209
    return-void

    .line 206
    :catch_9
    move-exception p1

    .line 207
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;)V
    .registers 5

    .line 73
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 76
    nop

    .line 77
    return-void

    .line 74
    :catch_9
    move-exception p1

    .line 75
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;)V
    .registers 5

    .line 191
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 194
    nop

    .line 195
    return-void

    .line 192
    :catch_9
    move-exception p1

    .line 193
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;)V
    .registers 5

    .line 51
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 54
    nop

    .line 55
    return-void

    .line 52
    :catch_9
    move-exception p1

    .line 53
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;)V
    .registers 5

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 88
    nop

    .line 89
    return-void

    .line 86
    :catch_9
    move-exception p1

    .line 87
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;)V
    .registers 5

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/media/metrics/MediaMetricsManager;->mService:Landroid/media/metrics/IMediaMetricsManager;

    iget v1, p0, Landroid/media/metrics/MediaMetricsManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/metrics/IMediaMetricsManager;->reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 100
    nop

    .line 101
    return-void

    .line 98
    :catch_9
    move-exception p1

    .line 99
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
