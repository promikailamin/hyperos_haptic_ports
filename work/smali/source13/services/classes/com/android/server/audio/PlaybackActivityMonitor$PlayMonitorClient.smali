.class final Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayMonitorClient"
.end annotation


# static fields
.field private static final MAX_ERRORS:I = 0x5

.field static sListenerDeathMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;


# instance fields
.field private final mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

.field private mErrorCount:I

.field private final mIsPrivileged:Z

.field private mIsReleased:Z


# direct methods
.method constructor <init>(Landroid/media/IPlaybackConfigDispatcher;Z)V
    .registers 4
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;
    .param p2, "isPrivileged"    # Z

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsReleased:Z

    .line 908
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    .line 912
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    .line 913
    iput-boolean p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    .line 914
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 918
    const-string v0, "AudioService.PlaybackActivityMonitor"

    const-string v1, "client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->sListenerDeathMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 920
    return-void
.end method

.method dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    .registers 7
    .param p2, "flush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .line 943
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-enter p0

    .line 944
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsReleased:Z

    if-eqz v0, :cond_7

    .line 946
    monitor-exit p0

    return-void

    .line 948
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3f

    .line 950
    :try_start_8
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v0, p1, p2}, Landroid/media/IPlaybackConfigDispatcher;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 957
    goto :goto_3b

    .line 951
    :catch_e
    move-exception v0

    .line 952
    .local v0, "e":Landroid/os/RemoteException;
    monitor-enter p0

    .line 953
    :try_start_10
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    .line 954
    const-string v1, "AudioService.PlaybackActivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") trying to dispatch playback config change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    monitor-exit p0

    .line 958
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3b
    return-void

    .line 956
    .restart local v0    # "e":Landroid/os/RemoteException;
    :catchall_3c
    move-exception v1

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_10 .. :try_end_3e} :catchall_3c

    throw v1

    .line 948
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method declared-synchronized equalsDispatcher(Landroid/media/IPlaybackConfigDispatcher;)Z
    .registers 4
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;

    monitor-enter p0

    .line 969
    if-nez p1, :cond_6

    .line 970
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 972
    :cond_6
    :try_start_6
    invoke-interface {p1}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v1}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    monitor-exit p0

    return v0

    .line 968
    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    .end local p1    # "pcdb":Landroid/media/IPlaybackConfigDispatcher;
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized init()Z
    .registers 5

    monitor-enter p0

    .line 923
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsReleased:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 925
    monitor-exit p0

    return v1

    .line 928
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v0}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_14
    .catchall {:try_start_8 .. :try_end_11} :catchall_1e

    .line 929
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 930
    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :catch_14
    move-exception v0

    .line 931
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "AudioService.PlaybackActivityMonitor"

    const-string v3, "Could not link to client death"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e

    .line 932
    monitor-exit p0

    return v1

    .line 922
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isPrivileged()Z
    .registers 2

    monitor-enter p0

    .line 961
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 961
    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reachedMaxErrorCount()Z
    .registers 3

    monitor-enter p0

    .line 965
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x5

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    .line 965
    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 937
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v0}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsReleased:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 939
    monitor-exit p0

    return-void

    .line 936
    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
