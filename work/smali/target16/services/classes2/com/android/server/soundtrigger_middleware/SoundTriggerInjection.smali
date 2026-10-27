.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;
.super Ljava/lang/Object;
.source "SoundTriggerInjection.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

.field public final mClientLock:Ljava/lang/Object;

.field public mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 49
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 232
    const-string p0, "SoundTriggerInjection"

    const-string v0, "Unexpected asBinder!"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Calling asBinder on a fake binder object"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public binderDied()V
    .registers 2

    .line 84
    const-string p0, "SoundTriggerInjection"

    const-string v0, "Binder died without params"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-eqz v1, :cond_13

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_13

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 94
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    .line 140
    :cond_b
    :try_start_b
    invoke-interface {v1, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    .line 142
    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 144
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public onClientDetached(Landroid/os/IBinder;)V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    .line 152
    :cond_b
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onClientDetached(Landroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    .line 154
    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 156
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    .line 128
    :cond_b
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    .line 130
    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 132
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 6

    .line 175
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    .line 178
    :cond_b
    :try_start_b
    invoke-interface {v1, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    .line 180
    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 182
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public onPreempted()V
    .registers 2

    .line 226
    const-string p0, "SoundTriggerInjection"

    const-string v0, "Unexpected preempted!"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 7

    .line 188
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    .line 191
    :cond_b
    :try_start_b
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    .line 194
    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 196
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    .line 204
    :cond_b
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    .line 206
    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 208
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    .line 116
    :cond_b
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    .line 118
    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 120
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 7

    .line 162
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    .line 165
    :cond_b
    :try_start_b
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    .line 167
    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 169
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    .line 216
    :cond_b
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_9

    goto :goto_12

    :catch_f
    const/4 p1, 0x0

    .line 218
    :try_start_10
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 220
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public registerClient(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .registers 7

    .line 57
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 61
    :try_start_b
    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onPreempted()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_11
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception p0

    goto :goto_3a

    :catch_11
    move-exception v1

    .line 63
    :try_start_12
    const-string v3, "SoundTriggerInjection"

    const-string v4, "RemoteException when handling preemption"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_19
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 67
    :cond_22
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_f

    .line 71
    :try_start_24
    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 72
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    if-eqz p1, :cond_38

    .line 73
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_34} :catch_35
    .catchall {:try_start_24 .. :try_end_34} :catchall_f

    goto :goto_38

    :catch_35
    const/4 p1, 0x0

    .line 76
    :try_start_36
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 79
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_f

    throw p0
.end method

.method public registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClientLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mGlobalEventInjection:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 102
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-nez v1, :cond_d

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return-void

    :catchall_b
    move-exception p0

    goto :goto_16

    .line 104
    :cond_d
    :try_start_d
    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_b

    goto :goto_14

    :catch_11
    const/4 p1, 0x0

    .line 106
    :try_start_12
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->mClient:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 108
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_b

    throw p0
.end method
