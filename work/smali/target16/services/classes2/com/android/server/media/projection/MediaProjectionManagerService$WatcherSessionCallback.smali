.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

.field public final mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

.field public final mSession:Landroid/view/ContentRecordingSession;


# direct methods
.method public constructor <init>(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 4

    .line 1809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1810
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 1811
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

    .line 1812
    iput-object p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mSession:Landroid/view/ContentRecordingSession;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1818
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mSession:Landroid/view/ContentRecordingSession;

    invoke-interface {v0, v1, p0}, Landroid/media/projection/IMediaProjectionWatcherCallback;->onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 1820
    const-string v0, "MediaProjectionManagerService"

    const-string v1, "Failed to notify content recording session changed"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
