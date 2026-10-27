.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;


# instance fields
.field public final mActiveSessions:Ljava/util/Set;

.field public final mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

.field public final mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

.field public mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

.field public mProperties:Landroid/media/soundtrigger/Properties;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAudioSessionProvider(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->removeSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V
    .registers 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/soundtrigger_middleware/HalFactory;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

    .line 103
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    .line 105
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->attachToHal()V

    return-void
.end method


# virtual methods
.method public declared-synchronized attach(Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 4

    monitor-enter p0

    .line 122
    :try_start_1
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule-IA;)V

    .line 123
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 124
    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final attachToHal()V
    .registers 5

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 172
    :goto_3
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    if-nez v0, :cond_2a

    .line 174
    :try_start_7
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

    .line 176
    invoke-interface {v3}, Lcom/android/server/soundtrigger_middleware/HalFactory;->create()Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1e} :catch_1f

    goto :goto_3

    :catch_1f
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/RemoteException;

    if-eqz v1, :cond_29

    goto :goto_3

    .line 179
    :cond_29
    throw v0

    .line 183
    :cond_2a
    invoke-interface {v0, p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 184
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger/Properties;

    return-void
.end method

.method public binderDied()V
    .registers 4

    .line 139
    const-string v0, "SoundTriggerModule"

    const-string v1, "Underlying HAL driver died."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    monitor-enter p0

    .line 142
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 144
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$mmoduleDied(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :catchall_2d
    move-exception v0

    goto :goto_52

    .line 146
    :cond_2f
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->reset()V

    .line 148
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_2d

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_3d
    if-ge v1, p0, :cond_51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 152
    :try_start_47
    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_3d

    :catch_4b
    move-exception p0

    .line 154
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_51
    return-void

    .line 148
    :goto_52
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_2d

    throw v0
.end method

.method public declared-synchronized getProperties()Landroid/media/soundtrigger/Properties;
    .registers 2

    monitor-enter p0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger/Properties;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public onResourcesAvailable()V
    .registers 4

    .line 200
    monitor-enter p0

    .line 201
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 203
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmCallback(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_26
    move-exception v0

    goto :goto_43

    .line 205
    :cond_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_26

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, p0, :cond_42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 209
    :try_start_38
    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onResourcesAvailable()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_2e

    :catch_3c
    move-exception p0

    .line 211
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_42
    return-void

    .line 205
    :goto_43
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_26

    throw v0
.end method

.method public final removeSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .registers 2

    .line 194
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final reset()V
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->attachToHal()V

    return-void
.end method
