.class public final Lcom/android/server/tv/TvInputManagerService$SessionCallback;
.super Landroid/media/tv/ITvInputSessionCallback$Stub;
.source "TvInputManagerService.java"


# instance fields
.field public final mChannels:[Landroid/view/InputChannel;

.field public final mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V
    .registers 4

    .line 4012
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;-><init>()V

    .line 4013
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 4014
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public final addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z
    .registers 8

    .line 4041
    const-string v0, "TvInputManagerService"

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_5c

    .line 4047
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 4048
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 4049
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ClientState;

    if-nez v3, :cond_4d

    .line 4051
    new-instance v3, Lcom/android/server/tv/TvInputManagerService$ClientState;

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Lcom/android/server/tv/TvInputManagerService$ClientState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    .line 4053
    :try_start_3b
    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_46

    .line 4058
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :catch_46
    move-exception p0

    .line 4055
    const-string p1, "client process has already died"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 4060
    :cond_4d
    :goto_4d
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :catch_5c
    move-exception p0

    .line 4043
    const-string/jumbo p1, "session process has already died"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .registers 5

    .line 4549
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4553
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_31

    if-nez v1, :cond_18

    goto :goto_4c

    .line 4557
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_35
    .catchall {:try_start_18 .. :try_end_27} :catchall_33

    if-eqz p1, :cond_40

    .line 4562
    :goto_29
    :try_start_29
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_31

    goto :goto_40

    :catchall_31
    move-exception p0

    goto :goto_4e

    :catchall_33
    move-exception p0

    goto :goto_42

    :catch_35
    move-exception p0

    .line 4559
    :try_start_36
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onAdBufferConsumed"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_33

    if-eqz p1, :cond_40

    goto :goto_29

    .line 4565
    :cond_40
    :goto_40
    :try_start_40
    monitor-exit v0

    return-void

    :goto_42
    if-eqz p1, :cond_4b

    .line 4562
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    .line 4564
    :cond_4b
    throw p0

    .line 4554
    :cond_4c
    :goto_4c
    monitor-exit v0

    return-void

    .line 4565
    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_31

    throw p0
.end method

.method public onAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 4

    .line 4532
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4536
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4540
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAdResponse(Landroid/media/tv/AdResponse;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4542
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onAdResponse"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4544
    :goto_32
    monitor-exit v0

    return-void

    .line 4537
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4544
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onAitInfoUpdated(Landroid/media/tv/AitInfo;)V
    .registers 4

    .line 4359
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4363
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4367
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAitInfoUpdated(Landroid/media/tv/AitInfo;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4369
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onAitInfoUpdated"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4371
    :goto_32
    monitor-exit v0

    return-void

    .line 4364
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4371
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onAudioPresentationSelected(II)V
    .registers 5

    .line 4123
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4128
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4132
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onAudioPresentationSelected(III)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4135
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string p2, "error in onAudioPresentationSelected"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4137
    :goto_32
    monitor-exit v0

    return-void

    .line 4129
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4137
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onAudioPresentationsChanged(Ljava/util/List;)V
    .registers 4

    .line 4105
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4109
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4113
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAudioPresentationsChanged(Ljava/util/List;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4116
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onAudioPresentationsChanged"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4118
    :goto_32
    monitor-exit v0

    return-void

    .line 4110
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4118
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onAvailableSpeeds([F)V
    .registers 4

    .line 4427
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4431
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4435
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAvailableSpeeds([FI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4437
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onAvailableSpeeds"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4439
    :goto_32
    monitor-exit v0

    return-void

    .line 4432
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4439
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 4

    .line 4515
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4519
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4523
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4525
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onBroadcastInfoResponse"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4527
    :goto_32
    monitor-exit v0

    return-void

    .line 4520
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4527
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onChannelRetuned(Landroid/net/Uri;)V
    .registers 7

    .line 4066
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4070
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3d

    if-nez v1, :cond_19

    goto/16 :goto_96

    .line 4078
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onChannelRetuned(Landroid/net/Uri;I)V

    .line 4079
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v1

    .line 4080
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    goto :goto_41

    :catchall_3d
    move-exception p0

    goto :goto_98

    :catch_3f
    move-exception p0

    goto :goto_8d

    .line 4081
    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 4082
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V

    .line 4083
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2, p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V

    .line 4084
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result p1

    if-nez p1, :cond_87

    .line 4085
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionActualInputId(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object p1

    .line 4086
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmOnScreenInputId(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 4087
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2, v3, p1, v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogExternalInputEvent(Lcom/android/server/tv/TvInputManagerService;ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 4092
    :cond_7b
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fputmOnScreenInputId(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;)V

    .line 4093
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fputmOnScreenSessionState(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 4095
    :cond_87
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mnotifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_8c} :catch_3f
    .catchall {:try_start_19 .. :try_end_8c} :catchall_3d

    goto :goto_94

    .line 4098
    :goto_8d
    :try_start_8d
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onChannelRetuned"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4100
    :cond_94
    :goto_94
    monitor-exit v0

    return-void

    .line 4071
    :cond_96
    :goto_96
    monitor-exit v0

    return-void

    .line 4100
    :goto_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_3d

    throw p0
.end method

.method public onContentAllowed()V
    .registers 4

    .line 4236
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4240
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4244
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/ITvInputClient;->onContentAllowed(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4246
    :try_start_2b
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onContentAllowed"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4248
    :goto_32
    monitor-exit v0

    return-void

    .line 4241
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4248
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onContentBlocked(Ljava/lang/String;)V
    .registers 4

    .line 4253
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4257
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4261
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onContentBlocked(Ljava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4263
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onContentBlocked"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4265
    :goto_32
    monitor-exit v0

    return-void

    .line 4258
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4265
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onCueingMessageAvailability(Z)V
    .registers 4

    .line 4393
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4397
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4401
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onCueingMessageAvailability(ZI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4403
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onCueingMessageAvailability"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4405
    :goto_32
    monitor-exit v0

    return-void

    .line 4398
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4405
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onError(I)V
    .registers 4

    .line 4498
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4502
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4506
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onError(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4508
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onError"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4510
    :goto_32
    monitor-exit v0

    return-void

    .line 4503
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4510
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onLayoutSurface(IIII)V
    .registers 13

    .line 4270
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4275
    :try_start_7
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_2c

    if-nez v0, :cond_18

    goto :goto_3a

    .line 4279
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ITvInputClient;->onLayoutSurface(IIIII)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2b} :catch_2f
    .catchall {:try_start_18 .. :try_end_2b} :catchall_2c

    goto :goto_38

    :catchall_2c
    move-exception v0

    move-object p0, v0

    goto :goto_3c

    :catch_2f
    move-exception v0

    move-object p0, v0

    .line 4282
    :try_start_31
    const-string p1, "TvInputManagerService"

    const-string p2, "error in onLayoutSurface"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4284
    :goto_38
    monitor-exit v1

    return-void

    .line 4276
    :cond_3a
    :goto_3a
    monitor-exit v1

    return-void

    .line 4284
    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_2c

    throw p0
.end method

.method public onRecordingStopped(Landroid/net/Uri;)V
    .registers 4

    .line 4479
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4484
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4488
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onRecordingStopped(Landroid/net/Uri;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4490
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onRecordingStopped"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4492
    :goto_32
    monitor-exit v0

    return-void

    .line 4485
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4492
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    .registers 12

    .line 4022
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4023
    :try_start_7
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v0, p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputsession(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)V

    .line 4024
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputhardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_3f

    .line 4025
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 4026
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    aget-object v6, p1, p2

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_69

    :catchall_3c
    move-exception v0

    move-object p0, v0

    goto :goto_72

    .line 4030
    :cond_3f
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    .line 4031
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 4034
    :goto_69
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 4035
    monitor-exit v1

    return-void

    :goto_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_7 .. :try_end_73} :catchall_3c

    throw p0
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 4289
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4294
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4298
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4300
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string p2, "error in onSessionEvent"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4302
    :goto_32
    monitor-exit v0

    return-void

    .line 4295
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4302
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onSignalStrength(I)V
    .registers 4

    .line 4376
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4380
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4384
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onSignalStrength(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4386
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onSignalStrength"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4388
    :goto_32
    monitor-exit v0

    return-void

    .line 4381
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4388
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onTimeShiftCurrentPositionChanged(J)V
    .registers 5

    .line 4341
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4345
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4349
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftCurrentPositionChanged(JI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4352
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string p2, "error in onTimeShiftCurrentPositionChanged"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4354
    :goto_32
    monitor-exit v0

    return-void

    .line 4346
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4354
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onTimeShiftMode(I)V
    .registers 4

    .line 4410
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4414
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4418
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftMode(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4420
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onTimeShiftMode"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4422
    :goto_32
    monitor-exit v0

    return-void

    .line 4415
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4422
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onTimeShiftStartPositionChanged(J)V
    .registers 5

    .line 4324
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4328
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4332
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftStartPositionChanged(JI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4334
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string p2, "error in onTimeShiftStartPositionChanged"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4336
    :goto_32
    monitor-exit v0

    return-void

    .line 4329
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4336
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onTimeShiftStatusChanged(I)V
    .registers 4

    .line 4307
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4311
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4315
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftStatusChanged(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4317
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onTimeShiftStatusChanged"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4319
    :goto_32
    monitor-exit v0

    return-void

    .line 4312
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4319
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onTrackSelected(ILjava/lang/String;)V
    .registers 5

    .line 4159
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4163
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4167
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTrackSelected(ILjava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4169
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string p2, "error in onTrackSelected"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4171
    :goto_32
    monitor-exit v0

    return-void

    .line 4164
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4171
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onTracksChanged(Ljava/util/List;)V
    .registers 4

    .line 4142
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4146
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4150
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTracksChanged(Ljava/util/List;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4152
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onTracksChanged"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4154
    :goto_32
    monitor-exit v0

    return-void

    .line 4147
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4154
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onTuned(Landroid/net/Uri;)V
    .registers 4

    .line 4444
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4448
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4452
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTuned(Landroid/net/Uri;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4454
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onTuned"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4456
    :goto_32
    monitor-exit v0

    return-void

    .line 4449
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4456
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 4570
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4574
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4578
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4580
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string p2, "error in onTvInputSessionData"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4582
    :goto_32
    monitor-exit v0

    return-void

    .line 4575
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4582
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onTvMessage(ILandroid/os/Bundle;)V
    .registers 5

    .line 4461
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4465
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4469
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTvMessage(ILandroid/os/Bundle;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4471
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string p2, "error in onTvMessage"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4473
    :goto_32
    monitor-exit v0

    return-void

    .line 4466
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4473
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onVideoAvailable()V
    .registers 5

    .line 4176
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4180
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_4c

    .line 4183
    :cond_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v3

    .line 4184
    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 4183
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_40

    .line 4186
    :try_start_28
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/media/tv/ITvInputClient;->onVideoAvailable(I)V

    .line 4187
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    const/4 v3, 0x6

    invoke-static {v2, v3, p0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3f} :catch_42
    .catchall {:try_start_28 .. :try_end_3f} :catchall_40

    goto :goto_4a

    :catchall_40
    move-exception p0

    goto :goto_4e

    :catch_42
    move-exception p0

    .line 4191
    :try_start_43
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onVideoAvailable"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4193
    :goto_4a
    monitor-exit v0

    return-void

    .line 4181
    :cond_4c
    :goto_4c
    monitor-exit v0

    return-void

    .line 4193
    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_40

    throw p0
.end method

.method public onVideoFreezeUpdated(Z)V
    .registers 4

    .line 4219
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4223
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    if-nez v1, :cond_18

    goto :goto_34

    .line 4227
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onVideoFreezeUpdated(ZI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_2a
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_32

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    .line 4229
    :try_start_2b
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onVideoFreezeUpdated"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4231
    :goto_32
    monitor-exit v0

    return-void

    .line 4224
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4231
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    throw p0
.end method

.method public onVideoUnavailable(I)V
    .registers 6

    .line 4198
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4202
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_4f

    .line 4205
    :cond_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v3

    .line 4206
    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 4205
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_43

    .line 4208
    :try_start_28
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/media/tv/ITvInputClient;->onVideoUnavailable(II)V

    .line 4209
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getVideoUnavailableReasonForStatsd(I)I

    move-result p1

    .line 4210
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2, p1, p0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_42} :catch_45
    .catchall {:try_start_28 .. :try_end_42} :catchall_43

    goto :goto_4d

    :catchall_43
    move-exception p0

    goto :goto_51

    :catch_45
    move-exception p0

    .line 4212
    :try_start_46
    const-string p1, "TvInputManagerService"

    const-string v1, "error in onVideoUnavailable"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4214
    :goto_4d
    monitor-exit v0

    return-void

    .line 4203
    :cond_4f
    :goto_4f
    monitor-exit v0

    return-void

    .line 4214
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_43

    throw p0
.end method
