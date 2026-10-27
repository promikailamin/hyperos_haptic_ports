.class Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "SoundTriggerModule"


# instance fields
.field private final mActiveSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

.field private final mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

.field private mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

.field private mProperties:Landroid/media/soundtrigger/Properties;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioSessionProvider(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->removeSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V
    .registers 4
    .param p1, "halFactory"    # Lcom/android/server/soundtrigger_middleware/HalFactory;
    .param p2, "audioSessionProvider"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    .line 99
    nop

    .line 100
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

    .line 101
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    .line 103
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->attachToHal()V

    .line 104
    return-void
.end method

.method private attachToHal()V
    .registers 4

    .line 169
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

    .line 170
    invoke-interface {v2}, Lcom/android/server/soundtrigger_middleware/HalFactory;->create()Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 171
    invoke-interface {v0, p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 174
    return-void
.end method

.method private removeSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .registers 3
    .param p1, "session"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 182
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method private reset()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    .line 162
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->attachToHal()V

    .line 163
    return-void
.end method


# virtual methods
.method declared-synchronized attach(Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 4
    .param p1, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    monitor-enter p0

    .line 120
    :try_start_1
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session-IA;)V

    .line 121
    .local v0, "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 122
    monitor-exit p0

    return-object v0

    .line 119
    .end local v0    # "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
    .end local p1    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public binderDied()V
    .registers 5

    .line 137
    const-string v0, "SoundTriggerModule"

    const-string v1, "Underlying HAL driver died."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    monitor-enter p0

    .line 140
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;>;"
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 142
    .local v2, "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$mmoduleDied(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    nop

    .end local v2    # "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    goto :goto_19

    .line 144
    :cond_2e
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 145
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->reset()V

    .line 146
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_53

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 150
    .local v2, "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :try_start_47
    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_4c

    .line 153
    nop

    .line 154
    .end local v2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    goto :goto_3b

    .line 151
    .restart local v2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :catch_4c
    move-exception v1

    .line 152
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 155
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :cond_52
    return-void

    .line 146
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;>;"
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

.method declared-synchronized getProperties()Landroid/media/soundtrigger/Properties;
    .registers 2

    monitor-enter p0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger/Properties;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 132
    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onResourcesAvailable()V
    .registers 5

    .line 188
    monitor-enter p0

    .line 189
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;>;"
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 191
    .local v2, "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmCallback(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    nop

    .end local v2    # "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    goto :goto_12

    .line 193
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_44

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 197
    .local v2, "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :try_start_38
    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onResourcesAvailable()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_3d

    .line 200
    nop

    .line 201
    .end local v2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    goto :goto_2c

    .line 198
    .restart local v2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :catch_3d
    move-exception v1

    .line 199
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 202
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :cond_43
    return-void

    .line 193
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;>;"
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method
